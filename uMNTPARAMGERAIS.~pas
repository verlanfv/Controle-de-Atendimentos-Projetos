unit uMNTPARAMGERAIS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, DBCtrls, DB, Buttons;

type
  TfrmCadParametros = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    edtUsuario: TDBEdit;
    edtSenha: TMaskEdit;
    edtEmailEntrada: TDBEdit;
    edtPortaPOP3: TDBEdit;
    GroupBox2: TGroupBox;
    dsParametros: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cbxPrioridade: TComboBox;
    Label8: TLabel;
    cbxOrigem: TComboBox;
    Label9: TLabel;
    edtCodCliente: TDBEdit;
    edtCliente: TEdit;
    edtCodCategoria: TDBEdit;
    edtCategoria: TEdit;
    edtCodStatus: TDBEdit;
    edtStatus: TEdit;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnBuscacliente: TSpeedButton;
    btnBuscaCat: TSpeedButton;
    btnBuscaStatus: TSpeedButton;
    Label10: TLabel;
    edtUltChamado: TDBEdit;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edtUsuarioSaida: TDBEdit;
    edtSenhaSaida: TMaskEdit;
    edtEmailSaida: TDBEdit;
    edtPortaSMTP: TDBEdit;
    edtEmail: TDBEdit;
    Label17: TLabel;
    edtCobranca: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodClienteExit(Sender: TObject);
    procedure edtCodCategoriaExit(Sender: TObject);
    procedure edtCodStatusExit(Sender: TObject);
    procedure btnBuscaclienteClick(Sender: TObject);
    procedure btnBuscaCatClick(Sender: TObject);
    procedure btnBuscaStatusClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtCodClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodCategoriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodStatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadParametros: TfrmCadParametros;

implementation

uses DTMPRINCIPAL, uPRINCIPAL, uCONSTATUS, uCONCATEGORIA, uCONCLIENTES;

{$R *.dfm}

procedure TfrmCadParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if dsParametros.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsParametros.CancelUpdates;
end;

procedure TfrmCadParametros.btnCancelarClick(Sender: TObject);
begin
     if dsParametros.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsParametros.CancelUpdates;
     Close;
end;

procedure TfrmCadParametros.FormShow(Sender: TObject);
begin
     if dsParametros.State in [dsEdit] then
     begin
          edtSenha.Text      := dmPrincipal.cdsParametrossenha.AsString;
          edtSenhaSaida.text := dmPrincipal.cdsParametrossenha_saida.AsString;
          cbxOrigem.Text     := dmPrincipal.cdsParametrosorigem_chamado.AsString;
          if dmPrincipal.cdsParametrosprioridade.AsString = '1' then
               cbxPrioridade.ItemIndex := 0
          else
          if dmPrincipal.cdsParametrosprioridade.AsString = '2' then
               cbxPrioridade.ItemIndex := 1
          else
          if dmPrincipal.cdsParametrosprioridade.AsString = '3' then
               cbxPrioridade.ItemIndex := 2;

          edtCodCliente.OnExit(Self);
          edtCodCategoria.OnExit(Self);
          edtCodStatus.OnExit(Self);
     end;
end;

procedure TfrmCadParametros.edtCodClienteExit(Sender: TObject);
begin
     if (edtCodCliente.Text <> '')  and
        (edtCodCliente.Text <> '0') then
     begin
          dmPrincipal.qryClientes.Close();
          dmPrincipal.qryClientes.sql.text := 'select * from cliente order by cod_cliente';
          dmPrincipal.qryClientes.Open();
          if dmPrincipal.qryClientes.Locate('cod_cliente',edtCodCliente.Text,[]) then
               edtCliente.Text  := dmPrincipal.qryClientesnome_cliente.AsString
          else
               edtCliente.Text := '';
     end
     else
          edtCliente.Text := '';
end;

procedure TfrmCadParametros.edtCodCategoriaExit(Sender: TObject);
begin
     if (edtCodCategoria.Text <> '')  and
        (edtCodCategoria.Text <> '0') then
     begin
          dmPrincipal.qryCategoria.Close();
          dmPrincipal.qryCategoria.sql.text := 'select * from categoria_chamado order by cod_categoria';
          dmPrincipal.qryCategoria.Open();
          if dmPrincipal.qryCategoria.Locate('cod_categoria',edtCodCategoria.Text,[]) then
               edtCategoria.Text  := dmPrincipal.qryCategoriadescricao_categoria.AsString
          else
               edtCategoria.Text := '';
     end
     else
          edtCategoria.Text := '';
end;

procedure TfrmCadParametros.edtCodStatusExit(Sender: TObject);
begin
     if (edtCodStatus.Text <> '')  and
        (edtCodStatus.Text <> '0') then
     begin
          dmPrincipal.qryStatus.Close();
          dmPrincipal.qryStatus.sql.text := 'select * from status_chamado order by cod_status';
          dmPrincipal.qryStatus.Open();
          if dmPrincipal.qryStatus.Locate('cod_status',edtCodStatus.Text,[]) then
               edtStatus.Text  := dmPrincipal.qryStatusdescricao_status.AsString
          else
               edtStatus.Text := '';
     end
     else
          edtStatus.Text := '';
end;

procedure TfrmCadParametros.btnBuscaclienteClick(Sender: TObject);
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
          dmPrincipal.cdsParametroscod_cli_padrao.AsString := edtCodCliente.Text;
     end;

     edtCodCliente.OnExit(Self);
     edtCodCliente.SetFocus;
end;

procedure TfrmCadParametros.btnBuscaCatClick(Sender: TObject);
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
          dmPrincipal.cdsParametroscod_categoria_padrao.AsString := edtCodCategoria.Text;
     end;

     edtCodCategoria.OnExit(Self);
     edtCodCategoria.SetFocus;
end;

procedure TfrmCadParametros.btnBuscaStatusClick(Sender: TObject);
begin
     if (edtCodStatus.enabled  = false) or
        (edtCodStatus.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConStatus <> nil then
          frmConStatus := nil;

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
          dmPrincipal.cdsParametroscod_status_padrao.AsString := edtCodStatus.Text;
     end;

     edtCodStatus.OnExit(Self);
     edtCodStatus.SetFocus;
end;

procedure TfrmCadParametros.btnSalvarClick(Sender: TObject);
var
     cod_parametro :Integer;
begin
     edtCodCliente.OnExit(Self);
     edtCodCategoria.OnExit(Self);
     edtCodStatus.OnExit(Self);
     if edtUsuario.text = '' then
     begin
          ShowMessage('O usuário não pode ser nulo! ');
          edtUsuario.SetFocus;
          Abort;
     end;
     if edtSenha.text = '' then
     begin
          ShowMessage('A senha não pode ser nulo! ');
          edtSenha.SetFocus;
          Abort;
     end;
     if edtEmailEntrada.text = '' then
     begin
          ShowMessage('O servidor de entrada de email não pode ser nulo! ');
          edtEmailEntrada.SetFocus;
          Abort;
     end;
     if edtPortaPOP3.text = '' then
     begin
          ShowMessage('A porta do servidor de entrada de email não pode ser nula! ');
          edtPortaPOP3.SetFocus;
          Abort;
     end;
     
     if (edtCodCliente.Text = '') or (edtCliente.Text = '') then
     begin
          ShowMessage('O cliente não pode ser nulo! ');
          edtCodCliente.SetFocus;
          Abort;
     end;
     if (edtCodCategoria.Text = '') or (edtCategoria.text = '') then
     begin
          ShowMessage('A categoria não pode ser nula! ');
          edtCodCategoria.SetFocus;
          Abort;
     end;
     if (edtCodStatus.Text = '') or (edtStatus.Text = '') then
     begin
          ShowMessage('O status não pode ser nulo! ');
          edtCodStatus.SetFocus;
          Abort;
     end;

     if cbxPrioridade.Text = '' then
     begin
          ShowMessage('A prioridade não pode ser nulo! ');
          cbxPrioridade.SetFocus;
          Abort;
     end;

     if cbxOrigem.Text = '' then
     begin
          ShowMessage('A origem não pode ser nula !');
          cbxOrigem.SetFocus;
          Abort;
     end;

     if edtCobranca.Text = '' then
     begin
          ShowMessage('O email para recebimento de notificação de cobrança não pode ser nulo !');
          edtCobranca.SetFocus;
          Abort;
     end;
     
     if dsParametros.State in [dsInsert] then
     begin
          dmPrincipal.cdsParametrosano_chamado.AsString := FormatDateTime('yyyy',Date);
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(parametro) as codigo from parametros_gerais');
          dmPrincipal.qryTemp.open;
          cod_parametro := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;
          cod_parametro := cod_parametro + 1;
          if cod_parametro = 1 then
               dmPrincipal.cdsParametrosparametro.AsInteger := cod_parametro
          else
          begin
               ShowMessage('Impossível realizar o cadastro.'+#13+'Já existem parâmetros cadastrados para o sitema!!');
               btnCancelar.OnClick(Self);
               Abort;
          end;

     end;
     dmPrincipal.cdsParametrosnome_cli_padrao.AsString       := edtCliente.Text;
     dmPrincipal.cdsParametrosdesc_categoria_padrao.AsString := edtCategoria.Text;
     dmPrincipal.cdsParametrosdesc_status_padrao.AsString    := edtStatus.Text;
     dmPrincipal.cdsParametrossenha.AsString                 := edtSenha.Text;
     dmPrincipal.cdsParametrossenha_saida.AsString           := edtSenhaSaida.Text;
     dmPrincipal.cdsParametrosorigem_chamado.AsString        := cbxOrigem.text;

     if cbxPrioridade.ItemIndex = 0 then
          dmPrincipal.cdsParametrosprioridade.AsString := '1'
     else
     if cbxPrioridade.ItemIndex = 1 then
          dmPrincipal.cdsParametrosprioridade.AsString := '2'
     else
     if cbxPrioridade.ItemIndex = 2 then
          dmPrincipal.cdsParametrosprioridade.AsString := '3';

     dmPrincipal.cdsParametros.Post;
     dmPrincipal.cdsParametros.ApplyUpdates(0);

     close;

end;

procedure TfrmCadParametros.edtCodClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscacliente.Click();
end;

procedure TfrmCadParametros.edtCodCategoriaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaCat.Click();
end;

procedure TfrmCadParametros.edtCodStatusKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaStatus.Click();
end;

procedure TfrmCadParametros.FormKeyDown(Sender: TObject; var Key: Word;
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
