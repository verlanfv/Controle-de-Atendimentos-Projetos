unit uMNTCOMPCLIENTE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, ComCtrls, ExtCtrls, Buttons,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IdExplicitTLSClientServerBase, IdSMTPBase, IdAttachment;

type
  TfrmCadCompromisso = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnBuscaCliente: TSpeedButton;
    btnBuscaUsuario: TSpeedButton;
    edtCodCompromisso: TEdit;
    edtCodCliente: TDBEdit;
    edtNomeCliente: TEdit;
    edtCodUsuario: TDBEdit;
    edtNomeUsuario: TEdit;
    Panel1: TPanel;
    Label4: TLabel;
    edtData: TDateTimePicker;
    Label5: TLabel;
    edtHora: TMaskEdit;
    Label6: TLabel;
    edtLocal: TDBEdit;
    Label7: TLabel;
    edtSolicitante: TDBEdit;
    Label8: TLabel;
    mmoObs: TDBMemo;
    dsCompromisso: TDataSource;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    chxFinalizado: TDBCheckBox;
    Label9: TLabel;
    edtChamado: TEdit;
    IdEnvioCli: TIdSMTP;
    IdMsg: TIdMessage;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoObsKeyPress(Sender: TObject; var Key: Char);
    procedure btnBuscaUsuarioClick(Sender: TObject);
    procedure btnBuscaClienteClick(Sender: TObject);
    procedure edtCodUsuarioExit(Sender: TObject);
    procedure edtCodClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    procedure enviaEmailCliente;
  end;

var
  frmCadCompromisso: TfrmCadCompromisso;

implementation

uses DTMPRINCIPAL, uPRINCIPAL, uUSUARIOS, uCONCLIENTES, uMNTREPORTVISITAS,
  uMNTCHAMADOS, uLOGIN, uPROCEDIMENTOADOTADO;

{$R *.dfm}

procedure TfrmCadCompromisso.btnCancelarClick(Sender: TObject);
var
     sdata : string;
begin
     sdata := '';
     if (bGeraNovaVisita = false) then
     begin
          if dsCompromisso.State in [dsInsert] then
          begin
               dmPrincipal.cdsCompromissos.CancelUpdates;
               sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
               dmPrincipal.qryChamados.Close;
               dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cod_chamado = '+ dmPrincipal.cdsChamadoscod_chamado.AsString+
                                                  ' and data_chamado = '+QuotedStr(sdata);
               dmPrincipal.qryChamados.open;
               dmPrincipal.cdsChamados.close;
               dmPrincipal.cdsChamados.open;
               dmPrincipal.cdsChamados.Edit;
               dmPrincipal.cdsChamadosgera_compromisso.AsString := 'N';
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
                    dmPrincipal.cdsMovChamadogera_compromisso.AsString := 'N';
                    dmPrincipal.cdsMovChamado.Post;
                    dmPrincipal.cdsMovChamado.ApplyUpdates(0);
               end;
          end;
          if dsCompromisso.State in [dsEdit] then
               dmPrincipal.cdsCompromissos.CancelUpdates;
     end
     else if (bGeraNovaVisita = true) then
     begin
          if dsCompromisso.State in [dsInsert] then
          begin
               dmPrincipal.cdsCompromissos.CancelUpdates;
               sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
               dmPrincipal.qryChamados.Close;
               dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cod_chamado = '+ dmPrincipal.cdsChamadoscod_chamado.AsString+
                                                  ' and data_chamado = '+QuotedStr(sdata);
               dmPrincipal.qryChamados.open;
               dmPrincipal.cdsChamados.close;
               dmPrincipal.cdsChamados.open;
               dmPrincipal.cdsChamados.Edit;
               dmPrincipal.cdsChamadoscod_status.AsInteger  := 3;
               dmPrincipal.cdsChamadosdesc_status.AsString  := 'FINALIZADO';
               dmPrincipal.cdsChamadoshora_final.AsDateTime := dmPrincipal.cdsReporthora_fim.AsDateTime;
               dmPrincipal.cdsChamadosdata_final.AsDateTime := dmPrincipal.cdsReportdata_visita.AsDateTime;
               dmPrincipal.cdsChamados.Post;
               dmPrincipal.cdsChamados.ApplyUpdates(0);

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
                    dmPrincipal.cdsMovChamadohora_fim.AsDateTime  := dmPrincipal.cdsReporthora_fim.AsDateTime;
                    dmPrincipal.cdsMovChamadodata_fim.AsDateTime  := dmPrincipal.cdsReportdata_visita.AsDateTime;
                    dmPrincipal.cdsMovChamado.Post;
                    dmPrincipal.cdsMovChamado.ApplyUpdates(0);
               end;

               dmPrincipal.cdsCompromissos.CancelUpdates;
               sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsReportdata_chamado.AsDateTime);
               dmPrincipal.qryReport.Close;
               dmPrincipal.qryReport.SQL.Text := 'select * from report_visita where cod_chamado = '+ dmPrincipal.cdsReportcod_chamado.AsString+
                                                  ' and data_chamado = '+QuotedStr(sdata)+' and cod_compromisso = '+dmPrincipal.cdsReportcod_compromisso.AsString;
               dmPrincipal.qryReport.open;
               dmPrincipal.cdsReport.close;
               dmPrincipal.cdsReport.open;
               dmPrincipal.cdsReport.Edit;
               dmPrincipal.cdsReportmotivo_nova_visita.Clear;
               dmPrincipal.cdsReportnecessita_nova_visita.AsString := 'N';
               dmPrincipal.cdsReport.Post;
               dmPrincipal.cdsReport.ApplyUpdates(0);
               enviaEmailCliente;
          end;
          if dsCompromisso.State in [dsEdit] then
               dmPrincipal.cdsCompromissos.CancelUpdates;
     end;
     close;
end;

procedure TfrmCadCompromisso.FormClose(Sender: TObject; var Action: TCloseAction);
var
     sdata : string;
begin
     sdata := '';
     if (bGeraNovaVisita = false) then
     begin
          if dsCompromisso.State in [dsInsert] then
          begin
               dmPrincipal.cdsCompromissos.CancelUpdates;
               sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
               dmPrincipal.qryChamados.Close;
               dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cod_chamado = '+ dmPrincipal.cdsChamadoscod_chamado.AsString+
                                                  ' and data_chamado = '+QuotedStr(sdata);
               dmPrincipal.qryChamados.open;
               dmPrincipal.cdsChamados.close;
               dmPrincipal.cdsChamados.open;
               dmPrincipal.cdsChamados.Edit;
               dmPrincipal.cdsChamadosgera_compromisso.AsString := 'N';
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
                    dmPrincipal.cdsMovChamadogera_compromisso.AsString := 'N';
                    dmPrincipal.cdsMovChamado.Post;
                    dmPrincipal.cdsMovChamado.ApplyUpdates(0);
               end;
          end;
          if dsCompromisso.State in [dsEdit] then
               dmPrincipal.cdsCompromissos.CancelUpdates;
     end
     else if (bGeraNovaVisita = true) then
     begin
          if dsCompromisso.State in [dsInsert] then
          begin
               dmPrincipal.cdsCompromissos.CancelUpdates;
               sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
               dmPrincipal.qryChamados.Close;
               dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cod_chamado = '+ dmPrincipal.cdsChamadoscod_chamado.AsString+
                                                  ' and data_chamado = '+QuotedStr(sdata);
               dmPrincipal.qryChamados.open;
               dmPrincipal.cdsChamados.close;
               dmPrincipal.cdsChamados.open;
               dmPrincipal.cdsChamados.Edit;
               dmPrincipal.cdsChamadoscod_status.AsInteger  := 3;
               dmPrincipal.cdsChamadosdesc_status.AsString  := 'FINALIZADO';
               dmPrincipal.cdsChamadoshora_final.AsDateTime := dmPrincipal.cdsReporthora_fim.AsDateTime;
               dmPrincipal.cdsChamadosdata_final.AsDateTime := dmPrincipal.cdsReportdata_visita.AsDateTime;
               dmPrincipal.cdsChamados.Post;
               dmPrincipal.cdsChamados.ApplyUpdates(0);

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
                    dmPrincipal.cdsMovChamadohora_fim.AsDateTime  := dmPrincipal.cdsReporthora_fim.AsDateTime;
                    dmPrincipal.cdsMovChamadodata_fim.AsDateTime  := dmPrincipal.cdsReportdata_visita.AsDateTime;
                    dmPrincipal.cdsMovChamado.Post;
                    dmPrincipal.cdsMovChamado.ApplyUpdates(0);
               end;

               dmPrincipal.cdsCompromissos.CancelUpdates;
               sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsReportdata_chamado.AsDateTime);
               dmPrincipal.qryReport.Close;
               dmPrincipal.qryReport.SQL.Text := 'select * from report_visita where cod_chamado = '+ dmPrincipal.cdsReportcod_chamado.AsString+
                                                  ' and data_chamado = '+QuotedStr(sdata)+' and cod_compromisso = '+dmPrincipal.cdsReportcod_compromisso.AsString;
               dmPrincipal.qryReport.open;
               dmPrincipal.cdsReport.close;
               dmPrincipal.cdsReport.open;
               dmPrincipal.cdsReport.Edit;
               dmPrincipal.cdsReportmotivo_nova_visita.Clear;
               dmPrincipal.cdsReportnecessita_nova_visita.AsString := 'N';
               dmPrincipal.cdsReport.Post;
               dmPrincipal.cdsReport.ApplyUpdates(0);
               enviaEmailCliente;
          end;
          if dsCompromisso.State in [dsEdit] then
               dmPrincipal.cdsCompromissos.CancelUpdates;
     end;
end;

procedure TfrmCadCompromisso.mmoObsKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=Upcase(key);
     if (Key = #13) then
          key := #0;
end;

procedure TfrmCadCompromisso.btnBuscaUsuarioClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodUsuario.enabled  = false) or
        (edtCodUsuario.readonly = true)  then
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
          edtCodUsuario.Text := dmPrincipal.cdsUsuariocod_usuario.AsString;
          dmPrincipal.cdsCompromissoscod_usuario.AsString := edtCodUsuario.Text;
     end;

     edtCodUsuario.OnExit(Self);
     edtCodUsuario.SetFocus;

end;

procedure TfrmCadCompromisso.btnBuscaClienteClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodCliente.enabled  = false) or
        (edtCodCliente.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConClientes <> nil then
          frmConClientes := nil;

     frmConClientes := TfrmConClientes.Create(Application);
     try
     begin
          frmConClientes.btnExporta.Enabled := True;
          frmConClientes.ShowModal();
     end
     finally
          frmConClientes.Free();
     end;
     frmConClientes := nil;

     if cancelou_zoom = false then
     begin
          edtCodCliente.Text := dmPrincipal.cdsClientescod_cliente.AsString;
          dmPrincipal.cdsCompromissoscod_cliente.AsString := edtCodCliente.Text;
     end;

     edtCodCliente.OnExit(Self);
     edtCodCliente.SetFocus;

end;

procedure TfrmCadCompromisso.edtCodUsuarioExit(Sender: TObject);
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
end;

procedure TfrmCadCompromisso.edtCodClienteExit(Sender: TObject);
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

procedure TfrmCadCompromisso.FormShow(Sender: TObject);
begin
     if dsCompromisso.State in [dsInsert] then
     begin
          //chxFinalizado.Checked := False;
          dmPrincipal.cdsCompromissosfinalizado.AsString := 'N';
          edtData.Date        := Date;
          edtChamado.Text     := dmPrincipal.cdsChamadoscod_chamado.AsString;
          edtCodCliente.Text  := dmPrincipal.cdsChamadoscod_cliente.AsString;
          edtNomeCliente.Text := dmPrincipal.cdsChamadosnome_cliente.AsString;
          edtCodUsuario.Text  := dmPrincipal.cdsChamadoscod_usuario_resp.AsString;
          edtNomeUsuario.Text := dmPrincipal.cdsChamadosnome_usuario_resp.AsString;
          chxFinalizado.Enabled := false;
     end;
     if dsCompromisso.State in [dsEdit] then
     begin
          chxFinalizado.Enabled := true;
          edtData.Date    := dmPrincipal.cdsCompromissosdata.AsDateTime;
          edtChamado.Text := dmPrincipal.cdsChamadoscod_chamado.AsString;
          edtHora.Text    := FormatDateTime('hh:nn',dmPrincipal.cdsCompromissoshora.AsDateTime);
          edtCodCliente.OnExit(Self);
          edtCodUsuario.OnExit(Self);
     end;
end;

procedure TfrmCadCompromisso.btnSalvarClick(Sender: TObject);
var
     cod_compromisso :Integer;
     sdata :string;
begin
     sdata := '';
     edtCodCliente.OnExit(Self);
     edtCodUsuario.OnExit(Self);
     if (edtCodCliente.Text = '') or (edtNomeCliente.Text = '') then
     begin
          ShowMessage('O c?digo do cliente n?o pode ser nulo! ');
          edtCodCliente.SetFocus;
          Abort;
     end;
     if (edtCodUsuario.Text = '') or (edtNomeUsuario.Text = '') then
     begin
          ShowMessage('O c?digo do usu?rio n?o pode ser nulo! ');
          edtCodUsuario.SetFocus;
          Abort;
     end;
     if edtData.Date = Null then
     begin
          ShowMessage('A data da visita n?o pode ser nula! ');
          edtData.SetFocus;
          Abort;
     end;
     if edtHora.Text = '  :  ' then
     begin
          ShowMessage('A hora n?o pode ser nula! ');
          edtHora.SetFocus;
          Abort;
     end;
     if edtLocal.Text = '' then
     begin
          ShowMessage('O local do compromisso n?o pode ser nulo! ');
          edtLocal.SetFocus;
          Abort;
     end;
     if dsCompromisso.State in [dsInsert] then
     begin
          sdata := FormatDateTime('yyyy/mm/dd', dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_compromisso) as codigo from compromissos_cliente where cod_chamado = '+
                                        dmPrincipal.cdsChamadoscod_chamado.AsString+' and data_chamado = '+QuotedStr(sdata));
          dmPrincipal.qryTemp.open;
          cod_compromisso := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;
          dmPrincipal.cdsCompromissoscod_compromisso.AsInteger := cod_compromisso + 1;

     end;

     dmPrincipal.cdsCompromissosdata.AsDateTime         := edtData.Date;
     dmPrincipal.cdsCompromissoshora.AsDateTime         := StrToTime(edtHora.Text);
     dmPrincipal.cdsCompromissosnome_cliente.AsString   := edtNomeCliente.Text;
     dmPrincipal.cdsCompromissosnome_usuario.AsString   := edtNomeUsuario.Text;
     dmPrincipal.cdsCompromissosnome_usuario.AsString   := edtNomeUsuario.Text;
     dmPrincipal.cdsCompromissoscod_chamado.AsString    := edtChamado.Text;
     dmPrincipal.cdsCompromissosdata_chamado.AsDateTime := dmPrincipal.cdsChamadosdata_chamado.AsDateTime;
     dmPrincipal.cdsCompromissos.Post;
     dmPrincipal.cdsCompromissos.ApplyUpdates(0);

     // Atualiza status do chamado para = 'EM COMPROMISSO' ============//
     sdata := FormatDateTime('yyyy/mm/dd', dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
     dmPrincipal.qryChamados.Close;
     dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cod_chamado = '+ dmPrincipal.cdsChamadoscod_chamado.AsString+
                                              ' and data_chamado = '+QuotedStr(sdata);
     dmPrincipal.qryChamados.open;
     dmPrincipal.cdsChamados.close;
     dmPrincipal.cdsChamados.open;
     dmPrincipal.cdsChamados.Edit;
     dmPrincipal.cdsChamadoscod_status.AsInteger := 4;
     dmPrincipal.cdsChamadosdesc_status.AsString := 'EM COMPROMISSO';
     dmPrincipal.cdsChamados.Post;
     dmPrincipal.cdsChamados.ApplyUpdates(0);

     dmPrincipal.qryMovChamado.Close;
     dmPrincipal.qryMovChamado.SQL.Text := 'select * from movimento_chamado where cod_chamado = '+ dmPrincipal.cdsChamadoscod_chamado.AsString+
                                                     ' and data_chamado = '+QuotedStr(sdata)+' order by cod_movimento desc limit 1';
     dmPrincipal.qryMovChamado.open;
     if not dmPrincipal.qryMovChamado.IsEmpty then
     begin
          dmPrincipal.cdsMovChamado.close;
          dmPrincipal.cdsMovChamado.open;
          dmPrincipal.cdsMovChamado.Edit;
          dmPrincipal.cdsMovChamadocod_status.AsInteger := 4;
          dmPrincipal.cdsMovChamadodesc_status.AsString := 'EM COMPROMISSO';
          dmPrincipal.cdsMovChamado.Post;
          dmPrincipal.cdsMovChamado.ApplyUpdates(0);
     end;

     
     //==================================================================================
     if (chxFinalizado.Checked = true) then
     begin
          if frmReportVisita <> nil then
               frmReportVisita := nil;

          frmReportVisita := TfrmReportVisita.Create(Application);
          try
          begin
               dmPrincipal.cdsReport.Close;
               dmPrincipal.cdsReport.open;
               dmPrincipal.cdsReport.Insert;
               frmReportVisita.ShowModal();
          end;
          finally
               frmReportVisita.Free();
          end;
          frmCadCompromisso := nil;

     end;
     dmPrincipal.qryCompromissos.Refresh;
     dmPrincipal.cdsCompromissos.Refresh;
     close;

end;

procedure TfrmCadCompromisso.enviaEmailCliente;
var
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i : integer;
     senha, senhainv, decrip : String;
     attach: TIdAttachment;
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

                    //===========GMAIL ==============//
                    {if provedor = 1 then //Gmail
                    begin
                         if usa_autenticacao = true then
                         begin
                              mail.IOHandler := SSLSocket;
                              SSLSocket.SSLOptions.Method := sslvSSLv23;
                              SSLSocket.SSLOptions.Mode := sslmClient;
                         end;
                    end;}
                    //========================================//
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

procedure TfrmCadCompromisso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

end.
