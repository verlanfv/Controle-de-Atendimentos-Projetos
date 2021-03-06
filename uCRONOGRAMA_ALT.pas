unit uCRONOGRAMA_ALT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, Buttons,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, FMTBcd, SqlExpr, IdExplicitTLSClientServerBase,
  IdSMTPBase, IdAttachment;

type
  TfrmCronogramaAlteracoes = class(TForm)
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnBuscaCategoria: TSpeedButton;
    btnBuscamodulo: TSpeedButton;
    Label11: TLabel;
    edtCodChamado: TEdit;
    edtCodCliente: TDBEdit;
    edtCodCategoria: TDBEdit;
    edtNomeCliente: TEdit;
    edtNomeCategoria: TEdit;
    edtNomemodulo: TEdit;
    Panel1: TPanel;
    Label5: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edtData: TDateTimePicker;
    edtDataEntrega: TDateTimePicker;
    edtTempo: TEdit;
    edtUserResp: TDBEdit;
    edtNomeUserResp: TEdit;
    edtCodModulo: TDBEdit;
    dsCronograma: TDataSource;
    Label6: TLabel;
    Label10: TLabel;
    edtDescPrograma: TDBEdit;
    Label12: TLabel;
    mmoAltPrevista: TDBMemo;
    cbxFinalizado: TDBCheckBox;
    pnlAltFinalizacao: TPanel;
    Label17: TLabel;
    edtDtFinal: TMaskEdit;
    Label13: TLabel;
    edtHrFinal: TMaskEdit;
    Label14: TLabel;
    edtTmpGasto: TEdit;
    Label18: TLabel;
    Label9: TLabel;
    mmoAltEfetivada: TMemo;
    IdEnvioCli: TIdSMTP;
    IdMsg: TIdMessage;
    qrytempo_total: TSQLQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSalvarClick(Sender: TObject);
    procedure mmoAltPrevistaKeyPress(Sender: TObject; var Key: Char);
    procedure mmoAltEfetivadaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cbxFinalizadoClick(Sender: TObject);
    procedure edtCodCategoriaExit(Sender: TObject);
    procedure edtCodModuloExit(Sender: TObject);
    procedure btnBuscaCategoriaClick(Sender: TObject);
    procedure edtCodCategoriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodModuloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBuscamoduloClick(Sender: TObject);
    procedure edtDtFinalExit(Sender: TObject);
    procedure edtCodClienteExit(Sender: TObject);
    procedure edtUserRespExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
     procedure enviaEmailFinalizacao;
    { Public declarations }
  end;

var
  frmCronogramaAlteracoes: TfrmCronogramaAlteracoes;

implementation

uses DTMPRINCIPAL, uCONCATEGORIA, uPRINCIPAL, uCONMODULOS,
  uPROCEDIMENTOADOTADO, uLOGIN;

{$R *.dfm}

procedure TfrmCronogramaAlteracoes.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
          SelectNext(ActiveControl, True, True );
     if (Key = 4145)   or
        (key = VK_F2) or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnSalvar.Click();
     if (Key = 4096)       or
        (key = VK_ESCAPE) or
        (key = vk_ESCAPE)  or
        (Key = 27)         then
          btnCancelar.Click();
end;

procedure TfrmCronogramaAlteracoes.btnSalvarClick(Sender: TObject);
var
     sdata : string;
     tmp_movimento : Currency;
     tmp_cronog    : Currency;
begin
     sdata := '';
     tmp_movimento := 0;
     tmp_cronog    := 0;
     edtCodCliente.OnExit(Self);
     edtCodCategoria.OnExit(Self);
     edtUserResp.OnExit(Self);
     edtCodModulo.OnExit(Self);

     if (edtCodCliente.Text = '') or (edtNomeCliente.Text = '') then
     begin
          ShowMessage('O cliente n?o pode ser nulo! ');
          edtCodCliente.SetFocus;
          Abort;
     end;

     if (edtCodCategoria.Text = '') or (edtNomeCategoria.text = '') then
     begin
          ShowMessage('A categoria n?o pode ser nula! ');
          edtCodCategoria.SetFocus;
          Abort;
     end;

     if (edtUserResp.Text = '') or (edtNomeUserResp.Text = '') then
     begin
          ShowMessage('O usu?rio respons?vel n?o pode ser nulo! ');
          edtUserResp.SetFocus;
          Abort;
     end;

     if (edtCodModulo.Text = '') or (edtNomemodulo.Text = '') then
     begin
          ShowMessage('O m?dulo n?o pode ser nulo! ');
          edtCodModulo.SetFocus;
          Abort;
     end;

     if (edtDescPrograma.Text = '') then
     begin
          ShowMessage('O nome do programa n?o pode ser nulo! ');
          edtDescPrograma.SetFocus;
          Abort;
     end;

     if (mmoAltPrevista.Text = '') then
     begin
          ShowMessage('A altera??o prevista n?o pode ser nula! ');
          mmoAltPrevista.SetFocus;
          Abort;
     end;

     dmPrincipal.cdsCronogramaAltcod_chamado.AsString          := edtCodChamado.Text;
     dmPrincipal.cdsCronogramaAltnome_cliente.AsString         := edtNomeCliente.Text;
     dmPrincipal.cdsCronogramaAltdesc_categoria.AsString       := edtNomeCategoria.Text;
     dmPrincipal.cdsCronogramaAltnome_usr_responsavel.AsString := edtNomeUserResp.Text;
     dmPrincipal.cdsCronogramaAltdesc_modulo.AsString          := edtNomemodulo.Text;
     dmPrincipal.cdsCronogramaAltdata_solicitacao.AsDateTime   := edtData.Date;
     dmPrincipal.cdsCronogramaAltdt_prev_entrega.AsDateTime    := edtDataEntrega.Date;
     dmPrincipal.cdsCronogramaAlttempo_prev_alteracao.AsString := edtTempo.Text;

     if cbxFinalizado.Checked = true then
     begin
          if (edtDtFinal.Text <> '  /  /    ')  then
               dmPrincipal.cdsCronogramaAltdt_finalizacao.AsDateTime := StrToDate(edtDtFinal.Text)
          else
          begin
               ShowMessage('Informe a data de finaliza??o da altera??o!');
               edtDtFinal.SetFocus;
               Abort();
          end;

          if (edtHrFinal.Text <> '  :  ')  then
               dmPrincipal.cdsCronogramaAltHr_finalizacao.AsDateTime := StrToTime(edtHrFinal.Text)
          else
          begin
               ShowMessage('Informe a hora de finaliza??o da altera??o!');
               edtHrFinal.SetFocus;
               Abort();
          end;

          if (edtTmpGasto.Text <> '')  then
               dmPrincipal.cdsCronogramaAlttempo_gasto.AsString := edtTmpGasto.Text
          else
          begin
               ShowMessage('Informe o tempo gasto na altera??o!');
               edtTmpGasto.SetFocus;
               Abort();
          end;

          if (mmoAltEfetivada.Text <> '')  then
               dmPrincipal.cdsCronogramaAltdesc_alteracao_efetivada.AsString := mmoAltEfetivada.Text
          else
          begin
               ShowMessage('Informe a descri??o da altera??o efetivada!');
               mmoAltEfetivada.SetFocus;
               Abort();
          end;

     end;

     dmPrincipal.cdsCronogramaAlt.Post;
     dmPrincipal.cdsCronogramaAlt.ApplyUpdates(0);

     if dmPrincipal.cdsCronogramaAltfinalizado.AsString = 'S' then
     begin
          //----------------------- Soma o tempo total do chamado -------------------------------------//
          sdata := FormatDateTime('yyyy/mm/dd', dmPrincipal.cdsCronogramaAltdata_solicitacao.AsDateTime);
          dmPrincipal.qryChamados.Close;
          dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cod_chamado = '+ dmPrincipal.cdsCronogramaAltcod_chamado.AsString+
                                              ' and data_chamado = '+QuotedStr(sdata); ;
          dmPrincipal.qryChamados.open;
          dmPrincipal.cdsChamados.close;
          dmPrincipal.cdsChamados.open;
          dmPrincipal.cdsChamados.Edit;
          qrytempo_total.Close;
          qrytempo_total.SQL.Text := 'select sum(tempo_gasto) as total from movimento_chamado where cod_chamado = '+IntToStr(dmPrincipal.cdsCronogramaAltcod_chamado.Asinteger)+
                                ' and data_chamado = '+QuotedStr(sdata);
          qrytempo_total.open;
          tmp_movimento := qrytempo_total.fieldbyname('total').AsCurrency;

          qrytempo_total.Close;
          qrytempo_total.SQL.Text := 'select sum(tempo_gasto) as total from cronograma_alteracao where cod_chamado = '+IntToStr(dmPrincipal.cdsCronogramaAltcod_chamado.AsInteger)+
                                ' and data_solicitacao = '+QuotedStr(sdata);
          qrytempo_total.open;
          tmp_cronog := qrytempo_total.fieldbyname('total').AsCurrency;
          dmPrincipal.cdsChamadostempo_gasto.AsCurrency := (tmp_movimento + tmp_cronog);
    //----------------------------------------------------------------------------------//
          // atualiza dados do chamado
          dmPrincipal.cdsChamadoscod_status.AsInteger  := 3;
          dmPrincipal.cdsChamadosdesc_status.AsString  := 'FINALIZADO';
          dmPrincipal.cdsChamadoshora_final.AsDateTime := dmPrincipal.cdsCronogramaAltHr_finalizacao.AsDateTime;
          dmPrincipal.cdsChamadosdata_final.AsDateTime := dmPrincipal.cdsCronogramaAltdt_finalizacao.AsDateTime;

          dmPrincipal.cdsChamados.Post;
          dmPrincipal.cdsChamados.ApplyUpdates(0);
          //atualiza dados da movimenta??o do chamado
          dmPrincipal.qryMovChamado.Close;
          dmPrincipal.qryMovChamado.SQL.Text := 'select * from movimento_chamado where cod_chamado = '+ dmPrincipal.cdsChamadoscod_chamado.AsString+
                                                ' and data_chamado = '+QuotedStr(sdata)+' order by cod_movimento desc limit 1';
          dmPrincipal.qryMovChamado.open;
          if not dmPrincipal.qryMovChamado.IsEmpty then
          begin
               dmPrincipal.cdsMovChamado.close;
               dmPrincipal.cdsMovChamado.open;
               dmPrincipal.cdsMovChamado.Edit;
               dmPrincipal.cdsMovChamadocod_status.AsInteger := 3;
               dmPrincipal.cdsMovChamadodesc_status.AsString := 'FINALIZADO';

               dmPrincipal.cdsMovChamado.Post;
               dmPrincipal.cdsMovChamado.ApplyUpdates(0);
          end;

          enviaEmailFinalizacao;//envia e-mail de finaliza??o.
     end;

     close;

end;

procedure TfrmCronogramaAlteracoes.mmoAltPrevistaKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=Upcase(key);
     if (Key = #13) then
          key := #0;
end;

procedure TfrmCronogramaAlteracoes.mmoAltEfetivadaKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=Upcase(key);
     if (Key = #13) then
          key := #0;
end;

procedure TfrmCronogramaAlteracoes.FormShow(Sender: TObject);
begin

     if dsCronograma.State in [dsInsert] then
     begin
          cbxFinalizado.Enabled  := False;
          dmPrincipal.cdsCronogramaAltfinalizado.AsString := 'N';
          edtCodCliente.Text     := dmPrincipal.cdsChamadoscod_cliente.AsString;
          edtNomeCliente.Text    := dmPrincipal.cdsChamadosnome_cliente.AsString;
          edtUserResp.Text       := dmPrincipal.cdsChamadoscod_usuario_resp.AsString;
          edtNomeUserResp.Text   := dmPrincipal.cdsChamadosnome_usuario_resp.AsString;
          edtDataEntrega.Date    := dmPrincipal.cdsChamadosdata_chamado.AsDateTime + 7;
     end;

     if dsCronograma.State in [dsInsert,dsEdit] then
     begin
          edtCodChamado.Text := dmPrincipal.cdsChamadoscod_chamado.AsString;
          edtData.Date       := dmPrincipal.cdsChamadosdata_chamado.AsDateTime;
          if dmPrincipal.cdsCronogramaAltfinalizado.AsString = 'N' then
               pnlAltFinalizacao.Enabled := false
          else
               pnlAltFinalizacao.Enabled := true;
     end;
     if dsCronograma.State in [dsEdit] then
     begin
          cbxFinalizado.Enabled  := True;
          edtCodChamado.Text   := dmPrincipal.cdsCronogramaAltcod_chamado.AsString;
          edtTempo.text        := dmPrincipal.cdsCronogramaAlttempo_prev_alteracao.AsString;
          edtDataEntrega.Date  := dmPrincipal.cdsCronogramaAltdt_prev_entrega.AsDateTime;
          mmoAltEfetivada.Text := dmPrincipal.cdsCronogramaAltdesc_alteracao_efetivada.AsString;
          edtCodCliente.OnExit(Self);
          edtCodCategoria.OnExit(Self);
          edtUserResp.OnExit(Self);
          edtCodModulo.OnExit(Self);

     end;

end;

procedure TfrmCronogramaAlteracoes.cbxFinalizadoClick(Sender: TObject);
begin
     if (cbxFinalizado.Checked = true) then
     begin
          pnlAltFinalizacao.Enabled := true;
     end
     else
     begin
          pnlAltFinalizacao.Enabled := false;
          edtDtFinal.Clear;
          edtHrFinal.Clear;
          edtTmpGasto.Clear;
          mmoAltEfetivada.Clear;
     end;
end;

procedure TfrmCronogramaAlteracoes.edtCodCategoriaExit(Sender: TObject);
begin
     if (edtCodCategoria.Text <> '')  and
        (edtCodCategoria.Text <> '0') then
     begin
          dmPrincipal.qryCategoria.Close();
          dmPrincipal.qryCategoria.sql.text := 'select * from categoria_chamado order by cod_categoria';
          dmPrincipal.qryCategoria.Open();
          if dmPrincipal.qryCategoria.Locate('cod_categoria',edtCodCategoria.Text,[]) then
               edtNomeCategoria.Text  := dmPrincipal.qryCategoriadescricao_categoria.AsString
          else
               edtNomeCategoria.Text := '';
     end
     else
          edtNomeCategoria.Text := '';
end;

procedure TfrmCronogramaAlteracoes.edtCodModuloExit(Sender: TObject);
begin
     if (edtCodModulo.Text <> '')  and
        (edtCodModulo.Text <> '0') then
     begin
          dmPrincipal.qryModulo.Close();
          dmPrincipal.qryModulo.sql.text := 'select * from modulos_atendimento order by cod_modulo';
          dmPrincipal.qryModulo.Open();
          if dmPrincipal.qryModulo.Locate('cod_modulo',edtCodModulo.Text,[]) then
               edtNomemodulo.Text  := dmPrincipal.qryModulodesc_modulo.AsString
          else
               edtNomemodulo.Text := '';
     end
     else
          edtNomemodulo.Text := '';
end;

procedure TfrmCronogramaAlteracoes.btnBuscaCategoriaClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodCategoria.enabled  = false) or
        (edtCodCategoria.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConCategoria <> nil then
          frmConCategoria := nil;

     frmConCategoria := TfrmConCategoria.Create(Application);
     try
     begin
          frmConCategoria.btnExporta.Enabled := True;
          frmConCategoria.ShowModal();
     end
     finally
          frmConCategoria.Free();
     end;
     frmConCategoria := nil;

     if cancelou_zoom = false then
     begin
          edtCodCategoria.Text := dmPrincipal.cdsCategoriacod_categoria.AsString;
          dmPrincipal.cdsCronogramaAltcod_categoria.AsString := edtCodCategoria.Text;
     end;

     edtCodCategoria.OnExit(Self);
     edtCodCategoria.SetFocus;
end;

procedure TfrmCronogramaAlteracoes.edtCodCategoriaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaCategoria.Click();
end;

procedure TfrmCronogramaAlteracoes.edtCodModuloKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscamodulo.Click();
end;

procedure TfrmCronogramaAlteracoes.btnBuscamoduloClick(Sender: TObject);
begin
     if (edtCodModulo.enabled  = false) or
        (edtCodModulo.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConModulo <> nil then
          frmConModulo := nil;

     frmConModulo := TfrmConModulo.Create(Application);
     try
     begin
          frmConModulo.btnExporta.Enabled := True;
          frmConModulo.ShowModal();
     end
     finally
          frmConModulo.Free();
     end;
     frmConModulo := nil;

     if cancelou_zoom = false then
     begin
          edtCodModulo.Text := dmPrincipal.cdsModulocod_modulo.AsString;
          dmPrincipal.cdsCronogramaAltcod_modulo.AsString := edtCodModulo.Text;
     end;

     edtCodModulo.OnExit(Self);
     edtCodModulo.SetFocus;
end;

procedure TfrmCronogramaAlteracoes.edtDtFinalExit(Sender: TObject);
var data : TDateTime;
    data1 : string;
    result : string;
begin
     result := frmPrincipal.Formata_Data(edtDtFinal.Text);
     if result <> '' then
          edtDtFinal.Text := result;
     try
          StrToDate(edtDtFinal.Text)
     except
          MessageDlg('Informe uma data v?lida', mtError, [mbOk], 0);
          edtDtFinal.SetFocus;
          Abort();
     end;


end;

procedure TfrmCronogramaAlteracoes.edtCodClienteExit(Sender: TObject);
begin
     if (edtCodCliente.Text <> '')  and
        (edtCodCliente.Text <> '0') then
     begin
          dmPrincipal.qryClientes.Close();
          dmPrincipal.qryClientes.sql.text := 'select * from cliente order by cod_cliente';
          dmPrincipal.qryClientes.Open();
          if dmPrincipal.qryClientes.Locate('cod_cliente',edtCodCliente.Text,[]) then
               edtNomeCliente.Text  := dmPrincipal.qryClientesnome_cliente.AsString
          else
               edtNomeCliente.Text := '';
     end
     else
          edtNomeCliente.Text := '';
end;

procedure TfrmCronogramaAlteracoes.edtUserRespExit(Sender: TObject);
begin
     if (edtUserResp.Text <> '')  and
        (edtUserResp.Text <> '0') then
     begin
          dmPrincipal.qryUsuarios.Close();
          dmPrincipal.qryUsuarios.sql.text := 'select * from usuario order by cod_usuario';
          dmPrincipal.qryUsuarios.Open();
          if dmPrincipal.qryUsuarios.Locate('cod_usuario',edtUserResp.Text,[]) then
               edtNomeUserResp.Text  := dmPrincipal.qryUsuariosnome_usuario.AsString
          else
               edtNomeUserResp.Text := '';
     end
     else
          edtNomeUserResp.Text := '';
end;

procedure TfrmCronogramaAlteracoes.btnCancelarClick(Sender: TObject);
var
     sdata : String;
begin
     if dsCronograma.State in [dsInsert] then
     begin
          dmPrincipal.cdsCronogramaAlt.CancelUpdates;
          sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
          dmPrincipal.qryChamados.Close;
          dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cod_chamado = '+ dmPrincipal.cdsChamadoscod_chamado.AsString+
                                                  ' and data_chamado = '+QuotedStr(sdata);
          dmPrincipal.qryChamados.open;
          dmPrincipal.cdsChamados.close;
          dmPrincipal.cdsChamados.open;
          dmPrincipal.cdsChamados.Edit;
          dmPrincipal.cdsChamadosgera_cronograma_alt.AsString := 'N';
          dmPrincipal.cdsChamados.Post;
          dmPrincipal.cdsChamados.ApplyUpdates(0);

          dmPrincipal.qryMovChamado.Close;
          dmPrincipal.qryMovChamado.SQL.Text := 'select * from movimento_chamado where cod_chamado = '+ dmPrincipal.cdsChamadoscod_chamado.AsString+
                                                  ' and data_chamado = '+QuotedStr(sdata)+' and cod_movimento = '+IntToStr(dmPrincipal.cdsMovChamadocod_movimento.AsInteger);
          dmPrincipal.qryMovChamado.open;
          if not dmPrincipal.qryMovChamado.IsEmpty then
          begin
               dmPrincipal.cdsMovChamado.close;
               dmPrincipal.cdsMovChamado.open;
               dmPrincipal.cdsMovChamado.Edit;
               dmPrincipal.cdsMovChamadogera_cronograma_alt.AsString := 'N';
               dmPrincipal.cdsMovChamado.Post;
               dmPrincipal.cdsMovChamado.ApplyUpdates(0);
          end;
     end;
     if dsCronograma.State in [dsEdit] then
               dmPrincipal.cdsCronogramaAlt.CancelUpdates;
     Close;
end;

procedure TfrmCronogramaAlteracoes.enviaEmailFinalizacao;
var
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i : integer;
     senha, senhainv, decrip : String;
     attach : TIdAttachment;
begin
     dmPrincipal.qryCategoria.Close;
     dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado order by cod_categoria';
     dmPrincipal.qryCategoria.Open;
     if dmPrincipal.qryCategoria.Locate('cod_categoria',dmPrincipal.cdsChamadoscod_categoria.AsInteger,[]) then
     begin
          if dmPrincipal.qryCategoriaenvia_email.AsString = 'S' then
          begin
               if not Assigned(frmProcedimentoAdotado) then
                    frmProcedimentoAdotado := TfrmProcedimentoAdotado.Create(Self);
               try
                    frmProcedimentoAdotado.ShowModal;
               finally
                    frmProcedimentoAdotado.Free;
               end;
               frmProcedimentoAdotado := nil;
               
               ShowMessage('Aguarde...Enviando e-mail de finaliza??o de atendimento para o cliente!');
               Screen.Cursor := crHourGlass;
               sprotocolo := '';
               dmPrincipal.qryUsuarios.Close;
               dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
               dmPrincipal.qryUsuarios.open;
               if dmPrincipal.qryUsuarios.Locate('cod_usuario',dmPrincipal.cdsChamadoscod_usuario_resp.AsInteger,[]) then
               begin
                    senha    := dmPrincipal.qryUsuariossenha_conta.AsString;
                    senhainv := '';
                    i :=0;
                    for i := length(senha) downto 1 do
                         senhainv := senhainv + copy(senha,i,1);

                    senha := senhainv;
                    decrip              := frmPrincipal.desencrip(senha);
                    IdEnvioCli.Host     := dmPrincipal.qryUsuarioshost_mail.AsString;
                    IdEnvioCli.Username := dmPrincipal.qryUsuariosusuario_conta.AsString;
                    IdEnvioCli.Port     := StrToInt(dmPrincipal.qryUsuariosporta_serv_saida.AsString);
                    IdEnvioCli.Password := decrip;
                    IdEnvioCli.AuthType := satDefault;

                    if IdEnvioCli.Connected then
                         IdEnvioCli.Disconnect;
                    conectar := 0;
                    conectado := false;
                    while conectar < 10 do
                    begin
                         try
                              IdEnvioCli.Connect;
                              conectar := 20;
                              conectado := true;
                         except
                              conectar := conectar + 1;
                         end;
                    end;
               end;
               dmPrincipal.qryClientes.Close;
               dmPrincipal.qryClientes.SQL.Text := 'select * from cliente order by cod_cliente';
               dmPrincipal.qryClientes.open;
               if dmPrincipal.qryClientes.Locate('cod_cliente',dmPrincipal.cdsChamadoscod_cliente.AsInteger,[]) then
                    IdMsg.Recipients.EMailAddresses := dmPrincipal.qryClientesmail.AsString+';'+dmPrincipal.cdsChamadosemail_solicitante.AsString;

               if conectado = false then
               begin
                    ShowMessage('N?o foi poss?vel conectar ao provedor de e-mail !'+#13+
                              'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryClientesmail.AsString);
                    Exit;
               end;

               try
                    sprotocolo := FormatDateTime('yyyymmdd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
                    IdMsg.Subject := 'Oracullos - Finaliza??o de Atendimento';
                    IdMsg.Body.Text := 'Oracullos - Mensagem Autom?tica: '+#13+
                                       'Caro Cliente '+dmPrincipal.cdsChamadosnome_cliente.AsString+'.'+#13+
                                       'Informamos a finaliza??o do chamado N?: '+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+'.'+#13+
                                       '- Data e Hora de Abertura: '+dmPrincipal.cdsChamadosdata_chamado.AsString+' - '+dmPrincipal.cdsChamadoshora_chamado.AsString+ #13+
                                       '- Solicitante: '+dmPrincipal.cdsChamadosfuncionario_emp.AsString+#13+
                                       '- Solicita??o: '+dmPrincipal.cdsChamadossolicitacao.AsString+'.'+#13+
                                       '- Atendente : '+nome_usuario_login+#13+
                                       '- Procedimento Adotado: '+Proc_Adotado+'.'+#13+
                                       '- Data e Hora de Finaliza??o: '+dmPrincipal.cdsChamadosdata_final.AsString+' - '+dmPrincipal.cdsChamadoshora_final.AsString;

                    if (sArq <> '') then
                    begin
                         attach := TIdAttachment.Create(IdMsg.MessageParts);
                         attach.FileName := sArq;
                    end;
                    IdMsg.Priority := mpHigh;
                    IdMsg.From.Name := nome_usuario_login;
                    IdMsg.From.Address := dmPrincipal.qryUsuariosmail.AsString;
                    IdMsg.ReceiptRecipient.Text := IdMsg.From.text;

                    Application.ProcessMessages;
                    try
                         IdEnvioCli.Send(IdMsg);
                    except
                         begin
                              ShowMessage('N?o foi poss?vel efetuar o envio do e-mail !'+#13+
                                        'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryClientesmail.AsString);
                              Exit;
                         end;
                    end;

                    ShowMessage('E-mail enviado com sucesso !!');
                    Close;
               finally
                    begin
                         IdEnvioCli.Disconnect;
                         Screen.Cursor := crDefault;
                    end;
               end;
          end;
     end;

end;

end.
