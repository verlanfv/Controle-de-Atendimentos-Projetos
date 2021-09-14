unit uMNTREGALTERACAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, Mask, DB, Buttons;

type
  TfrmMntRegistroAlteracao = class(TForm)
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    edtCodRegistro: TEdit;
    dsRegistro: TDataSource;
    Label2: TLabel;
    edtCodResp: TDBEdit;
    edtNomeResp: TEdit;
    Label3: TLabel;
    edtDescPrograma: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtDescTela: TDBEdit;
    Label6: TLabel;
    edtData: TDateTimePicker;
    mmoDescAlteracao: TDBMemo;
    Label7: TLabel;
    edtModulo: TDBEdit;
    edtBuscarUser: TSpeedButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtCodRespExit(Sender: TObject);
    procedure edtCodRespKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBuscarUserClick(Sender: TObject);
    procedure mmoDescAlteracaoExit(Sender: TObject);
    procedure mmoDescAlteracaoEnter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMntRegistroAlteracao: TfrmMntRegistroAlteracao;

implementation

uses DTMPRINCIPAL, uPRINCIPAL, uUSUARIOS, uLOGIN;

{$R *.dfm}

procedure TfrmMntRegistroAlteracao.btnCancelarClick(Sender: TObject);
begin
     if dsRegistro.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsRegAlteracao.CancelUpdates;
     Close;
end;

procedure TfrmMntRegistroAlteracao.FormShow(Sender: TObject);
begin
     if dsRegistro.State in [dsInsert] then
     begin
          edtData.Date := Date;
          dmPrincipal.cdsRegAlteracaocod_responsavel.AsInteger := cod_usuario_login;
          edtNomeResp.Text := nome_usuario_login;
     end;


     if dsRegistro.State in [dsEdit] then
     begin
          edtCodRegistro.Text := IntToStr(dmPrincipal.cdsRegAlteracaocod_reg_alteracao.AsInteger);
          edtData.Date := dmPrincipal.cdsRegAlteracaodata_alteracao.AsDateTime;
     end;
     edtCodResp.OnExit(Self);
end;

procedure TfrmMntRegistroAlteracao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if dsRegistro.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsRegAlteracao.CancelUpdates;
end;

procedure TfrmMntRegistroAlteracao.FormKeyDown(Sender: TObject;
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

procedure TfrmMntRegistroAlteracao.btnSalvarClick(Sender: TObject);
var
     cod_registro :Integer;
begin

     edtCodResp.OnExit(Self);

     if edtNomeResp.Text = '' then
     begin
          ShowMessage('Usuário inválido. Verifique o usuário responsável! ');
          edtNomeResp.SetFocus;
          Abort;
     end;

     if edtDescPrograma.Text = '' then
     begin
          ShowMessage('A descrição do programa nao pode ser nula! ');
          edtDescPrograma.SetFocus;
          Abort;
     end;

     if edtModulo.Text = '' then
     begin
          ShowMessage('A descrição do módulo nao pode ser nula! ');
          edtModulo.SetFocus;
          Abort;
     end;

     if edtDescTela.Text = '' then
     begin
          ShowMessage('A descrição da tela nao pode ser nula! ');
          edtDescTela.SetFocus;
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
          dmPrincipal.qryTemp.SQL.Add('select max(cod_reg_alteracao) as codigo from registro_alteracao');
          dmPrincipal.qryTemp.open;
          cod_registro := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;

          dmPrincipal.cdsRegAlteracaocod_reg_alteracao.AsInteger := cod_registro + 1;
     end;

     dmPrincipal.cdsRegAlteracaonome_responsavel.AsString := edtNomeResp.Text;
     dmPrincipal.cdsRegAlteracaodata_alteracao.AsDateTime := edtData.Date;


     dmPrincipal.cdsRegAlteracao.Post;
     dmPrincipal.cdsRegAlteracao.ApplyUpdates(0);

     close;
end;

procedure TfrmMntRegistroAlteracao.edtCodRespExit(Sender: TObject);
begin
     if (edtCodResp.Text <> '')  and
        (edtCodResp.Text <> '0') then
     begin
          dmPrincipal.qryUsuarios.Close();
          dmPrincipal.qryUsuarios.sql.text := 'select * from usuario order by cod_usuario';
          dmPrincipal.qryUsuarios.Open();
          if dmPrincipal.qryUsuarios.Locate('cod_usuario',edtCodResp.Text,[]) then
               edtNomeResp.Text  := dmPrincipal.qryUsuariosnome_usuario.AsString
          else
               edtNomeResp.Text := '';
     end
     else
          edtNomeResp.Text := '';
end;

procedure TfrmMntRegistroAlteracao.edtCodRespKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then

end;


procedure TfrmMntRegistroAlteracao.edtBuscarUserClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodResp.enabled  = false) or
        (edtCodResp.readonly = true)  then
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
          edtCodResp.Text := dmPrincipal.cdsUsuariocod_usuario.AsString;
          dmPrincipal.cdsRegAlteracaocod_responsavel.AsString := edtCodResp.Text;
     end;

     edtCodResp.OnExit(Self);
     edtCodResp.SetFocus;

end;

procedure TfrmMntRegistroAlteracao.mmoDescAlteracaoExit(Sender: TObject);
begin
     KeyPreview := true;
end;

procedure TfrmMntRegistroAlteracao.mmoDescAlteracaoEnter(Sender: TObject);
begin
     KeyPreview := false;
end;

end.
