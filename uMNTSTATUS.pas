unit uMNTSTATUS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ComCtrls, Buttons, DB;

type
  TfrmStatus = class(TForm)
    PageControl1: TPageControl;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;                                                                             
    TabSheet1: TTabSheet;
    Label1: TLabel;
    edtCodStatus: TEdit;
    Label2: TLabel;
    edtStatus: TDBEdit;
    chxEncerraChamado: TDBCheckBox;
    dsStatus: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatus: TfrmStatus;

implementation

uses DTMPRINCIPAL;

{$R *.dfm}



procedure TfrmStatus.FormShow(Sender: TObject);
begin
     if dsStatus.State in [dsInsert] then
          dmPrincipal.cdsStatusencerra_chamado.AsString := 'N';
     if dsStatus.State in [dsEdit] then
          edtCodStatus.Text := IntToStr(dmPrincipal.cdsStatuscod_status.AsInteger);

end;

procedure TfrmStatus.btnCancelarClick(Sender: TObject);
begin
     if dsStatus.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsStatus.CancelUpdates;
     Close;
end;

procedure TfrmStatus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if dsStatus.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsStatus.CancelUpdates;
end;

procedure TfrmStatus.btnSalvarClick(Sender: TObject);
var
     cod_status :Integer;
begin
     if edtStatus.Text = '' then
     begin
          ShowMessage('A descrição do status não pode ser nulo! ');
          edtStatus.SetFocus;
          Abort;
     end;
     if dsStatus.State in [dsInsert] then
     begin
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_status) as codigo from status_chamado');
          dmPrincipal.qryTemp.open;
          cod_status := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;

          dmPrincipal.cdsStatuscod_status.AsInteger := cod_status + 1;
     end;
     dmPrincipal.cdsStatus.Post;
     dmPrincipal.cdsStatus.ApplyUpdates(0);

     close;

end;

procedure TfrmStatus.FormKeyDown(Sender: TObject; var Key: Word;
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
