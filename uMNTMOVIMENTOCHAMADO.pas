unit uMNTMOVIMENTOCHAMADO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DBCtrls, ComCtrls, Mask, ExtCtrls, DB,
  FMTBcd, SqlExpr, DBClient, Provider, DBXpress, IdMessage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IdExplicitTLSClientServerBase, IdSMTPBase, IdAttachment;

type
  TfrmCadMovimentoChamado = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    edtCodMovimento: TEdit;
    edtCodChamado: TDBEdit;
    edtNomeUsuario: TEdit;
    edtNomeStatus: TEdit;
    edtData: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cbxPrioridade: TComboBox;
    Label8: TLabel;
    btnBuscaUsuario: TSpeedButton;
    edtBuscaStatus: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsMovChamado: TDataSource;
    dsCodChamado: TDataSource;
    qryAdd: TSQLQuery;
    Label9: TLabel;
    edtTempo: TEdit;
    mmoObservaco: TMemo;
    edtCodUsuario: TEdit;
    edtCodStatus: TEdit;
    Label10: TLabel;
    edtUsuarioMov: TEdit;
    btnBuscaUsuarioMov: TSpeedButton;
    edtCodUserMov: TEdit;
    Label11: TLabel;
    edtData_fim: TDateTimePicker;
    Label12: TLabel;
    Label13: TLabel;
    edtHoraIni: TMaskEdit;
    edtHoraFim: TMaskEdit;
    qrytempo_total: TSQLQuery;
    edtDataChamado: TDBEdit;
    chxGeraCompromisso: TCheckBox;
    IdEnvio: TIdSMTP;
    IdMsgTrocaResp: TIdMessage;
    IdEnvioCli: TIdSMTP;
    IdMsg: TIdMessage;
    chxCronograma: TCheckBox;
    chkEnviaMov: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure edtCodUsuarioExit(Sender: TObject);
    procedure btnBuscaUsuarioClick(Sender: TObject);
    procedure edtBuscaStatusClick(Sender: TObject);
    procedure edtCodStatusExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodUserMovExit(Sender: TObject);
    procedure btnBuscaUsuarioMovClick(Sender: TObject);
    procedure mmoObservacoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodStatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtHoraFimExit(Sender: TObject);
      
  private
    { Private declarations }
  public
     procedure enviaEmailMov;
     procedure enviaEmailMovCliente;
     procedure enviaEmailMovCobranca;
     procedure enviaEmailReabertura;
     procedure enviaEmailAbertura;
  end;

var
  frmCadMovimentoChamado: TfrmCadMovimentoChamado;
  sDescChamadoMov : string;
  sCadSolucaoMov  : String;

implementation

uses DTMPRINCIPAL, uUSUARIOS, uPRINCIPAL, uCONSTATUS, uLOGIN,
  uCONBASECONHECIMENTO, uMNTCOMPCLIENTE, uMNTREPORTVISITAS, uCONCHAMADOS,
  Math, uPROCEDIMENTOADOTADO, uCRONOGRAMA_ALT, EMAIL_MOVIMENTACAO;

{$R *.dfm}

procedure TfrmCadMovimentoChamado.FormShow(Sender: TObject);
var
     sdata : string;
begin
     bGeraNovaVisita := false;
     sDescChamadoMov := '';
     sCadSolucaoMov  := '';
     sdata           := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
     qryAdd.Close;
     qryAdd.SQL.Clear;
     qryAdd.SQL.add('select * from chamado where cod_chamado = '+ dmPrincipal.cdsChamadoscod_chamado.AsString+' and data_chamado = '+QuotedStr(sdata));
     qryAdd.Open;
     if  qryAdd.RecordCount <> 0 then
     begin
          if (sReabrir = 'S') then
               edtCodStatus.Text := '2';
          if (sReabrir = '') then
               edtCodStatus.Text  := dmPrincipal.cdsChamadoscod_status.AsString;
          edtCodUsuario.Text := dmPrincipal.cdsChamadoscod_usuario_resp.AsString;
          edtCodUserMov.Text := IntToStr(cod_usuario_login);
     end;
     chxGeraCompromisso.Checked := false;
     chxCronograma.Checked      := false;
     edtData.Date               := date;
     edtData_fim.Date           := date;
     edtHoraIni.Text            := FormatDateTime('hh:mm',Time);
     edtHoraFim.Text            := FormatDateTime('hh:mm',Time);
     if dmPrincipal.cdsChamadosnivel_prioridade.AsString = '1' then
          cbxPrioridade.ItemIndex := 0
     else
     if dmPrincipal.cdsChamadosnivel_prioridade.AsString = '2' then
          cbxPrioridade.ItemIndex := 1
     else
     if dmPrincipal.cdsChamadosnivel_prioridade.AsString = '3' then
          cbxPrioridade.ItemIndex :=2;

     edtCodUsuario.OnExit(Self);
     edtCodStatus.OnExit(Self);
     edtCodUserMov.OnExit(Self);


end;

procedure TfrmCadMovimentoChamado.edtCodUsuarioExit(Sender: TObject);
begin
     if (edtCodUsuario.Text <> '')  and
        (edtCodUsuario.Text <> '0') then
     begin
          dmPrincipal.qryUsuarios.Close();
          dmPrincipal.qryUsuarios.sql.text := 'select * from usuario order by cod_usuario';
          dmPrincipal.qryUsuarios.Open();
          if dmPrincipal.qryUsuarios.Locate('cod_usuario',edtCodUsuario.Text,[]) then
               edtNomeUsuario.Text  := dmPrincipal.qryUsuariosnome_usuario.AsString
          else
               edtNomeUsuario.Text := '';
     end
     else
          edtNomeUsuario.Text := '';


     if dmPrincipal.cdsChamadosdesc_status.AsString = 'AGUARDANDO ATENDIMENTO' then
     if edtCodUsuario.Text <> '' then
     begin
          dmPrincipal.qryStatus.Close;
          dmPrincipal.qryStatus.Open;
          if dmPrincipal.qryStatus.Locate('descricao_status','ABERTO',[]) then
          begin
               edtCodStatus.Text  := dmPrincipal.qryStatuscod_status.AsString;
               edtNomeStatus.Text := dmPrincipal.qryStatusdescricao_status.AsString;
          end;
     end
     else
     begin
          edtCodStatus.Text  := '1';
          edtNomeStatus.Text := 'AGUARDANDO ATENDIMENTO' ;
     end;


end;

procedure TfrmCadMovimentoChamado.btnBuscaUsuarioClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodUsuario.enabled  = false) or
        (edtCodUsuario.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConUsuarios <> nil then
          frmConUsuarios := nil;

     if (edtCodUsuario.Text <> '') then
          cod_usuario_zoom := strtoint(edtCodUsuario.Text);

     frmConUsuarios := TfrmConUsuarios.Create(Application);
     try
     begin
          frmConUsuarios.btnExporta.Enabled := True;
          frmConUsuarios.ShowModal();
     end
     finally
          frmConUsuarios.Free();
     end;
     frmConUsuarios := nil;

     if cancelou_zoom = false then
     begin
          edtCodUsuario.Text := dmPrincipal.cdsUsuariocod_usuario.AsString;
     end;

     edtCodUsuario.OnExit(Self);
     edtCodUsuario.SetFocus;

end;

procedure TfrmCadMovimentoChamado.edtBuscaStatusClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodStatus.enabled  = false) or
        (edtCodStatus.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConStatus <> nil then
          frmConStatus := nil;

     if (edtCodStatus.Text <> '') then
          cod_status_zoom := strtoint(edtCodStatus.Text);

     frmConStatus := TfrmConStatus.Create(Application);
     try
     begin
          frmConStatus.btnExporta.Enabled := True;
          frmConStatus.ShowModal();
     end
     finally
          frmConStatus.Free();
     end;
     frmConStatus := nil;

     if cancelou_zoom = false then
     begin
          edtCodStatus.Text := dmPrincipal.cdsStatuscod_status.AsString;
     end;

     edtCodStatus.OnExit(Self);
     edtCodStatus.SetFocus;

end;

procedure TfrmCadMovimentoChamado.edtCodStatusExit(Sender: TObject);
begin
     if (edtCodStatus.Text <> '')  and
        (edtCodStatus.Text <> '0') then
     begin
          dmPrincipal.qryStatus.Close();
          dmPrincipal.qryStatus.sql.text := 'select * from status_chamado order by cod_status';
          dmPrincipal.qryStatus.Open();
          if dmPrincipal.qryStatus.Locate('cod_status',edtCodStatus.Text,[]) then
          begin
               edtNomeStatus.Text  := dmPrincipal.qryStatusdescricao_status.AsString;
               if dmPrincipal.qryStatusencerra_chamado.AsString = 'S' then
               begin
                    chxGeraCompromisso.Enabled := False;
                    chxGeraCompromisso.Checked := false;
               end
               else
               begin
                    chxGeraCompromisso.Enabled := true;
               end;
          end
          else
               edtNomeStatus.Text := '';
     end
     else
          edtNomeStatus.Text := '';
end;

procedure TfrmCadMovimentoChamado.btnSalvarClick(Sender: TObject);
var
     cod_movimento   :Integer;
     sdata           : String;
     istatus_chamado : integer;
begin
     istatus_chamado := 0;
     cod_movimento   := 0;
     sdata           := '';
     edtCodUserMov.OnExit(Self);
     edtCodUsuario.OnExit(Self);
     edtCodStatus.OnExit(Self);
     if (edtCodUserMov.Text = '') or (edtUsuarioMov.text = '') then
     begin
          ShowMessage('O usu?rio respons?vel pela movimenta??o n?o pode ser nulo! ');
          edtCodUserMov.SetFocus;
          Abort;
     end;
     if (edtCodUsuario.Text = '') or (edtNomeUsuario.Text = '') then
     begin
          ShowMessage('O usu?rio respons?vel pelo chamado n?o pode ser nulo! ');
          edtCodUsuario.SetFocus;
          Abort;
     end;
     if (edtCodStatus.Text = '') or (edtNomeStatus.Text = '') then
     begin
          ShowMessage('O status da movimenta??o n?o pode ser nulo! ');
          edtCodStatus.SetFocus;
          Abort;
     end;
     if edtData.date > edtData_fim.date then
     begin
          ShowMessage('A data inicial do movimento n?o pode ser maior que a data final! ');
          edtData_fim.SetFocus;
          Abort;
     end;
     if edtHoraIni.Text = '  :  ' then
     begin
          ShowMessage('A hora inicial da movimenta??o n?o pode ser nula! ');
          edtHoraIni.SetFocus;
          Abort;
     end;
     if edtHoraFim.Text = '  :  ' then
     begin
          ShowMessage('A hora final da movimenta??o n?o pode ser nula! ');
          edtHoraFim.SetFocus;
          Abort;
     end;
     if (edtData.Date = edtData_fim.Date) and (edtHoraIni.text > edtHoraFim.text) then
     begin
          ShowMessage('A hora de finaliza??o n?o pode ser menor que a hora inicial do movimento! ');
          edtHoraFim.SetFocus;
          Abort;
     end;
     if cbxPrioridade.Text = '' then
     begin
          ShowMessage('A prioridade do chamado n?o pode ser nula! ');
          cbxPrioridade.SetFocus;
          Abort;
     end;
     if edtTempo.Text = '' then
     begin
          ShowMessage('O tempo gasto n?o pode ser nulo! ');
          edtTempo.SetFocus;
          Abort;
     end;
     if edtCodStatus.Text = '1' then
     begin
          ShowMessage('Status inv?lido para a opera??o!!');
          edtCodStatus.SetFocus;
          Abort;
     end;

     //valida status de compromisso
     if (dmPrincipal.qryStatuscod_status.AsInteger = 4) and
        (chxGeraCompromisso.Checked = false) then
     begin
          ShowMessage('Para utilizar o status "EM COMPROMISSO", '+#10+
                         'marque a op??o "Gera Compromisso".');
          edtCodStatus.SetFocus;
          Abort;
     end;
     //========Ao finalizar o chamado, verifica se o usu?rio logado difere do respons?vel pelo chamado ===//
     dmPrincipal.qryStatus.Close;
     dmPrincipal.qryStatus.SQL.Text := 'select * from status_chamado order by cod_status';
     dmPrincipal.qryStatus.open;
     if dmPrincipal.qryStatus.Locate('cod_status',edtCodStatus.Text,[]) then
     begin
          if dmPrincipal.qryStatusencerra_chamado.AsString = 'S' then
          begin
               if cod_usuario_login <> StrToInt(edtCodUsuario.Text) then
               begin
                    ShowMessage('Imposs?vel finalizar o chamado. Usu?rio logado difere do respons?vel pelo chamado!');
                    edtCodUsuario.SetFocus;
                    Abort;
               end;
          end;
     end;
     //===================================================================================================
     sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
     qryAdd.close;
     qryAdd.SQL.Clear;
     qryAdd.SQL.Add('select max(cod_movimento) as codigo from movimento_chamado where cod_chamado = '+dmPrincipal.cdsChamadoscod_chamado.AsString+
                    ' and data_chamado = '+QuotedStr(sdata));
     qryAdd.open;
     cod_movimento := qryAdd.FieldByName('codigo').AsInteger;
     //===================== inser??o de um novo movimento ================================//
     dmPrincipal.cdsMovChamado.Insert;
     dmPrincipal.cdsMovChamadohora_gravacao.AsDateTime   := Time;
     dmPrincipal.cdsMovChamadodata_gravacao.AsDateTime   := Date;
     dmPrincipal.cdsMovChamadocod_status.AsString        := edtCodStatus.Text;
     dmPrincipal.cdsMovChamadocod_usuario.AsString       := edtCodUsuario.Text;
     dmPrincipal.cdsMovChamadocod_usuario_mov.AsString   := edtCodUserMov.Text;
     dmPrincipal.cdsMovChamadocod_movimento.AsInteger    := cod_movimento + 1;
     dmPrincipal.cdsMovChamadocod_chamado.AsString       := edtCodChamado.Text;
     dmPrincipal.cdsMovChamadodata_chamado.AsDateTime    := StrToDate(edtDataChamado.Text);
     dmPrincipal.cdsMovChamadonome_usuario_resp.AsString := edtNomeUsuario.Text;
     dmPrincipal.cdsMovChamadodesc_status.AsString       := edtNomeStatus.Text;
     dmPrincipal.cdsMovChamadonome_usuario_mov.AsString  := edtUsuarioMov.Text;
     dmPrincipal.cdsMovChamadodata_movimento.AsDateTime  := edtData.Date;
     dmPrincipal.cdsMovChamadodata_fim.AsDateTime        := edtData_fim.Date;
     dmPrincipal.cdsMovChamadohora_inic.AsString         := FormatDateTime('hh:mm',StrToTime(edtHoraIni.Text));
     dmPrincipal.cdsMovChamadohora_fim.AsString          := FormatDateTime('hh:mm',StrToTime(edtHoraFim.Text));
     dmPrincipal.cdsMovChamadotempo_gasto.AsString       := edtTempo.Text;
     dmPrincipal.cdsMovChamadoobservacao.AsString        := mmoObservaco.Text;

     if cbxPrioridade.ItemIndex = 0 then
          dmPrincipal.cdsMovChamadonivel_prioridade.AsString := '1'
     else
     if cbxPrioridade.ItemIndex = 1 then
          dmPrincipal.cdsMovChamadonivel_prioridade.AsString := '2'
     else
     if cbxPrioridade.ItemIndex = 2 then
          dmPrincipal.cdsMovChamadonivel_prioridade.AsString := '3';


     if (chxGeraCompromisso.Checked = true) then
          dmPrincipal.cdsMovChamadogera_compromisso.AsString := 'S'
     else
          dmPrincipal.cdsMovChamadogera_compromisso.AsString := 'N';


     if (chxCronograma.Checked = true) then
          dmPrincipal.cdsMovChamadogera_cronograma_alt.AsString := 'S'
     else
          dmPrincipal.cdsMovChamadogera_cronograma_alt.AsString := 'N';

     if (chkEnviaMov.Checked = true) then
          dmPrincipal.cdsMovChamadoenvia_email.AsString := 'S'
     else
          dmPrincipal.cdsMovChamadoenvia_email.AsString := 'N';
          
     if (sReabrir = 'S') then
          dmPrincipal.cdsMovChamadoreabertura.AsString := 'S';

     dmPrincipal.cdsMovChamado.Post;
     dmPrincipal.cdsMovChamado.ApplyUpdates(0);


     //================== atualiza situ??o do chamado ===============================//
     dmPrincipal.qryChamados.close;
     dmPrincipal.qryChamados.sql.Text := 'select * from chamado where cod_chamado = '+ dmPrincipal.cdsChamadoscod_chamado.AsString+
                                         ' and data_chamado = '+QuotedStr(sdata);
     dmPrincipal.qryChamados.open;
     dmPrincipal.cdsChamados.Close;
     dmPrincipal.cdsChamados.Open;
     dmPrincipal.cdsChamados.Edit;
     if sReabrir = 'S' then
          dmPrincipal.cdsChamadosreincidencia.AsString := 'S';
     istatus_chamado  := dmPrincipal.cdsChamadoscod_status.AsInteger;
     dmPrincipal.cdsChamadoscod_status.AsString        := dmPrincipal.cdsMovChamadocod_status.AsString;
     dmPrincipal.cdsChamadosdesc_status.AsString       := dmPrincipal.cdsMovChamadodesc_status.AsString;
     dmPrincipal.cdsChamadoscod_usuario_resp.AsString  := dmPrincipal.cdsMovChamadocod_usuario.AsString;
     dmPrincipal.cdsChamadosnome_usuario_resp.AsString := dmPrincipal.cdsMovChamadonome_usuario_resp.AsString;
     dmPrincipal.cdsChamadosgera_compromisso.AsString  := dmPrincipal.cdsMovChamadogera_compromisso.AsString;
     dmPrincipal.cdsChamadosgera_cronograma_alt.AsString  := dmPrincipal.cdsMovChamadogera_cronograma_alt.AsString;
     dmPrincipal.cdsChamadosdata_ultima_movimentacao.AsDateTime := dmPrincipal.cdsMovChamadodata_fim.AsDateTime;
     //========================Soma o tempo gasto em cada movimenta??o do chamado ===========================//
     qrytempo_total.Close;
     qrytempo_total.SQL.Text := 'select sum(tempo_gasto) as total from movimento_chamado where cod_chamado = '+ dmPrincipal.cdsChamadoscod_chamado.AsString+
                                ' and data_chamado = '+QuotedStr(sdata);
     qrytempo_total.open;
     dmPrincipal.cdsChamadostempo_gasto.AsCurrency := qrytempo_total.fieldbyname('total').AsCurrency;
     // ---------------------------------------------------------------------------- //
     dmPrincipal.qryStatus.Close();
     dmPrincipal.qryStatus.sql.text := 'select * from status_chamado order by cod_status';
     dmPrincipal.qryStatus.Open();
     if dmPrincipal.qryStatus.Locate('cod_status',edtCodStatus.Text,[]) then
     begin
          if dmPrincipal.qryStatusencerra_chamado.AsString = 'S' then
          begin
               dmPrincipal.cdsChamadosdata_final.AsDateTime := dmPrincipal.cdsMovChamadodata_fim.AsDateTime;
               dmPrincipal.cdsChamadoshora_final.AsDateTime := dmPrincipal.cdsMovChamadohora_fim.AsDateTime;
          end;
     end;

     if cbxPrioridade.ItemIndex = 0 then
          dmPrincipal.cdsChamadosnivel_prioridade.AsString := '1'
     else
     if cbxPrioridade.ItemIndex = 1 then
          dmPrincipal.cdsChamadosnivel_prioridade.AsString := '2'
     else
     if cbxPrioridade.ItemIndex = 2 then
          dmPrincipal.cdsChamadosnivel_prioridade.AsString := '3';

     dmPrincipal.cdsChamados.Post;
     dmPrincipal.cdsChamados.ApplyUpdates(0);


     // Atualiza data de atualiza??o do sistema no cadastro do cliente
     dmPrincipal.qryCategoria.Close;
     dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado order by cod_categoria';
     dmPrincipal.qryCategoria.open;

     dmPrincipal.qryStatus.Close;
     dmPrincipal.qryStatus.SQL.Text := 'select * from status_chamado order by cod_status';
     dmPrincipal.qryStatus.open;

     if dmPrincipal.qryStatus.Locate('cod_status',dmPrincipal.cdsChamadoscod_status.AsInteger,[]) then
     begin
          if dmPrincipal.qryCategoria.Locate('cod_categoria',dmPrincipal.cdsChamadoscod_categoria.AsInteger,[]) then
          begin
               if (dmPrincipal.qryCategoriaatualiza_sistema.AsString = 'S') and (dmPrincipal.qryStatusencerra_chamado.AsString = 'S') then
               begin
                    if MessageDlg('Deseja atualizar a data de atualiza??o do sistema?',mtConfirmation,[mbYes, mbNo], 0) = mrYes then
                    begin
                         dmPrincipal.qryClientes.Close;
                         dmPrincipal.qryClientes.SQL.Text := 'select * from cliente where cod_cliente = '+dmPrincipal.cdsChamadoscod_cliente.AsString;
                         dmPrincipal.qryClientes.open;
                         dmPrincipal.cdsClientes.Close;
                         dmPrincipal.cdsClientes.open;
                         if not dmPrincipal.cdsClientes.IsEmpty then
                         begin
                              dmPrincipal.cdsClientes.Edit;
                              dmPrincipal.cdsClientesdt_ultima_atualizacao.AsDateTime := dmPrincipal.cdsChamadosdata_final.AsDateTime;
                              dmPrincipal.cdsClientes.Post;
                              dmPrincipal.cdsClientes.ApplyUpdates(0);
                         end;
                    end;

               end;
          end;
     end;


     //=========== gera compromisso a partir de uma movimenta??o de chamado =================//
     if (chxGeraCompromisso.Checked = true) and (dmPrincipal.qryStatusencerra_chamado.AsString = 'N') then
     begin
          if frmCadCompromisso <> nil then
               frmCadCompromisso := nil;

          frmCadCompromisso := TfrmCadCompromisso.Create(Application);
          try
          begin
               dmPrincipal.qryCompromissos.Close;
               dmPrincipal.qryCompromissos.Open;
               dmPrincipal.cdsCompromissos.Close;
               dmPrincipal.cdsCompromissos.Open;
               dmPrincipal.cdsCompromissos.Insert;
               frmCadCompromisso.ShowModal();
          end;
          finally
               frmCadCompromisso.Free();
          end;
          frmCadCompromisso := nil;

     end;
     //=========== gera cronograma de altera??es a partir de uma movimenta??o de chamado =================//
     if (chxCronograma.Checked = true) and (dmPrincipal.qryStatusencerra_chamado.AsString = 'N') then
     begin
          if frmCronogramaAlteracoes <> nil then
               frmCronogramaAlteracoes := nil;

          frmCronogramaAlteracoes := TfrmCronogramaAlteracoes.Create(Application);
          try
          begin
               dmPrincipal.qryCronogramaAlt.Close;
               dmPrincipal.qryCronogramaAlt.Open;
               dmPrincipal.cdsCronogramaAlt.Close;
               dmPrincipal.cdsCronogramaAlt.Open;
               dmPrincipal.cdsCronogramaAlt.Insert;
               frmCronogramaAlteracoes.ShowModal();
          end;
          finally
               frmCronogramaAlteracoes.Free();
          end;
          frmCronogramaAlteracoes := nil;

     end;
     //===================Ao finalizar o chamado , abre op??o para cadastrar a solu??o ============//
     if dmPrincipal.qryStatusencerra_chamado.AsString = 'S' then
     begin
          //enviaEmailMovCliente;
          if MessageDlg('Deseja cadastrar a solu??o do chamado?',mtConfirmation,[mbYes, mbNo], 0) = mrYes then
          begin
               if frmConBaseConhecimento <> nil then
                    frmConBaseConhecimento := nil;

               frmConBaseConhecimento := TfrmConBaseConhecimento.Create(Application);
               try
               begin
                    sCadSolucaoMov := 'S';
                    sDescChamadoMov := dmPrincipal.cdsChamadosdescricao_chamado.AsString;
                    frmConBaseConhecimento.ShowModal();
               end
               finally
               begin
                    sCadSolucaoMov := '';
                    frmConBaseConhecimento.Free();
               end;
               end;
               frmConBaseConhecimento := nil;
          end;
          // Envia e-mail de reabertura e finaliza??o, quando o chamado for reaberto e em seguida finalizado.
          if sReabrir = 'S' then
          begin
               enviaEmailReabertura;
               enviaEmailMovCliente;
               enviaEmailMovCobranca;
          end
          else // Envia apenas e-mail de finaliza??o de atendimento
          begin
               enviaEmailMovCliente;
               enviaEmailMovCobranca;
          end;
     end

     // Envia e-mail de reabertura de atendimento
     else if sReabrir = 'S' then
          enviaEmailReabertura

     // Envia e-mail  de abertura de atendimento na movimenta??o, quando o status for alterado de 'Aguardando Atendimento' para 'Aberto'.
     else if (istatus_chamado = 1) and (dmPrincipal.cdsMovChamadocod_status.AsInteger = 2) then
          enviaEmailAbertura;

     //=== envia e-mail na troca de respons?vel pelo chamado ===//
     if (cod_usuario_login <> dmPrincipal.cdsMovChamadocod_usuario.AsInteger) and (edtCodUsuario.Text <> '') then
          enviaEmailMov;




     // Abre tela para informar a movimenta??o que ser? enviada para o cliente
     dmPrincipal.qryCategoria.Close;
     dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado order by cod_categoria';
     dmPrincipal.qryCategoria.Open;
     if dmPrincipal.qryCategoria.Locate('cod_categoria',dmPrincipal.cdsChamadoscod_categoria.AsInteger,[]) then
     begin
          if (dmPrincipal.qryCategoriaenvia_email.AsString = 'S') and
          (chkEnviaMov.Checked = true) and
          (dmPrincipal.qryStatusencerra_chamado.AsString <> 'S') then
          begin
               if not Assigned(frmInfoEmailMov) then
                    frmInfoEmailMov := TfrmInfoEmailMov.Create(Self);
               try
                    frmInfoEmailMov.ShowModal;
               finally
                    frmInfoEmailMov.Free;
               end;
               frmInfoEmailMov := nil;
          end;
     end;

     //exclui registro bloqueado
     dmPrincipal.cdsBloqueados.Close();
     dmPrincipal.cdsBloqueados.Open();
     if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['chamado',IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger),
                                             DateToStr(dmPrincipal.cdsChamadosdata_chamado.AsDateTime),'0','0','0']),[]) then
     begin
          dmPrincipal.cdsBloqueados.Delete;
          dmPrincipal.cdsBloqueados.ApplyUpdates(0);
          dmPrincipal.qryBloqueados.Close();
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.qryBloqueados.Open();
          dmPrincipal.cdsBloqueados.Open();
     end;

     Close;

end;

procedure TfrmCadMovimentoChamado.btnCancelarClick(Sender: TObject);
begin
     //exclui registro bloqueado
     dmPrincipal.cdsBloqueados.Close();
     dmPrincipal.cdsBloqueados.Open();
     if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['chamado',IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger),
                                             DateToStr(dmPrincipal.cdsChamadosdata_chamado.AsDateTime),'0','0','0']),[]) then
     begin
          dmPrincipal.cdsBloqueados.Delete;
          dmPrincipal.cdsBloqueados.ApplyUpdates(0);
          dmPrincipal.qryBloqueados.Close();
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.qryBloqueados.Open();
          dmPrincipal.cdsBloqueados.Open();
     end;
     
     dmPrincipal.cdsMovChamado.CancelUpdates;
     close;

end;

procedure TfrmCadMovimentoChamado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     //exclui registro bloqueado
     dmPrincipal.cdsBloqueados.Close();
     dmPrincipal.cdsBloqueados.Open();
     if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['chamado',IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger),
                                             DateToStr(dmPrincipal.cdsChamadosdata_chamado.AsDateTime),'0','0','0']),[]) then
     begin
          dmPrincipal.cdsBloqueados.Delete;
          dmPrincipal.cdsBloqueados.ApplyUpdates(0);
          dmPrincipal.qryBloqueados.Close();
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.qryBloqueados.Open();
          dmPrincipal.cdsBloqueados.Open();
     end;
     
     sReabrir := '';
     dmPrincipal.cdsMovChamado.CancelUpdates;
end;

procedure TfrmCadMovimentoChamado.edtCodUserMovExit(Sender: TObject);
begin
     if (edtCodUserMov.Text <> '')  and
        (edtCodUserMov.Text <> '0') then
     begin
          dmPrincipal.qryUsuarios.Close();
          dmPrincipal.qryUsuarios.sql.text := 'select * from usuario order by cod_usuario';
          dmPrincipal.qryUsuarios.Open();
          if dmPrincipal.qryUsuarios.Locate('cod_usuario',edtCodUserMov.Text,[]) then
               edtUsuarioMov.Text  := dmPrincipal.qryUsuariosnome_usuario.AsString
          else
               edtUsuarioMov.Text := '';
     end
     else
          edtUsuarioMov.Text := '';
end;

procedure TfrmCadMovimentoChamado.btnBuscaUsuarioMovClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodUserMov.enabled  = false) or
        (edtCodUserMov.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConUsuarios <> nil then
          frmConUsuarios := nil;

     frmConUsuarios := TfrmConUsuarios.Create(Application);
     try
     begin
          frmConUsuarios.btnExporta.Enabled := True;
          frmConUsuarios.ShowModal();
     end
     finally
          frmConUsuarios.Free();
     end;
     frmConUsuarios := nil;

     if cancelou_zoom = false then
     begin
          edtCodUserMov.Text := dmPrincipal.cdsUsuariocod_usuario.AsString;
     end;

     edtCodUserMov.OnExit(Self);
     edtCodUserMov.SetFocus;

end;

procedure TfrmCadMovimentoChamado.mmoObservacoKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=Upcase(key);
     if (Key = #13) then
          key := #0;
end;

procedure TfrmCadMovimentoChamado.enviaEmailMov;
var
     conectar  : integer;
     conectado : Boolean;
begin
     ShowMessage('Aguarde...Enviando e-mail para a troca de respons?vel pelo chamado!');
     Screen.Cursor := crHourGlass;
     dmPrincipal.qryParametros.Close;
     dmPrincipal.qryParametros.SQL.Text := 'select * from parametros_gerais order by parametro';
     dmPrincipal.qryParametros.open;
     dmPrincipal.cdsParametros.Close;
     dmPrincipal.cdsParametros.Open;
  //====== conex?o ====//
     IdEnvio.Host     := dmPrincipal.cdsParametrosserv_saida_email.AsString;
     IdEnvio.Username := dmPrincipal.cdsParametrosusuario_saida.AsString;
     IdEnvio.Port     := StrToInt(dmPrincipal.cdsParametrosporta_serv_saida.AsString);
     IdEnvio.Password := dmPrincipal.cdsParametrossenha_saida.AsString;
     IdEnvio.AuthType := satDefault;

     if IdEnvio.Connected then
          IdEnvio.Disconnect;
     conectar  := 0;
     conectado := false;
     while conectar < 10 do
     begin
          try
               IdEnvio.Connect;
               conectar  := 20;
               conectado := true;
          except
               conectar := conectar + 1;
          end;
     end;

     dmPrincipal.qryUsuarios.Close;
     dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
     dmPrincipal.qryUsuarios.open;
     if dmPrincipal.qryUsuarios.Locate('cod_usuario',dmPrincipal.cdsMovChamadocod_usuario.AsInteger,[]) then
          IdMsgTrocaResp.Recipients.EMailAddresses := dmPrincipal.qryUsuariosmail.AsString ;

     if conectado = false then
     begin
          ShowMessage('N?o foi poss?vel conectar ao provedor de e-mail !'+#13+
                     'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryUsuariosmail.AsString);
          Exit;
     end;

     try

     IdMsgTrocaResp.Subject   := 'Oracullos - Troca de Respons?vel pelo Chamado';
     IdMsgTrocaResp.Body.Text := 'C?digo do Chamado: '+dmPrincipal.cdsChamadoscod_chamado.AsString+#13+
                                   'Descri??o do chamado: '+dmPrincipal.cdsChamadosdescricao_chamado.AsString+#13+
                                   'Movimenta??o(Intera??es/Observa??es): '+dmPrincipal.cdsMovChamadoobservacao.AsString+#13+' - '+
                                   'Respons?vel anterior: '+nome_usuario_login+'. ';
     IdMsgTrocaResp.Priority     := mpHigh;
     IdMsgTrocaResp.From.Name    := nome_usuario_login;
     IdMsgTrocaResp.From.Address := dmPrincipal.cdsParametrosemail_envio.AsString;
     //IdMsgTrocaResp.ReceiptRecipient.Text := IdMsgTrocaResp.From.text;

     Application.ProcessMessages;
     try
          IdEnvio.Send(IdMsgTrocaResp);
     except
          begin
               ShowMessage('N?o foi poss?vel efetuar o envio do e-mail !'+#13+
                           'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryUsuariosmail.AsString);
               Exit;
          end;
     end;
     ShowMessage('E-mail enviado com sucesso !!');
     Close;
  finally
     begin
          IdEnvio.Disconnect;
          Screen.Cursor := crDefault;
     end;
  end;
end;

procedure TfrmCadMovimentoChamado.enviaEmailMovCliente;
var
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i          : integer;
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
               sprotocolo    := '';
               dmPrincipal.qryUsuarios.Close;
               dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
               dmPrincipal.qryUsuarios.open;
               if dmPrincipal.qryUsuarios.Locate('cod_usuario',dmPrincipal.cdsMovChamadocod_usuario.AsInteger,[]) then
               begin
                    senha    := dmPrincipal.qryUsuariossenha_conta.AsString;
                    senhainv := '';
                    i :=0;
                    for i := length(senha) downto 1 do
                         senhainv := senhainv + copy(senha,i,1);

                    senha := senhainv;
                    decrip := frmPrincipal.desencrip(senha);
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
                              conectar  := 20;
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
                    IdMsg.Recipients.EMailAddresses := dmPrincipal.qryClientesmail.AsString+';'+dmPrincipal.cdsChamadosemail_solicitante.AsString+
                                                       ';'+dmPrincipal.cdsChamadosemail_solicitante_outro.AsString;

               if conectado = false then
               begin
                    ShowMessage('N?o foi poss?vel conectar ao provedor de e-mail !'+#13+
                              'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryClientesmail.AsString);
                    Exit;
               end;

               try
                    sprotocolo := FormatDateTime('yyyymmdd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
                    IdMsg.Subject := 'Oracullos - Finaliza??o de Atendimento';
                    IdMsg.Body.Text := '[Oracullos - Mensagem Autom?tica]'+#13+#13+
                                       'Caro Cliente '+dmPrincipal.cdsChamadosnome_cliente.AsString+'.'+#13+
                                       'Informamos a finaliza??o do chamado N?: '+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+'.'+#13+
                                       'Data e Hora de Abertura: '+dmPrincipal.cdsChamadosdata_chamado.AsString+' - '+dmPrincipal.cdsChamadoshora_chamado.AsString+#13+
                                       'Solicitante: '+dmPrincipal.cdsChamadosfuncionario_emp.AsString+#13+
                                       'Solicita??o: '+dmPrincipal.cdsChamadossolicitacao.AsString+#13+
                                       'Data e Hora de Finaliza??o: '+dmPrincipal.cdsChamadosdata_final.AsString+' - '+dmPrincipal.cdsChamadoshora_final.AsString+'.'+#13+
                                       'Atendente : '+nome_usuario_login+#13+
                                       'Procedimento Adotado: '+Proc_Adotado;


                    if (sArq <> '') then
                    begin
                         attach := TIdAttachment.Create(IdMsg.MessageParts);
                         attach.FileName := sArq;

                    end;
                    IdMsg.Priority              := mpHigh;
                    IdMsg.From.Name             := nome_usuario_login;
                    IdMsg.From.Address          := dmPrincipal.qryUsuariosmail.AsString;
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
          end
          else
          begin
               if not Assigned(frmProcedimentoAdotado) then
                    frmProcedimentoAdotado := TfrmProcedimentoAdotado.Create(Self);
               try
                    frmProcedimentoAdotado.ShowModal;
               finally
                    frmProcedimentoAdotado.Free;
               end;
               frmProcedimentoAdotado := nil;
          end;
     end;
end;

procedure TfrmCadMovimentoChamado.edtCodUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaUsuario.Click();
end;

procedure TfrmCadMovimentoChamado.edtCodStatusKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         edtBuscaStatus.Click();
end;

procedure TfrmCadMovimentoChamado.FormKeyDown(Sender: TObject;
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

procedure TfrmCadMovimentoChamado.edtHoraFimExit(Sender: TObject);
var
     horaini       : integer;
     horafim       : integer;
     minini        : integer;
     minfim        : integer;
     HoraTotal     : Currency;
     mintohoraIni  : Currency;
     mintohoraFim  : Currency;
     TotalIni      : Currency;
     TotalFim      : Currency;
begin
     if (edtHoraIni.Text <> '  :  ') and (edtHoraFim.Text <> '  :  ') and (DateToStr(edtData.date) = DateToStr(edtData_fim.Date)) then
     begin
          horaini      := StrToInt(copy(edtHoraIni.text,1,2));
          minini       := StrToInt(copy(edtHoraIni.text,4,2));
          mintohoraIni := (minini / 60);
          TotalIni     := (mintohoraIni + horaini);

          horafim      := StrToInt(copy(edtHoraFim.text,1,2));
          minfim       := StrToInt(copy(edtHoraFim.text,4,2));
          mintohoraFim := (minfim / 60);
          TotalFim     := (mintohoraFim + horafim);
          if (TotalIni <= TotalFim) then
          begin
               HoraTotal     := (TotalFim - TotalIni);
               //==== Arredonda para duas casas decimais =====//
               HoraTotal     := RoundTo(HoraTotal,-2);
               edtTempo.Text := CurrToStr(HoraTotal);
          end
          else
          begin
               ShowMessage('Hora inicial do movimento ? maior que a hora de finaliza??o. Por favor, verifique!');
               edtHoraFim.SetFocus;
               Abort;
          end;
     end
     else
          edtTempo.text := '0';

end;

procedure TfrmCadMovimentoChamado.enviaEmailReabertura;
var
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i : integer;
     senha, senhainv, decrip : String;
begin
     dmPrincipal.qryCategoria.Close;
     dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado order by cod_categoria';
     dmPrincipal.qryCategoria.Open;
     if dmPrincipal.qryCategoria.Locate('cod_categoria',dmPrincipal.cdsChamadoscod_categoria.AsInteger,[]) then
     begin
          if dmPrincipal.qryCategoriaenvia_email.AsString = 'S' then
          begin
               ShowMessage('Aguarde...Enviando e-mail de reabertura de atendimento para o cliente!');
               Screen.Cursor := crHourGlass;
               sprotocolo := '';
               dmPrincipal.qryUsuarios.Close;
               dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
               dmPrincipal.qryUsuarios.open;
               if dmPrincipal.qryUsuarios.Locate('cod_usuario',dmPrincipal.cdsMovChamadocod_usuario.AsInteger,[]) then
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
                    conectar  := 0;
                    conectado := false;
                    while conectar < 10 do
                    begin
                         try
                              IdEnvioCli.Connect;                  
                              conectar  := 20;
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
                    IdMsg.Recipients.EMailAddresses := dmPrincipal.qryClientesmail.AsString+';'+dmPrincipal.cdsChamadosemail_solicitante.AsString+
                                                       ';'+dmPrincipal.cdsChamadosemail_solicitante_outro.AsString;

               if conectado = false then
               begin
                    ShowMessage('N?o foi poss?vel conectar ao provedor de e-mail !'+#13+
                              'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryClientesmail.AsString);
                    Exit;
               end;

               try
                    sprotocolo      := FormatDateTime('yyyymmdd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
                    IdMsg.Subject   := 'Oracullos - Reabertura de Atendimento';
                    IdMsg.Body.Text := '[Oracullos - Mensagem Autom?tica]'+#13+#13+
                                       'Caro Cliente '+dmPrincipal.cdsChamadosnome_cliente.AsString+'.'+#13+
                                       'Informamos a reabertura do chamado N?: '+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+'.'+#13+
                                       'Data e Hora de Reabertura: '+dmPrincipal.cdsMovChamadodata_movimento.AsString+' - '+dmPrincipal.cdsMovChamadohora_inic.AsString+'.'+#13+
                                       'Origem do Chamado: '+dmPrincipal.cdsChamadosorigem_chamado.AsString+#13+
                                       'Solicitante: '+dmPrincipal.cdsChamadosfuncionario_emp.AsString+#13+
                                       'Solicita??o: '+dmPrincipal.cdsChamadossolicitacao.AsString;

                    IdMsg.Priority              := mpHigh;
                    IdMsg.From.Name             := nome_usuario_login;
                    IdMsg.From.Address          := dmPrincipal.qryUsuariosmail.AsString;
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

procedure TfrmCadMovimentoChamado.enviaEmailAbertura;
var
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i : integer;
     senha, senhainv, decrip : String;
begin
     dmPrincipal.qryCategoria.Close;
     dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado order by cod_categoria';
     dmPrincipal.qryCategoria.Open;
     if dmPrincipal.qryCategoria.Locate('cod_categoria',dmPrincipal.cdsChamadoscod_categoria.AsInteger,[]) then
     begin
          if dmPrincipal.qryCategoriaenvia_email.AsString = 'S' then
          begin
               ShowMessage('Aguarde...Enviando e-mail de Abertura de atendimento para o cliente!');
               Screen.Cursor := crHourGlass;
               sprotocolo := '';
               dmPrincipal.qryUsuarios.Close;
               dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
               dmPrincipal.qryUsuarios.open;
               if dmPrincipal.qryUsuarios.Locate('cod_usuario',dmPrincipal.cdsMovChamadocod_usuario.AsInteger,[]) then
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
                    conectar  := 0;
                    conectado := false;
                    while conectar < 10 do
                    begin
                         try
                              IdEnvioCli.Connect;                  
                              conectar  := 20;
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
                    IdMsg.Recipients.EMailAddresses := dmPrincipal.qryClientesmail.AsString+';'+dmPrincipal.cdsChamadosemail_solicitante.AsString+
                                                       ';'+dmPrincipal.cdsChamadosemail_solicitante_outro.AsString;

               if conectado = false then
               begin
                    ShowMessage('N?o foi poss?vel conectar ao provedor de e-mail !'+#13+
                              'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryClientesmail.AsString);
                    Exit;
               end;

               try
                    sprotocolo      := FormatDateTime('yyyymmdd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
                    IdMsg.Subject   := 'Oracullos - Abertura de Atendimento';
                    IdMsg.Body.Text := '[Oracullos - Mensagem Autom?tica]'+#13+#13+
                                       'Caro Cliente '+dmPrincipal.cdsChamadosnome_cliente.AsString+'.'+#13+
                                       'Informamos a Abertura do chamado N?: '+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+'.'+#13+
                                       'Data e Hora de Abertura: '+dmPrincipal.cdsMovChamadodata_movimento.AsString+' - '+dmPrincipal.cdsMovChamadohora_inic.AsString+'.'+#13+
                                       'Origem do Chamado: '+dmPrincipal.cdsChamadosorigem_chamado.AsString+#13+
                                       'Solicitante: '+dmPrincipal.cdsChamadosfuncionario_emp.AsString+#13+
                                       'Solicita??o: '+dmPrincipal.cdsChamadossolicitacao.AsString;

                    IdMsg.Priority              := mpHigh;
                    IdMsg.From.Name             := nome_usuario_login;
                    IdMsg.From.Address          := dmPrincipal.qryUsuariosmail.AsString;
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

procedure TfrmCadMovimentoChamado.enviaEmailMovCobranca;
var
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i          : integer;
     senha, senhainv, decrip : String;
     attach : TIdAttachment;
begin

     if (tempoCobranca <> '') and (tempoCobranca <> '0,00') then
     begin
          ShowMessage('Aguarde...Enviando e-mail de notifica??o de cobran?a!');
          Screen.Cursor := crHourGlass;
          sprotocolo    := '';
          dmPrincipal.qryUsuarios.Close;
          dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
          dmPrincipal.qryUsuarios.open;
          if dmPrincipal.qryUsuarios.Locate('cod_usuario',dmPrincipal.cdsMovChamadocod_usuario.AsInteger,[]) then
          begin
               senha    := dmPrincipal.qryUsuariossenha_conta.AsString;
               senhainv := '';
               i :=0;
               for i := length(senha) downto 1 do
                    senhainv := senhainv + copy(senha,i,1);

               senha := senhainv;
               decrip := frmPrincipal.desencrip(senha);
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
                         conectar  := 20;
                         conectado := true;
                    except
                         conectar := conectar + 1;
                    end;
               end;
          end;
          dmPrincipal.qryParametros.Close;
          dmPrincipal.qryParametros.SQL.Text := 'select * from parametros_gerais order by parametro';
          dmPrincipal.qryParametros.open;

          IdMsg.Recipients.EMailAddresses := dmPrincipal.qryParametrosemail_cobranca.AsString;

          if conectado = false then
          begin
               ShowMessage('N?o foi poss?vel conectar ao provedor de e-mail !'+#13+
                              'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryParametrosemail_cobranca.AsString);
               Exit;
          end;

          try
               sprotocolo := FormatDateTime('yyyymmdd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
               IdMsg.Subject   :=      'Oracullos - Notifica??o de tempo para cobran?a';
               IdMsg.Body.Text :=      '[Oracullos - Mensagem Autom?tica]'+#13+#13+
                                       'Cliente: '+dmPrincipal.cdsChamadosnome_cliente.AsString+'.'+#13+
                                       'Tempo para cobran?a (em horas): '+tempoCobranca+#13+
                                       'Informamos a finaliza??o do chamado N?: '+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+'.'+#13+
                                       'Data e Hora de Abertura: '+dmPrincipal.cdsChamadosdata_chamado.AsString+' - '+dmPrincipal.cdsChamadoshora_chamado.AsString+ #13+
                                       'Solicitante: '+dmPrincipal.cdsChamadosfuncionario_emp.AsString+#13+
                                       'Solicita??o: '+dmPrincipal.cdsChamadossolicitacao.AsString+#13+
                                       'Data e Hora de Finaliza??o: '+dmPrincipal.cdsChamadosdata_final.AsString+' - '+dmPrincipal.cdsChamadoshora_final.AsString+'.'+#13+
                                       'Atendente : '+nome_usuario_login+#13+
                                       'Procedimento Adotado: '+Proc_Adotado;


               if (sArq <> '') then
               begin
                    attach := TIdAttachment.Create(IdMsg.MessageParts);
                    attach.FileName := sArq;

               end;
               IdMsg.Priority              := mpHigh;
               IdMsg.From.Name             := nome_usuario_login;
               IdMsg.From.Address          := dmPrincipal.qryUsuariosmail.AsString;
               IdMsg.ReceiptRecipient.Text := IdMsg.From.text;

               Application.ProcessMessages;
               try
                    IdEnvioCli.Send(IdMsg);
               except
               begin
                    ShowMessage('N?o foi poss?vel efetuar o envio do e-mail !'+#13+
                                   'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryParametrosemail_cobranca.AsString);
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


end.
