unit EMAIL_MOVIMENTACAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdAttachment,
  IdExplicitTLSClientServerBase, IdSMTPBase;

type
  TfrmInfoEmailMov = class(TForm)
    Label1: TLabel;
    mmoInfoMovimentacao: TMemo;
    edtCaminho: TEdit;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    btnIncluir: TBitBtn;
    IdEnvioCli: TIdSMTP;
    IdMsg: TIdMessage;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure mmoInfoMovimentacaoKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
  private
    procedure enviaEmailAcompanhamentoMov;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInfoEmailMov: TfrmInfoEmailMov;
  Info_Movimentacao  : String;
  sArq               : string;


implementation

uses DTMPRINCIPAL, uPRINCIPAL, uLOGIN, DB;

{$R *.dfm}

procedure TfrmInfoEmailMov.FormShow(Sender: TObject);
begin
     mmoInfoMovimentacao.Text := '';
     edtCaminho.Text          := '';
end;

procedure TfrmInfoEmailMov.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Key = 4145)   or
        (key = VK_F2) or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnIncluir.Click();
end;

procedure TfrmInfoEmailMov.BitBtn1Click(Sender: TObject);
begin
     if OpenDialog1.Execute then
     begin
          edtCaminho.Text := OpenDialog1.FileName;
          sArq := OpenDialog1.FileName;
     end;
end;

procedure TfrmInfoEmailMov.btnIncluirClick(Sender: TObject);
begin
     sArq              := '';
     Info_Movimentacao := '';

     Info_Movimentacao  := mmoInfoMovimentacao.Text;
     if mmoInfoMovimentacao.Text = '' then
     begin
          ShowMessage('Informe a descri??o da movimenta??o!');
          mmoInfoMovimentacao.SetFocus;
          Abort();
     end;

     sArq := edtCaminho.Text;
     if (sArq <> '') and (not FileExists(sArq)) then
     begin
          ShowMessage('O arquivo n?o existe. Favor verifique!!');
          edtCaminho.SetFocus;
          Abort();
     end;

     dmPrincipal.qryMovChamado.Close;
     dmPrincipal.qryMovChamado.SQL.Text := 'select * from movimento_chamado where cod_chamado = '+IntToStr(dmPrincipal.cdsMovChamadocod_chamado.AsInteger)+
                                         ' and data_chamado = '+QuotedStr(FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsMovChamadodata_chamado.AsDateTime))+
                                         ' and cod_movimento = '+dmPrincipal.cdsMovChamadocod_movimento.AsString;
     dmPrincipal.qryMovChamado.open;
     dmPrincipal.cdsMovChamado.close;
     dmPrincipal.cdsMovChamado.open;
     if not dmPrincipal.cdsMovChamado.IsEmpty then
     begin
          dmPrincipal.cdsMovChamado.Edit;
          dmPrincipal.cdsMovChamadoemail_movimentacao.AsString   := Info_Movimentacao;

          dmPrincipal.cdsMovChamado.Post;
          dmPrincipal.cdsMovChamado.ApplyUpdates(0);
     end;

     enviaEmailAcompanhamentoMov;

     Close;
end;

procedure TfrmInfoEmailMov.mmoInfoMovimentacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     //if (Key = #13) then
          //key := #0;
end;

procedure TfrmInfoEmailMov.enviaEmailAcompanhamentoMov;
var
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i          : integer;
     senha, senhainv, decrip, corpo_email : String;
     attach : TIdAttachment;
begin
     corpo_email := '';

     ShowMessage('Aguarde...Enviando e-mail de acompanhamento da movimenta??o!');
     Screen.Cursor := crHourGlass;
     sprotocolo    := '';
     dmPrincipal.qryUsuarios.Close;
     dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
     dmPrincipal.qryUsuarios.open;
     if dmPrincipal.qryUsuarios.Locate('cod_usuario',cod_usuario_login,[]) then
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
          IdMsg.Recipients.EMailAddresses := dmPrincipal.qryClientesmail.AsString+';'+dmPrincipal.cdsChamadosemail_solicitante.AsString+';'+
                                             dmPrincipal.cdsChamadosemail_solicitante_outro.AsString;

     if conectado = false then
     begin
          ShowMessage('N?o foi poss?vel conectar ao provedor de e-mail !');

          Exit;
     end;

     try
          // percorrer dados de movimento, montar corpo de email, com todas as movimenta??es
          dmPrincipal.qryMovChamado.Close;
          dmPrincipal.qryMovChamado.SQL.Text := 'select * from movimento_chamado where cod_chamado = '+IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger)+
                                         ' and data_chamado = '+QuotedStr(FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime))+
                                         ' order by cod_movimento desc';

          dmPrincipal.qryMovChamado.open;
          dmPrincipal.cdsMovChamado.close;
          dmPrincipal.cdsMovChamado.open;
          while not dmPrincipal.cdsMovChamado.Eof do
          begin
               if dmPrincipal.cdsMovChamadoenvia_email.AsString = 'S' then
               begin
                    corpo_email := corpo_email + 'Atendente : '+dmPrincipal.cdsMovChamadonome_usuario_mov.AsString+#13+
                                                 'Data In?cio: '+(FormatDateTime('dd/mm/yyyy',dmPrincipal.cdsMovChamadodata_movimento.AsDateTime))+'   Hora In?co: '+(FormatDateTime('hh:mm',dmPrincipal.cdsMovChamadohora_inic.AsDateTime))+#13+
                                                 'Data Fim: '+(FormatDateTime('dd/mm/yyyy',dmPrincipal.cdsMovChamadodata_fim.AsDateTime))+'        Hora Fim: '+(FormatDateTime('hh:mm',dmPrincipal.cdsMovChamadohora_fim.AsDateTime))+#13+
                                                 dmPrincipal.cdsMovChamadocod_movimento.AsString+'- Movimenta??o Efetuada: '+dmPrincipal.cdsMovChamadoemail_movimentacao.AsString+#13+
                                                 '--------------------------------------------------------------------------------------'+#13+#13;
               end;
               dmPrincipal.cdsMovChamado.Next;
          end;

          sprotocolo := FormatDateTime('yyyymmdd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
          IdMsg.Subject := 'Or?cullos - Acompanhamento de Movimenta??es ['+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+']';
          IdMsg.Body.Text := '[Or?cullos - Mensagem Autom?tica]'+#13+#13+
                             'Caro Cliente: '+dmPrincipal.cdsChamadosnome_cliente.AsString+'.'+#13+
                             'Informamos a movimenta??o referente ao chamado de N? ['+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+'].'+#13+#13+
                             corpo_email+
                             'Solicita??o do Chamado: '+dmPrincipal.cdsChamadossolicitacao.AsString;

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

end;

procedure TfrmInfoEmailMov.btnCancelarClick(Sender: TObject);
begin
     close;
end;

end.
