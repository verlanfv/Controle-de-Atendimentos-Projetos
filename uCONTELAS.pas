unit uCONTELAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmConTelas = class(TForm)
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
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdRegistroDblClick(Sender: TObject);
    procedure grdRegistroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdRegistroTitleClick(Column: TColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
     ordem_final : String;
     ordem_ant   : String;
     function on_change(texto, indice, ordem_final: String): Boolean;
  end;

var
  frmConTelas: TfrmConTelas;

implementation

uses DTMPRINCIPAL, uMNTTELAS, uPRINCIPAL;

{$R *.dfm}

procedure TfrmConTelas.btnSairClick(Sender: TObject);
begin
     if chamou_zoom = true then
          cancelou_zoom := true;
     Close;
end;

procedure TfrmConTelas.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir o registro selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsTelas.Delete;
          dmPrincipal.cdsTelas.ApplyUpdates(0);
     end;
end;

procedure TfrmConTelas.btnAlteraClick(Sender: TObject);
begin
     if not Assigned(frmTelas) then
          frmTelas := TfrmTelas.Create(Self);
     try
     begin
          dmPrincipal.cdsTelas.Edit;
          frmTelas.ShowModal;
     end;
     finally
          frmTelas.Free;
     end;
     frmTelas := nil;
     grdRegistro.SetFocus;
end;

procedure TfrmConTelas.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryTelas.Close;
     dmPrincipal.qryTelas.SQL.Text := 'select * from telas where '+
                                           ' cod_tela   ='+ '-1'+
                                           ' order by cod_tela desc limit 1';
     dmPrincipal.qryTelas.Open;
     dmPrincipal.cdsTelas.Close;
     dmPrincipal.cdsTelas.Open;
     dmPrincipal.cdsTelas.Insert;
     if not Assigned(frmTelas) then
          frmTelas := TfrmTelas.Create(Self);
     try
          frmTelas.ShowModal;
     finally
          frmTelas.Free;
     end;
     frmTelas := nil;
     grdRegistro.SetFocus;
end;

procedure TfrmConTelas.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qryTelas.Close;
     dmPrincipal.qryTelas.SQL.Text := 'select * from telas order by '+ edtIndice.Text;
     dmPrincipal.qryTelas.Open;
     dmPrincipal.cdsTelas.Close;
     dmPrincipal.cdsTelas.Open;
end;

procedure TfrmConTelas.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsTelas.Last;
end;

procedure TfrmConTelas.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsTelas.Next;
end;

procedure TfrmConTelas.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsTelas.Prior;
end;

procedure TfrmConTelas.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsTelas.First;
end;

procedure TfrmConTelas.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConTelas.grdRegistroDblClick(Sender: TObject);
begin
     btnAltera.Click;
end;

procedure TfrmConTelas.grdRegistroKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConTelas.grdRegistroTitleClick(Column: TColumn);
begin
     if ordem_ant <> Column.FieldName then
     begin
          ordem_final    := Column.FieldName;
          edtIndice.Text := Column.FieldName;
          ordem_final    := '';
          dmPrincipal.qryTelas.close;
          dmPrincipal.qryTelas.SQL.Text := 'select * from telas order by '+ edtIndice.Text;
          dmPrincipal.qryTelas.open;
          dmPrincipal.cdsTelas.close;
          dmPrincipal.cdsTelas.Open;
          edtOrdem.Clear;
          edtOrdem.setfocus;
     end;
end;

procedure TfrmConTelas.edtOrdemChange(Sender: TObject);
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

function TfrmConTelas.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
           dmPrincipal.qryTelas.Close;
           dmPrincipal.qryTelas.SQL.Text := 'select * from telas where cast(' + indice +' as TEXT)'+
           ' like '+ '''' + texto + '''' +
           ' order by ' + ansilowercase(ordem_final);

           dmPrincipal.qryTelas.Open;

           dmPrincipal.cdsTelas.Close;
           dmPrincipal.cdsTelas.Open;
     end;
end;

procedure TfrmConTelas.btnExportaClick(Sender: TObject);
begin
     if chamou_zoom = true then
          Close;
end;

procedure TfrmConTelas.FormShow(Sender: TObject);
begin
     ActiveControl:=edtOrdem;
     dmPrincipal.qryTelas.Close;
     dmPrincipal.qryTelas.SQL.Text := 'select * from telas order by cod_tela';
     dmPrincipal.qryTelas.Open;
     dmPrincipal.cdsTelas.Close;
     dmPrincipal.cdsTelas.Open;

     if cod_tela_zoom <> 0 then
     begin
          dmPrincipal.cdsTelas.IndexName := 'COD_TELA';
          dmPrincipal.cdsTelas.FindKey([cod_tela_zoom ]);
          dmPrincipal.cdsTelas.IndexName := '';
          grdRegistro.SetFocus;
     end;

end;

end.
