unit uCONCATEGORIA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmConCategoria = class(TForm)
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
    grdCategoria: TDBGrid;
    dsCategoria: TDataSource;
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure grdCategoriaTitleClick(Column: TColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure grdCategoriaDblClick(Sender: TObject);
    procedure grdCategoriaKeyDown(Sender: TObject; var Key: Word;
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
  frmConCategoria: TfrmConCategoria;

implementation

uses DTMPRINCIPAL, uMNTCATEGORIA, uPRINCIPAL, uLOGIN;

{$R *.dfm}

procedure TfrmConCategoria.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryCategoria.Close;
     dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado where '+
                                           ' cod_categoria    ='+ '-1'+
                                           ' order by cod_categoria desc limit 1';
     dmPrincipal.qryCategoria.Open;
     dmPrincipal.cdsCategoria.Close;
     dmPrincipal.cdsCategoria.Open;
     dmPrincipal.cdsCategoria.Insert;
     if not Assigned(frmCadCategoria) then
          frmCadCategoria := TfrmCadCategoria.Create(Self);
     try
          frmCadCategoria.ShowModal;
     finally
          frmCadCategoria.Free;
     end;
     frmCadCategoria := nil;
     grdCategoria.SetFocus;
end;

procedure TfrmConCategoria.btnAlteraClick(Sender: TObject);
begin
     if not Assigned(frmCadCategoria) then
          frmCadCategoria := TfrmCadCategoria.Create(Self);
     try
     begin
          dmPrincipal.cdsCategoria.Edit;
          frmCadCategoria.ShowModal;
     end;
     finally
          frmCadCategoria.Free;
     end;
     frmCadCategoria := nil;
     grdCategoria.SetFocus;
end;

procedure TfrmConCategoria.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir a categoria selecionada ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsCategoria.Delete;
          dmPrincipal.cdsCategoria.ApplyUpdates(0);
     end;
end;

procedure TfrmConCategoria.btnSairClick(Sender: TObject);
begin
     if chamou_zoom = true then
          cancelou_zoom := true;
     Close;
end;

procedure TfrmConCategoria.FormShow(Sender: TObject);
begin
     if definicao = 'ADMINISTRADOR' then
     begin
          btnAdiciona.Enabled := true;
          btnAltera.Enabled   := true;
          btnExclui.Enabled   := true;
     end
     else
     begin
          btnAdiciona.Enabled := false;
          btnAltera.Enabled   := false;
          btnExclui.Enabled   := false;
     end;

     ActiveControl:=edtOrdem;
     dmPrincipal.qryCategoria.Close;
     dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado order by cod_categoria';
     dmPrincipal.qryCategoria.Open;
     dmPrincipal.cdsCategoria.Close;
     dmPrincipal.cdsCategoria.Open;

     {if cod_categoria_zoom <> 0 then
     begin
          dmPrincipal.cdsCategoria.IndexName := 'COD_CATEGORIA';
          dmPrincipal.cdsCategoria.FindKey([cod_categoria_zoom ]);
          dmPrincipal.cdsCategoria.IndexName := '';
          grdCategoria.SetFocus;
     end;}

end;

procedure TfrmConCategoria.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qryCategoria.Close;
     dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado order by '+ edtIndice.Text;
     dmPrincipal.qryCategoria.Open;
     dmPrincipal.cdsCategoria.Close;
     dmPrincipal.cdsCategoria.Open;
end;

function TfrmConCategoria.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
           dmPrincipal.qryCategoria.Close;
           dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado where cast(' + indice +' as TEXT)'+
           ' like '+ '''' + texto + '''' +
           ' order by ' + ansilowercase(ordem_final);

           dmPrincipal.qryCategoria.Open;

           dmPrincipal.cdsCategoria.Close;
           dmPrincipal.cdsCategoria.Open;
     end;
end;

procedure TfrmConCategoria.grdCategoriaTitleClick(Column: TColumn);
begin
     if ordem_ant <> Column.FieldName then
     begin
          ordem_final    := Column.FieldName;
          edtIndice.Text := Column.FieldName;
          ordem_final    := '';
          dmPrincipal.qryCategoria.close;
          dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado order by '+ edtIndice.Text;
          dmPrincipal.qryCategoria.open;
          dmPrincipal.cdsCategoria.close;
          dmPrincipal.cdsCategoria.Open;
          edtOrdem.Clear;
          edtOrdem.setfocus;
     end;
end;

procedure TfrmConCategoria.edtOrdemChange(Sender: TObject);
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

procedure TfrmConCategoria.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsCategoria.First;
end;

procedure TfrmConCategoria.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsCategoria.Prior;
end;

procedure TfrmConCategoria.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsCategoria.Next;
end;

procedure TfrmConCategoria.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsCategoria.Last;
end;

procedure TfrmConCategoria.grdCategoriaDblClick(Sender: TObject);
begin
     if btnAltera.Enabled then
          btnAltera.Click;
end;

procedure TfrmConCategoria.grdCategoriaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
     if btnAltera.Enabled then
        btnAltera.Click;
end;

procedure TfrmConCategoria.btnExportaClick(Sender: TObject);
begin
     if chamou_zoom = true then
          Close;
end;

procedure TfrmConCategoria.FormKeyDown(Sender: TObject; var Key: Word;
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
