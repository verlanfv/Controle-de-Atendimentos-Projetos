unit uMNTDESENVOLVIMENTO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, Mask, DB, Buttons;

type
  TfrmConDesenvolvimento = class(TForm)
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    edtCodDesenv: TEdit;
    dsRegistro: TDataSource;
    Label2: TLabel;
    edtCodCliente: TDBEdit;
    edtNomeCliente: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtData: TDateTimePicker;
    mmoDescAlteracao: TDBMemo;
    Label7: TLabel;
    edtBuscarCli: TSpeedButton;
    edtNomeUser: TEdit;
    Label1: TLabel;
    edtTempo: TDBEdit;
    edtCodTela: TDBEdit;
    edtNomeTela: TEdit;
    btnbuscarTela: TSpeedButton;
    edtCodCategoria: TDBEdit;
    edtNomeCategoria: TEdit;
    btnbuscarCategoria: TSpeedButton;
    edtUsuario: TEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtCodClienteExit(Sender: TObject);
    procedure edtCodClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBuscarCliClick(Sender: TObject);
    procedure mmoDescAlteracaoExit(Sender: TObject);
    procedure mmoDescAlteracaoEnter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConDesenvolvimento: TfrmConDesenvolvimento;

implementation

uses DTMPRINCIPAL, uPRINCIPAL, uUSUARIOS, uLOGIN, uCONCLIENTES;

{$R *.dfm}

procedure TfrmConDesenvolvimento.btnCancelarClick(Sender: TObject);
begin
     if dsRegistro.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsDesenv.CancelUpdates;
     Close;
end;

procedure TfrmConDesenvolvimento.FormShow(Sender: TObject);
begin
     if dsRegistro.State in [dsInsert] then
     begin
          edtData.Date := Date;
          edtUsuario.Text  := IntToStr(cod_usuario_login);
          edtNomeUser.Text := nome_usuario_login;
     end;


     if dsRegistro.State in [dsEdit] then
     begin
          edtUsuario.Text  := IntToStr(cod_usuario_login);
          edtNomeUser.Text := nome_usuario_login;
          edtCodDesenv.Text := IntToStr(dmPrincipal.cdsDesenvcod_desenvolvimento.AsInteger);
          edtData.Date := dmPrincipal.cdsRegAlteracaodata_alteracao.AsDateTime;
     end;
     edtCodCliente.OnExit(Self);
     edtCodTela.OnExit(Self);
     edtCodCategoria.OnExit(Self);
end;

procedure TfrmConDesenvolvimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if dsRegistro.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsRegAlteracao.CancelUpdates;
end;

procedure TfrmConDesenvolvimento.FormKeyDown(Sender: TObject;
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

procedure TfrmConDesenvolvimento.btnSalvarClick(Sender: TObject);
var
     cod_registro :Integer;
begin

     edtCodCliente.OnExit(Self);
     edtCodTela.OnExit(Self);
     edtCodCategoria.OnExit(Self);

     if edtNomeCliente.Text = '' then
     begin
          ShowMessage('Cliente inválido. Verifique o cliente informado! ');
          edtCodCliente.SetFocus;
          Abort;
     end;

     if edtNomeTela.Text = '' then
     begin
          ShowMessage('Tela inválida. Verifique a tela informada! ');
          edtCodTela.SetFocus;
          Abort;
     end;

     if edtNomeCategoria.Text = '' then
     begin
          ShowMessage('Categoria inválida. Verifique a categoria informada! ');
          edtCodCategoria.SetFocus;
          Abort;
     end;

     if edtTempo.Text = '' then
     begin
          ShowMessage('A tempo gasto não pode ser nulo! ');
          edtTempo.SetFocus;
          Abort;
     end;


     if mmoDescAlteracao.Text = '' then
     begin
          ShowMessage('A descrição da alteração nao pode ser nula! ');
          mmoDescAlteracao.SetFocus;
          Abort;
     end;


     if dsRegistro.State in [dsInsert] then
     begin
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_desenvolvimento) as codigo from desenvolvimento');
          dmPrincipal.qryTemp.open;
          cod_registro := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;

          dmPrincipal.cdsDesenvcod_desenvolvimento.AsInteger := cod_registro + 1;
     end;

     dmPrincipal.cdsDesenvcod_usuario.AsString  := edtUsuario.Text;
     dmPrincipal.cdsRegAlteracaodata_alteracao.AsDateTime := edtData.Date;


     dmPrincipal.cdsRegAlteracao.Post;
     dmPrincipal.cdsRegAlteracao.ApplyUpdates(0);

     close;
end;

procedure TfrmConDesenvolvimento.edtCodClienteExit(Sender: TObject);
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

procedure TfrmConDesenvolvimento.edtCodClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then

end;


procedure TfrmConDesenvolvimento.edtBuscarCliClick(Sender: TObject);
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
          dmPrincipal.cdsDesenvcod_cliente.AsString := edtCodCliente.Text;
     end;

     edtCodCliente.OnExit(Self);
     edtCodCliente.SetFocus;

end;

procedure TfrmConDesenvolvimento.mmoDescAlteracaoExit(Sender: TObject);
begin
     KeyPreview := true;
end;

procedure TfrmConDesenvolvimento.mmoDescAlteracaoEnter(Sender: TObject);
begin
     KeyPreview := false;
end;

end.
