unit BLOQUEADOS;

interface

uses
  Windows, Messages , SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, Db, ImgList, Menus, Types,
ExtCtrls, DBTables, CheckLst, 
  DBCtrls, DBClient, Variants, Mask;

type
  TfrmBloqueados = class(TForm)
    dsTabelas: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    bExcluir: TBitBtn;
    procedure bExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBloqueados: TfrmBloqueados;

implementation

uses DTMPRINCIPAL;


{$R *.dfm}

procedure TfrmBloqueados.bExcluirClick(Sender: TObject);
begin
     if dmPrincipal.cdsBloqueadostabela.Value <> '' then
     begin
          if (MessageDlg('A T E N Ç Ã O!!!!!!'+#10+
                         'Antes de excluir o registro selecionado, '+#10+
                         'certifique-se de que o usuário não esteja mais alterando'+#10+
                         'o respectivo registro.'+#10+
                         'TEM CERTEZA DE QUE DESEJA EXCLUIR O REGISTRO ???',
                         mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
          begin
               dmPrincipal.cdsBloqueados.Delete();
               dmPrincipal.cdsBloqueados.ApplyUpdates(0);
               dmPrincipal.cdsBloqueados.Open();
          end;
     end;
end;

procedure TfrmBloqueados.FormShow(Sender: TObject);
begin
     dmPrincipal.qryBloqueados.Close();
     dmPrincipal.cdsBloqueados.Close();
     dmPrincipal.qryBloqueados.Open();
     dmPrincipal.cdsBloqueados.Open();

end;

procedure TfrmBloqueados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Key = 4096)       or
        (key = VK_ESCAPE) or
        (key = vk_ESCAPE)  or
        (Key = 27)         then
          Close();
end;

end.
