unit uMNTPESQUISA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, Mask, ExtCtrls, DB, Buttons,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit;

type
  TfrmCadPesquisa = class(TForm)
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    Label1: TLabel;
    cbxAtivo: TDBCheckBox;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsCliente: TDataSource;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure mmoObservacaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPesquisa: TfrmCadPesquisa;

implementation


uses DTMPRINCIPAL, uMAIL;

{$R *.dfm}

procedure TfrmCadPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if dsCliente.State in [dsInsert,dsEdit] then
          dmPrincipal.cdscliente_perguntas_pesquisa.CancelUpdates;

end;

procedure TfrmCadPesquisa.btnCancelarClick(Sender: TObject);
begin
     if dsCliente.State in [dsInsert,dsEdit] then
          dmPrincipal.cdscliente_perguntas_pesquisa.CancelUpdates;

     Close;
end;

procedure TfrmCadPesquisa.btnSalvarClick(Sender: TObject);
var
     cod_cliente :Integer;
begin
     if DBMemo1.Text = '' then
     begin
          ShowMessage('Informe a descrição do item !');
          PageControl1.ActivePageIndex :=0;
          DBMemo1.SetFocus;
          Abort;
     end;
     dmPrincipal.cdscliente_perguntas_pesquisa.Post;
     dmPrincipal.cdscliente_perguntas_pesquisa.ApplyUpdates(0);


     close;

end;

procedure TfrmCadPesquisa.mmoObservacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=Upcase(key);
     if (Key = #13) then
          key := #0;
end;

procedure TfrmCadPesquisa.FormCreate(Sender: TObject);
begin
     tsGeral.Show;
end;

procedure TfrmCadPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCadPesquisa.DBMemo1Enter(Sender: TObject);
begin
     KeyPreview := false;
end;

procedure TfrmCadPesquisa.DBMemo1Exit(Sender: TObject);
begin
     KeyPreview := True;
end;

procedure TfrmCadPesquisa.FormShow(Sender: TObject);
begin
     if dmPrincipal.cdscliente_perguntas_pesquisa.state in [dsinsert] then
          DBEdit1.setfocus
     else
     begin
          DBEdit1.enabled := false;
          cbxAtivo.setfocus;
     end;
end;

end.
