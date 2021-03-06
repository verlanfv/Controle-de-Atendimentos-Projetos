unit uMNTAREA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, Buttons, ComCtrls, DB;

type
  TfrmCadArea = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    edtCodArea: TEdit;
    edtArea: TDBEdit;
    dsMNTArea: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadArea: TfrmCadArea;

implementation

uses DTMPRINCIPAL;

{$R *.dfm}

procedure TfrmCadArea.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if dsMNTArea.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsArea.CancelUpdates;

end;

procedure TfrmCadArea.btnCancelarClick(Sender: TObject);
begin
     if dsMNTArea.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsArea.CancelUpdates;
     Close;
end;


procedure TfrmCadArea.btnSalvarClick(Sender: TObject);
var
     cod_area :Integer;
begin
     if edtArea.Text = '' then
     begin
          ShowMessage('A descri??o da ?rea n?o pode ser nula! ');
          edtArea.SetFocus;
          Abort;
     end;
     if dsMNTArea.State in [dsInsert] then
     begin
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_area) as codigo from area_usuario');
          dmPrincipal.qryTemp.open;
          cod_area := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;

          dmPrincipal.cdsAreacod_area.AsInteger := cod_area + 1;
     end;
     dmPrincipal.cdsArea.Post;
     dmPrincipal.cdsArea.ApplyUpdates(0);

     close;
end;

procedure TfrmCadArea.FormShow(Sender: TObject);
begin
     if dsMNTArea.State in [dsEdit] then
          edtCodArea.Text := IntToStr(dmPrincipal.cdsAreacod_area.AsInteger);
end;

procedure TfrmCadArea.FormKeyDown(Sender: TObject; var Key: Word;
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
