unit uCONDESENV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Grids, DBGrids, Buttons, ExtCtrls;

type
  TfrmConDesenv = class(TForm)
    pnlBotoes: TPanel;
    btnPrimeiro: TSpeedButton;
    btnAnterior: TSpeedButton;
    btnProximo: TSpeedButton;
    btnUltimo: TSpeedButton;
    btnVisualiza: TSpeedButton;
    btnFiltro: TSpeedButton;
    btnExporta: TSpeedButton;
    btnAdiciona: TSpeedButton;
    btnAltera: TSpeedButton;
    btnExclui: TSpeedButton;
    btnSair: TSpeedButton;
    pnlOrdem: TPanel;
    edtOrdem: TEdit;
    edtIndice: TEdit;
    grdRegistro: TDBGrid;
    dsRegistros: TDataSource;
    Panel1: TPanel;
    mmoDescAlteracso: TDBMemo;
    procedure btnExcluiClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure grdRegistroDblClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure grdRegistroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdRegistroTitleClick(Column: TColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
     ordem_final : String;
     ordem_ant   : String;
     function on_change(texto, indice, ordem_final: String): Boolean;
  end;

var
  frmConDesenv: TfrmConDesenv;

implementation

uses DTMPRINCIPAL, uMNTDESENV;

{$R *.dfm}

procedure TfrmConDesenv.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir o registro selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsDesenv.Delete;
          dmPrincipal.cdsDesenv.ApplyUpdates(0);
     end;
end;

procedure TfrmConDesenv.btnAlteraClick(Sender: TObject);
begin
     if not Assigned(frmManutencaoDesenv) then
          frmManutencaoDesenv := TfrmManutencaoDesenv.Create(Self);
     try
     begin
          dmPrincipal.cdsDesenv.Edit;
          frmManutencaoDesenv.ShowModal;
     end;
     finally
          frmManutencaoDesenv.Free;
     end;
     frmManutencaoDesenv := nil;
     grdRegistro.SetFocus;
end;

procedure TfrmConDesenv.grdRegistroDblClick(Sender: TObject);
begin
     btnAltera.Click;
end;

procedure TfrmConDesenv.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsDesenv.First;
end;

procedure TfrmConDesenv.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsDesenv.Prior;
end;

procedure TfrmConDesenv.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsDesenv.Next;
end;

procedure TfrmConDesenv.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsDesenv.Last;
end;

procedure TfrmConDesenv.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qryDesenv.Close;
     dmPrincipal.qryDesenv.SQL.Text := 'select * from desenvolvimento order by '+ edtIndice.Text;
     dmPrincipal.qryDesenv.Open;
     dmPrincipal.cdsDesenv.Close;
     dmPrincipal.cdsDesenv.Open;
end;

procedure TfrmConDesenv.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryDesenv.Close;
     dmPrincipal.qryDesenv.SQL.Text := 'select * from desenvolvimento where '+
                                           ' cod_desenvolvimento   ='+ '-1'+
                                           ' order by cod_desenvolvimento desc limit 1';
     dmPrincipal.qryDesenv.Open;
     dmPrincipal.cdsDesenv.Close;
     dmPrincipal.cdsDesenv.Open;
     dmPrincipal.cdsDesenv.Insert;
     if not Assigned(frmManutencaoDesenv) then
          frmManutencaoDesenv := TfrmManutencaoDesenv.Create(Self);
     try
          frmManutencaoDesenv.ShowModal;
     finally
          frmManutencaoDesenv.Free;
     end;
     frmManutencaoDesenv := nil;
     grdRegistro.SetFocus;
end;

procedure TfrmConDesenv.grdRegistroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
     if btnAltera.Enabled then
        btnAltera.Click;
end;

procedure TfrmConDesenv.grdRegistroTitleClick(Column: TColumn);
begin
     if ordem_ant <> Column.FieldName then
     begin
          ordem_final    := Column.FieldName;
          edtIndice.Text := Column.FieldName;
          ordem_final    := '';
          dmPrincipal.qryDesenv.close;
          dmPrincipal.qryDesenv.SQL.Text := 'select * from desenvolvimento order by '+ edtIndice.Text;
          dmPrincipal.qryDesenv.open;
          dmPrincipal.cdsDesenv.close;
          dmPrincipal.cdsDesenv.Open;
          edtOrdem.Clear;
          edtOrdem.setfocus;
     end;
end;

procedure TfrmConDesenv.edtOrdemChange(Sender: TObject);
var result : boolean;
begin
     if edtOrdem.Text <> '' then
     begin
          ordem_final := edtIndice.text;
          if (edtIndice.text <> '') then
               result := on_change(edtOrdem.Text,edtIndice.Text,ordem_final)
          else
               MessageDlg('Selecione a coluna do grid abaixo a qual deseja pesquisar ',
                                        mtError, [mbOk], 0);
     end;

end;

procedure TfrmConDesenv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_ESCAPE then
          btnSair.Click();
     if(key = VK_F2) or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnAdiciona.Click();
     if btnExporta.Enabled = true then
     begin
          if(key = VK_F3) or
          (Key = vk_F3)  or
          (Key = 114 )    then
               btnExporta.Click();
     end;
     if(key = VK_F6) or
        (Key = vk_F6)  or
        (Key = 117)    then
          btnAltera.Click();
     if(key = VK_F5) or
        (Key = vk_F5)  or
        (Key = 116)    then
          btnVisualiza.Click();
end;

function TfrmConDesenv.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
           dmPrincipal.qryDesenv.Close;
           dmPrincipal.qryDesenv.SQL.Text := 'select * from desenvolvimento where cast(' + indice +' as TEXT)'+
           ' like '+ '''' + texto + '''' +
           ' order by ' + ansilowercase(ordem_final);

           dmPrincipal.qryDesenv.Open;

           dmPrincipal.cdsDesenv.Close;
           dmPrincipal.cdsDesenv.Open;
     end;
end;

procedure TfrmConDesenv.btnSairClick(Sender: TObject);

begin
     Close;
end;

procedure TfrmConDesenv.FormShow(Sender: TObject);
begin
     ActiveControl:=edtOrdem;
     dmPrincipal.qryDesenv.Close;
     dmPrincipal.qryDesenv.SQL.Text := 'select * from desenvolvimento order by cod_desenvolvimento';
     dmPrincipal.qryDesenv.Open;
     dmPrincipal.cdsDesenv.Close;
     dmPrincipal.cdsDesenv.Open;
end;

end.
