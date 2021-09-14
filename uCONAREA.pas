unit uCONAREA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, DB;

type
  TfrmConAreas = class(TForm)
    pnlBotoes: TPanel;
    pnlOrdem: TPanel;
    grdArea: TDBGrid;
    dsConArea: TDataSource;
    edtOrdem: TEdit;
    edtIndice: TEdit;
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
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdAreaTitleClick(Column: TColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure grdAreaDblClick(Sender: TObject);
    procedure grdAreaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExportaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
     ordem_final : String;
     ordem_ant   : String;
     carac_pesq  : String;
     function on_change(texto,indice,ordem_final : String): Boolean;
  end;

var
  frmConAreas: TfrmConAreas;

implementation

uses DTMPRINCIPAL, uMNTAREA, uPRINCIPAL, uLOGIN, uMNTUSUARIO, Mask;



{$R *.dfm}

procedure TfrmConAreas.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryArea.Close;
     dmPrincipal.qryArea.SQL.Text := 'select * from area_usuario where '+
                                     ' cod_area    ='+ '-1'+
                                     ' order by cod_area desc limit 1';
     dmPrincipal.qryArea.Open;
     dmPrincipal.cdsArea.Close;
     dmPrincipal.cdsArea.Open;
     dmPrincipal.cdsArea.Insert;
     if not Assigned(frmCadArea) then
          frmCadArea := TfrmCadArea.Create(Self);
     try
          frmCadArea.ShowModal;
     finally
          frmCadArea.Free;
     end;
     frmCadArea := nil;
     grdArea.SetFocus;
end;

procedure TfrmConAreas.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir a área selecionada ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsArea.Delete;
          dmPrincipal.cdsArea.ApplyUpdates(0);
     end;
end;

procedure TfrmConAreas.btnSairClick(Sender: TObject);
begin
     if chamou_zoom = true then
          cancelou_zoom := true;
     Close;
end;

procedure TfrmConAreas.btnAlteraClick(Sender: TObject);
begin
     if not Assigned(frmCadArea) then
          frmCadArea := TfrmCadArea.Create(Self);
     try
     begin
          dmPrincipal.cdsArea.Edit;
          frmCadArea.ShowModal;
     end;
     finally
          frmCadArea.Free;
     end;
     frmCadArea := nil;
     grdArea.SetFocus;
end;

procedure TfrmConAreas.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qryArea.Close;
     dmPrincipal.qryArea.SQL.Text := 'select * from area_usuario order by '+ edtIndice.Text;
     dmPrincipal.qryArea.Open;
     dmPrincipal.cdsArea.Close;
     dmPrincipal.cdsArea.Open;
end;

procedure TfrmConAreas.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsArea.First;
end;

procedure TfrmConAreas.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsArea.Prior;
end;

procedure TfrmConAreas.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsArea.Next;
end;

procedure TfrmConAreas.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsArea.Last;
end;

procedure TfrmConAreas.FormShow(Sender: TObject);
begin
     if definicao = 'ADMINISTRADOR' then
     begin
          btnAdiciona.Enabled := True;
          btnAltera.Enabled   := true;
          btnExclui.Enabled   := true;
     end;

     ActiveControl:=edtOrdem;
     dmPrincipal.qryArea.Close;
     dmPrincipal.qryArea.SQL.Text := 'select * from area_usuario order by cod_area';
     dmPrincipal.qryArea.Open;
     dmPrincipal.cdsArea.Close;
     dmPrincipal.cdsArea.Open;


     if cod_area_zoom <> 0 then
     begin
          dmPrincipal.cdsArea.IndexName := 'COD_AREA';
          dmPrincipal.cdsArea.FindKey([cod_area_zoom ]);
          dmPrincipal.cdsArea.IndexName := '';
          grdArea.SetFocus;
     end;


end;

function TfrmConAreas.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
           dmPrincipal.qryArea.Close;
           dmPrincipal.qryArea.SQL.Text := 'select * from area_usuario where cast(' + indice +' as TEXT)'+
           ' like '+ '''' + texto + '''' +
           ' order by ' + ansilowercase(ordem_final);

           dmPrincipal.qryArea.Open;

           dmPrincipal.cdsArea.Close;
           dmPrincipal.cdsArea.Open;
     end;
end;

procedure TfrmConAreas.grdAreaTitleClick(Column: TColumn);
begin
     if ordem_ant <> Column.FieldName then
     begin
          ordem_final    := Column.FieldName;
          edtIndice.Text := Column.FieldName;
          ordem_final    := '';
          dmPrincipal.qryArea.close;
          dmPrincipal.qryArea.SQL.Text := 'select * from area_usuario order by '+ edtIndice.Text;
          dmPrincipal.qryArea.open;
          dmPrincipal.cdsArea.close;
          dmPrincipal.cdsArea.Open;
          edtOrdem.Clear;
          edtOrdem.setfocus;
     end;
end;

procedure TfrmConAreas.edtOrdemChange(Sender: TObject);
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

procedure TfrmConAreas.grdAreaDblClick(Sender: TObject);
begin
     if btnAltera.Enabled then
          btnAltera.Click;
end;

procedure TfrmConAreas.grdAreaKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConAreas.btnExportaClick(Sender: TObject);
begin
     if chamou_zoom = true then
          Close;
end;

procedure TfrmConAreas.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
