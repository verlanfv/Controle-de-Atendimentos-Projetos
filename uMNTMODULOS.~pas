unit uMNTMODULOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Mask, DBCtrls, StdCtrls, ComCtrls, DB;

type
  TfrmCadModulo = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    edtCodModulo: TEdit;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    edtModulo: TDBEdit;
    dsModulo: TDataSource;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadModulo: TfrmCadModulo;

implementation

uses DTMPRINCIPAL;

{$R *.dfm}

procedure TfrmCadModulo.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCadModulo.FormShow(Sender: TObject);
begin
     if dsModulo.State in [dsEdit] then
          edtCodModulo.Text := IntToStr(dmPrincipal.cdsModulocod_modulo.AsInteger);
end;

procedure TfrmCadModulo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if dsModulo.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsModulo.CancelUpdates;
end;

procedure TfrmCadModulo.btnCancelarClick(Sender: TObject);
begin
     if dsModulo.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsModulo.CancelUpdates;
     Close;
end;

procedure TfrmCadModulo.btnSalvarClick(Sender: TObject);
var
     cod_modulo :Integer;
begin
     if edtModulo.Text = '' then
     begin
          ShowMessage('A descrição do módulo não pode ser nula! ');
          edtModulo.SetFocus;
          Abort;
     end;
     if dsModulo.State in [dsInsert] then
     begin
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_modulo) as codigo from modulos_atendimento');
          dmPrincipal.qryTemp.open;
          cod_modulo := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;

          dmPrincipal.cdsModulocod_modulo.AsInteger := cod_modulo + 1;
     end;
     dmPrincipal.cdsModulo.Post;
     dmPrincipal.cdsModulo.ApplyUpdates(0);

     close;
end;

end.
