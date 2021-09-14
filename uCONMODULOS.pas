unit uCONMODULOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmConModulo = class(TForm)
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
    grdModulo: TDBGrid;
    dsModulo: TDataSource;
    procedure btnExcluiClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdModuloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdModuloDblClick(Sender: TObject);
    procedure edtOrdemChange(Sender: TObject);
    procedure grdModuloTitleClick(Column: TColumn);
    procedure btnExportaClick(Sender: TObject);
  private
    { Private declarations }
  public
     ordem_final : String;
     ordem_ant   : String;
     carac_pesq  : String;
     function on_change(texto,indice,ordem_final : String): Boolean;
  end;

var
  frmConModulo: TfrmConModulo;

implementation

uses DTMPRINCIPAL, uMNTMODULOS, uPRINCIPAL;

{$R *.dfm}

procedure TfrmConModulo.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir o módulo selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsModulo.Delete;
          dmPrincipal.cdsModulo.ApplyUpdates(0);
     end;
end;

procedure TfrmConModulo.btnSairClick(Sender: TObject);
begin
     if chamou_zoom = true then
          cancelou_zoom := true;
     Close;
end;

procedure TfrmConModulo.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsModulo.First;
end;

procedure TfrmConModulo.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsModulo.Prior;
end;

procedure TfrmConModulo.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsModulo.Next;
end;

procedure TfrmConModulo.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsModulo.Last;
end;

procedure TfrmConModulo.btnAlteraClick(Sender: TObject);
begin
     if not Assigned(frmCadModulo) then
          frmCadModulo := TfrmCadModulo.Create(Self);
     try
     begin
          dmPrincipal.cdsModulo.Edit;
          frmCadModulo.ShowModal;
     end;
     finally
          frmCadModulo.Free;
     end;
     frmCadModulo := nil;
     grdModulo.SetFocus;
end;

procedure TfrmConModulo.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryModulo.Close;
     dmPrincipal.qryModulo.SQL.Text := 'select * from modulos_atendimento where '+
                                           ' cod_modulo ='+ '-1'+
                                           ' order by cod_modulo desc limit 1';
     dmPrincipal.qryModulo.Open;
     dmPrincipal.cdsModulo.Close;
     dmPrincipal.cdsModulo.Open;
     dmPrincipal.cdsModulo.Insert;
     if not Assigned(frmCadModulo) then
          frmCadModulo := TfrmCadModulo.Create(Self);
     try
          frmCadModulo.ShowModal;
     finally
          frmCadModulo.Free;
     end;
     frmCadModulo := nil;
     grdModulo.SetFocus;
end;

procedure TfrmConModulo.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qryModulo.Close;
     dmPrincipal.qryModulo.SQL.Text := 'select * from modulos_atendimento order by '+ edtIndice.Text;
     dmPrincipal.qryModulo.Open;
     dmPrincipal.cdsModulo.Close;
     dmPrincipal.cdsModulo.Open;
end;

procedure TfrmConModulo.FormShow(Sender: TObject);
begin
     ActiveControl := edtOrdem;
     dmPrincipal.qryModulo.Close;
     dmPrincipal.qryModulo.SQL.Text := 'select * from modulos_atendimento order by cod_modulo';
     dmPrincipal.qryModulo.Open;
     dmPrincipal.cdsModulo.Close;
     dmPrincipal.cdsModulo.Open;
end;

procedure TfrmConModulo.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConModulo.grdModuloKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConModulo.grdModuloDblClick(Sender: TObject);
begin
     btnAltera.Click;
end;

procedure TfrmConModulo.edtOrdemChange(Sender: TObject);
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

function TfrmConModulo.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
           dmPrincipal.qryModulo.Close;
           dmPrincipal.qryModulo.SQL.Text := 'select * from modulos_atendimento where cast(' + indice +' as TEXT)'+
           ' like '+ '''' + texto + '''' +
           ' order by ' + ansilowercase(ordem_final);

           dmPrincipal.qryModulo.Open;

           dmPrincipal.cdsModulo.Close;
           dmPrincipal.cdsModulo.Open;
     end;
end;

procedure TfrmConModulo.grdModuloTitleClick(Column: TColumn);
begin
     if ordem_ant <> Column.FieldName then
     begin
          ordem_final    := Column.FieldName;
          edtIndice.Text := Column.FieldName;
          ordem_final    := '';
          dmPrincipal.qryModulo.close;
          dmPrincipal.qryModulo.SQL.Text := 'select * from modulos_atendimento order by '+ edtIndice.Text;
          dmPrincipal.qryModulo.open;
          dmPrincipal.cdsModulo.close;
          dmPrincipal.cdsModulo.Open;
          edtOrdem.Clear;
          edtOrdem.setfocus;
     end;
end;

procedure TfrmConModulo.btnExportaClick(Sender: TObject);
begin
     if chamou_zoom = true then
          Close;
end;

end.
