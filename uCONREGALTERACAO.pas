unit uCONREGALTERACAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, ComCtrls, IdExplicitTLSClientServerBase,
  IdSMTPBase;

type
  TfrmRegistroAlteracao = class(TForm)
    pnlBotoes: TPanel;
    btnPrimeiro: TSpeedButton;
    btnAnterior: TSpeedButton;
    btnProximo: TSpeedButton;
    btnUltimo: TSpeedButton;
    btnVisualiza: TSpeedButton;
    btnFiltro: TSpeedButton;
    btnExporta: TSpeedButton;
    btnAdiciona: TSpeedButton;
    btnAltera: TSpeedButton;
    btnExclui: TSpeedButton;
    btnSair: TSpeedButton;
    pnlOrdem: TPanel;
    edtOrdem: TEdit;
    edtIndice: TEdit;
    grdRegistro: TDBGrid;
    dsRegistros: TDataSource;
    Panel1: TPanel;
    mmoDescAlteracso: TDBMemo;
    BitBtn1: TBitBtn;
    IdEnvio: TIdSMTP;
    IdMsgEnvio: TIdMessage;
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdRegistroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure grdRegistroTitleClick(Column: TColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure grdRegistroDblClick(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private

    procedure enviaEmail;

    { Private declarations }
  public
     ordem_final : String;
     ordem_ant   : String;
     function on_change(texto, indice, ordem_final: String): Boolean;

  end;

var
  frmRegistroAlteracao: TfrmRegistroAlteracao;


implementation

uses DTMPRINCIPAL, uMNTREGALTERACAO;

{$R *.dfm}

procedure TfrmRegistroAlteracao.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsRegAlteracao.First;
end;

procedure TfrmRegistroAlteracao.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsRegAlteracao.Prior;
end;

procedure TfrmRegistroAlteracao.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsRegAlteracao.Next;
end;

procedure TfrmRegistroAlteracao.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsRegAlteracao.Last;
end;

procedure TfrmRegistroAlteracao.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir o registro selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsRegAlteracao.Delete;
          dmPrincipal.cdsRegAlteracao.ApplyUpdates(0);
     end;
end;

procedure TfrmRegistroAlteracao.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmRegistroAlteracao.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qryRegAlteracao.Close;
     dmPrincipal.qryRegAlteracao.SQL.Text := 'select * from registro_alteracao order by '+ edtIndice.Text;
     dmPrincipal.qryRegAlteracao.Open;
     dmPrincipal.cdsRegAlteracao.Close;
     dmPrincipal.cdsRegAlteracao.Open;
end;

procedure TfrmRegistroAlteracao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_ESCAPE then
          btnSair.Click();
     if(key = VK_F2) or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnAdiciona.Click();
     if btnExporta.Enabled = true then
     begin
          if(key = VK_F3) or
          (Key = vk_F3)  or
          (Key = 114 )    then
               btnExporta.Click();
     end;
     if(key = VK_F6) or
        (Key = vk_F6)  or
        (Key = 117)    then
          btnAltera.Click();
     if(key = VK_F5) or
        (Key = vk_F5)  or
        (Key = 116)    then
          btnVisualiza.Click();
end;

procedure TfrmRegistroAlteracao.grdRegistroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
     if btnAltera.Enabled then
        btnAltera.Click;
end;

procedure TfrmRegistroAlteracao.FormShow(Sender: TObject);
begin
     ActiveControl:=edtOrdem;
     dmPrincipal.qryRegAlteracao.Close;
     dmPrincipal.qryRegAlteracao.SQL.Text := 'select * from registro_alteracao order by cod_reg_alteracao';
     dmPrincipal.qryRegAlteracao.Open;
     dmPrincipal.cdsRegAlteracao.Close;
     dmPrincipal.cdsRegAlteracao.Open;
end;

function TfrmRegistroAlteracao.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
           dmPrincipal.qryRegAlteracao.Close;
           dmPrincipal.qryRegAlteracao.SQL.Text := 'select * from registro_alteracao where cast(' + indice +' as TEXT)'+
           ' like '+ '''' + texto + '''' +
           ' order by ' + ansilowercase(ordem_final);

           dmPrincipal.qryRegAlteracao.Open;

           dmPrincipal.cdsRegAlteracao.Close;
           dmPrincipal.cdsRegAlteracao.Open;
     end;
end;

procedure TfrmRegistroAlteracao.grdRegistroTitleClick(Column: TColumn);
begin
     if ordem_ant <> Column.FieldName then
     begin
          ordem_final    := Column.FieldName;
          edtIndice.Text := Column.FieldName;
          ordem_final    := '';
          dmPrincipal.qryRegAlteracao.close;
          dmPrincipal.qryRegAlteracao.SQL.Text := 'select * from registro_alteracao order by '+ edtIndice.Text;
          dmPrincipal.qryRegAlteracao.open;
          dmPrincipal.cdsRegAlteracao.close;
          dmPrincipal.cdsRegAlteracao.Open;
          edtOrdem.Clear;
          edtOrdem.setfocus;
     end;
end;

procedure TfrmRegistroAlteracao.edtOrdemChange(Sender: TObject);
var result : boolean;
begin
     if edtOrdem.Text <> '' then
     begin
          ordem_final := edtIndice.text;
          if (edtIndice.text <> '') then
               result := on_change(edtOrdem.Text,edtIndice.Text,ordem_final)
          else
               MessageDlg('Selecione a coluna do grid abaixo a qual deseja pesquisar ',
                                        mtError, [mbOk], 0);
     end;
end;

procedure TfrmRegistroAlteracao.grdRegistroDblClick(Sender: TObject);
begin
     btnAltera.Click;
end;

procedure TfrmRegistroAlteracao.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryRegAlteracao.Close;
     dmPrincipal.qryRegAlteracao.SQL.Text := 'select * from registro_alteracao where '+
                                           ' cod_reg_alteracao   ='+ '-1'+
                                           ' order by cod_reg_alteracao desc limit 1';
     dmPrincipal.qryRegAlteracao.Open;
     dmPrincipal.cdsRegAlteracao.Close;
     dmPrincipal.cdsRegAlteracao.Open;
     dmPrincipal.cdsRegAlteracao.Insert;
     if not Assigned(frmMntRegistroAlteracao) then
          frmMntRegistroAlteracao := TfrmMntRegistroAlteracao.Create(Self);
     try
          frmMntRegistroAlteracao.ShowModal;
     finally
          frmMntRegistroAlteracao.Free;
     end;
     frmMntRegistroAlteracao := nil;
     grdRegistro.SetFocus;
end;

procedure TfrmRegistroAlteracao.btnAlteraClick(Sender: TObject);
begin
     if not Assigned(frmMntRegistroAlteracao) then
          frmMntRegistroAlteracao := TfrmMntRegistroAlteracao.Create(Self);
     try
     begin
          dmPrincipal.cdsRegAlteracao.Edit;
          frmMntRegistroAlteracao.ShowModal;
     end;
     finally
          frmMntRegistroAlteracao.Free;
     end;
     frmMntRegistroAlteracao := nil;
     grdRegistro.SetFocus;
end;

procedure TfrmRegistroAlteracao.enviaEmail;
var
     conectar  : integer;
     conectado : Boolean;
     endereco_email : string;
     add_endereco   : string;
begin
     endereco_email := '';
     add_endereco   := '';
     ShowMessage('Aguarde...Enviando e-mail do registro de alteração.');
     Screen.Cursor := crHourGlass;
     dmPrincipal.qryParametros.Close;
     dmPrincipal.qryParametros.SQL.Text := 'select * from parametros_gerais order by parametro';
     dmPrincipal.qryParametros.open;
     dmPrincipal.cdsParametros.Close;
     dmPrincipal.cdsParametros.Open;
  //====== conexão ====//
     IdEnvio.Host := dmPrincipal.cdsParametrosserv_saida_email.AsString;
     IdEnvio.Username := dmPrincipal.cdsParametrosusuario_saida.AsString;
     IdEnvio.Port := StrToInt(dmPrincipal.cdsParametrosporta_serv_saida.AsString);
     IdEnvio.Password := dmPrincipal.cdsParametrossenha_saida.AsString;
     IdEnvio.AuthType := satDefault;

     if IdEnvio.Connected then
          IdEnvio.Disconnect;
     conectar := 0;
     conectado := false;
     while conectar < 10 do
     begin
          try
               IdEnvio.Connect;
               conectar := 20;
               conectado := true;
          except
               conectar := conectar + 1;
          end;
     end;

     dmPrincipal.qryUsuarios.Close;
     dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario';
     dmPrincipal.qryUsuarios.open;
     dmPrincipal.qryUsuarios.first;
     while not dmPrincipal.qryUsuarios.Eof do
     begin
          if (dmPrincipal.qryUsuariosativo.AsString = 'S') and (dmPrincipal.qryUsuariosreceber_reg_alteracao.AsString = 'S')  then
          begin
               endereco_email := dmPrincipal.qryUsuariosmail.AsString;
               add_endereco := endereco_email + '; '+ add_endereco;
          end;
          dmPrincipal.qryUsuarios.Next;
     end;
          IdMsgEnvio.Recipients.EMailAddresses := add_endereco;

     if conectado = false then
     begin
          ShowMessage('Não foi possível conectar ao provedor de e-mail !'+#13+
                     'Por favor, envie e-mail manualmente para: ');
          Exit;
     end;

     try

     IdMsgEnvio.Subject   := 'Oracullos - Registro de Alterações';
     IdMsgEnvio.Body.Text := '      Data Alteração: '+FormatDateTime('dd/mm/yyyy', dmPrincipal.cdsRegAlteracaodata_alteracao.AsDateTime)+ #13 +
                             '    Nome do Programa: '+dmPrincipal.cdsRegAlteracaodesc_programa.AsString+ #13 +
                             '      Nome do Módulo: '+dmPrincipal.cdsRegAlteracaodesc_modulo_sistema.AsString+ #10+#13 +
                             ' DESCRIÇÃO ALTERAÇÃO: '+#13+
                             dmPrincipal.cdsRegAlteracaodesc_alteracao.AsString;


     IdMsgEnvio.From.Address          := dmPrincipal.cdsParametrosemail_envio.AsString;

     Application.ProcessMessages;
     try
          IdEnvio.Send(IdMsgEnvio);
     except
          begin
               ShowMessage('Não foi possível efetuar o envio do e-mail.'+#13+
                           'Por favor, envie e-mail manualmente.');
               Exit;
          end;
     end;
     ShowMessage('E-mail enviado com sucesso !!');
  finally
     begin
          IdEnvio.Disconnect;
          Screen.Cursor := crDefault;
     end;
  end;
end;


procedure TfrmRegistroAlteracao.BitBtn1Click(Sender: TObject);
begin
     enviaEmail;
end;

end.
