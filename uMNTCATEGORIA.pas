unit uMNTCATEGORIA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ImgList, Mask, DBCtrls, Buttons, DB,
  ExtCtrls;

type
  TfrmCadCategoria = class(TForm)
    PageControl1: TPageControl;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    edtCodCategoria: TEdit;
    Label2: TLabel;
    edtNomeCategoria: TDBEdit;
    dsCategoria: TDataSource;
    chxEnvia_email: TDBCheckBox;
    Label3: TLabel;
    rdAtendimentos: TRadioButton;
    rdProjetos: TRadioButton;
    Panel1: TPanel;
    rdProcesso: TRadioButton;
    DBCheckBox1: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCategoria: TfrmCadCategoria;

implementation

uses DTMPRINCIPAL;

{$R *.dfm}



procedure TfrmCadCategoria.FormShow(Sender: TObject);
begin
     if dsCategoria.State in [dsEdit] then
     begin
          edtCodCategoria.Text := IntToStr(dmPrincipal.cdsCategoriacod_categoria.AsInteger);

          if dmPrincipal.cdsCategoriatipo_categoria.AsString = 'S' then
               rdAtendimentos.Checked := True

          else if dmPrincipal.cdsCategoriatipo_categoria.AsString = 'J' then
               rdProjetos.Checked := True
               
          else if dmPrincipal.cdsCategoriatipo_categoria.AsString = 'P' then
               rdProcesso.Checked := True;
     end;

     if dsCategoria.State in [dsInsert] then
     begin
          dmPrincipal.cdsCategoriaenvia_email.AsString      := 'N';
          dmPrincipal.cdsCategoriaatualiza_sistema.AsString := 'N';
          rdAtendimentos.Checked := True;
     end;
end;

procedure TfrmCadCategoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if dsCategoria.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsCategoria.CancelUpdates;
end;

procedure TfrmCadCategoria.btnCancelarClick(Sender: TObject);
begin
     if dsCategoria.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsCategoria.CancelUpdates;
     Close;
end;

procedure TfrmCadCategoria.btnSalvarClick(Sender: TObject);
var
     cod_categoria :Integer;
begin
     if edtNomeCategoria.Text = '' then
     begin
          ShowMessage('A descrição da categoria não pode ser nula! ');
          edtNomeCategoria.SetFocus;
          Abort;
     end;

     if rdAtendimentos.Checked = true then
          dmPrincipal.cdsCategoriatipo_categoria.AsString := 'S'

     else if rdProjetos.Checked = true then
          dmPrincipal.cdsCategoriatipo_categoria.AsString := 'J'

     else if rdProcesso.Checked = true then
          dmPrincipal.cdsCategoriatipo_categoria.AsString := 'P';


     if dsCategoria.State in [dsInsert] then
     begin
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_categoria) as codigo from categoria_chamado');
          dmPrincipal.qryTemp.open;
          cod_categoria := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;

          dmPrincipal.cdsCategoriacod_categoria.AsInteger := cod_categoria + 1;
     end;
     dmPrincipal.cdsCategoria.Post;
     dmPrincipal.cdsCategoria.ApplyUpdates(0);

     close;
end;

procedure TfrmCadCategoria.FormKeyDown(Sender: TObject; var Key: Word;
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


