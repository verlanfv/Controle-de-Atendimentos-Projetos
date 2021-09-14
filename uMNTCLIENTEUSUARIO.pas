unit uMNTCLIENTEUSUARIO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Mask, ExtCtrls, DB;

type
  TfrmMntClienteUsuario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtCodCliente: TDBEdit;
    btnBuscaCliente: TSpeedButton;
    edtCod: TEdit;
    edtNomeCliente: TEdit;
    Label3: TLabel;
    edtNomeUsuario: TDBEdit;
    chxSuporte: TDBCheckBox;
    chxAbrirChamado: TDBCheckBox;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsPermissao: TDataSource;
    chxAtivo: TDBCheckBox;
    edtmail: TDBEdit;
    Label4: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBuscaClienteClick(Sender: TObject);
    procedure edtCodClienteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMntClienteUsuario: TfrmMntClienteUsuario;

implementation

uses DTMPRINCIPAL, uCONCLIENTES, uPRINCIPAL;

{$R *.dfm}

procedure TfrmMntClienteUsuario.btnCancelarClick(Sender: TObject);
begin
     if dsPermissao.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsCliente_usuario.CancelUpdates;
     Close;
end;

procedure TfrmMntClienteUsuario.FormShow(Sender: TObject);
begin
     cod_cliente_zoom := 0;
     if dsPermissao.State in [dsEdit] then
     begin
          edtCod.Text := IntToStr(dmPrincipal.cdsCliente_usuariocod_usuario.AsInteger);

          edtCodCliente.OnExit(Self);
     end;
     if dsPermissao.State in [dsInsert] then
     begin
          dmPrincipal.cdsCliente_usuariopermissao_suporte.AsString           := 'N';
          dmPrincipal.cdsCliente_usuariopermissao_abrir_chamado.AsString     := 'N';
          dmPrincipal.cdsCliente_usuarioativo.AsString                       := 'S';
     end;
end;

procedure TfrmMntClienteUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if dsPermissao.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsCliente_usuario.CancelUpdates;
end;

procedure TfrmMntClienteUsuario.btnSalvarClick(Sender: TObject);
var
     cod_usuario : Integer;
begin
     edtCodCliente.OnExit(Self);
     if (edtCodCliente.Text = '') or (edtNomeCliente.Text = '') then
     begin
          ShowMessage('O cliente não pode ser nulo! ');
          edtCodCliente.SetFocus;
          Abort;
     end;
     if (edtNomeUsuario.Text = '')  then
     begin
          ShowMessage('O usuário não pode ser nulo! ');
          edtNomeUsuario.SetFocus;
          Abort;
     end;


     if dsPermissao.State in [dsInsert] then
     begin
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_usuario) as codigo from cliente_usuario where cod_cliente = '+edtCodCliente.Text);
          dmPrincipal.qryTemp.open;
          cod_usuario := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;

          dmPrincipal.cdsCliente_usuariocod_usuario.AsInteger := cod_usuario + 1;
     end;
     dmPrincipal.cdsCliente_usuarionome_usuario.AsString := edtNomeUsuario.Text;
     dmPrincipal.cdsCliente_usuarionome_cliente.AsString := edtNomeCliente.text;

     dmPrincipal.cdsCliente_usuario.Post;
     dmPrincipal.cdsCliente_usuario.ApplyUpdates(0);

     close;
end;

procedure TfrmMntClienteUsuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN)  or
        (Key = vk_RETURN)  or
        (Key = 13)         then
          SelectNext(ActiveControl, True, True );
     if (Key = 4145)   or
        (key = VK_F2)  or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnSalvar.Click();
     if (Key = 4096)       or
        (key = VK_ESCAPE)  or
        (key = vk_ESCAPE)  or
        (Key = 27)         then
          btnCancelar.Click();
end;

procedure TfrmMntClienteUsuario.edtCodClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaCliente.Click();
end;

procedure TfrmMntClienteUsuario.btnBuscaClienteClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodCliente.enabled  = false) or
        (edtCodCliente.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConClientes <> nil then
          frmConClientes := nil;

     if (edtCodCliente.Text <> '') then
          cod_cliente_zoom := strtoint(edtCodCliente.Text);

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
          dmPrincipal.cdsCliente_usuariocod_cliente.AsString := edtCodCliente.Text;
     end;

     edtCodCliente.OnExit(Self);
     edtCodCliente.SetFocus;
end;

procedure TfrmMntClienteUsuario.edtCodClienteExit(Sender: TObject);
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

end.
