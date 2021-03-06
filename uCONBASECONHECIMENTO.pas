unit uCONBASECONHECIMENTO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TfrmConBaseConhecimento = class(TForm)
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
    grdConhecimento: TDBGrid;
    dsBaseConhecimento: TDataSource;
    Panel1: TPanel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure grdConhecimentoTitleClick(Column: TColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure grdConhecimentoDblClick(Sender: TObject);
    procedure grdConhecimentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
      
  private
    { Private declarations }
  public
     ordem_final : String;
     ordem_ant   : String;
     carac_pesq  : String;
     function on_change(texto,indice,ordem_final : String): Boolean;
  end;

var
  frmConBaseConhecimento: TfrmConBaseConhecimento;

implementation

uses DTMPRINCIPAL, uMNTBASEDADOS, uMNTCHAMADOS, uMNTMOVIMENTOCHAMADO;

{$R *.dfm}

procedure TfrmConBaseConhecimento.FormShow(Sender: TObject);
begin
     ActiveControl:=edtOrdem;
     dmPrincipal.qryBaseConhecimento.Close;
     dmPrincipal.qryBaseConhecimento.SQL.Text := 'select * from base_conhecimento order by cod_solucao';
     dmPrincipal.qryBaseConhecimento.Open;
     dmPrincipal.cdsBaseConhecimento.Close;
     dmPrincipal.cdsBaseConhecimento.Open;
end;

procedure TfrmConBaseConhecimento.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryBaseConhecimento.Close;
     dmPrincipal.qryBaseConhecimento.SQL.Text := 'select * from base_conhecimento where '+
                                                  ' cod_solucao    ='+ '-1'+
                                                  ' order by cod_solucao desc limit 1';
     dmPrincipal.qryBaseConhecimento.Open;
     dmPrincipal.cdsBaseConhecimento.Close;
     dmPrincipal.cdsBaseConhecimento.Open;
     dmPrincipal.cdsBaseConhecimento.Insert;
     if not Assigned(frmBaseDados) then
          frmBaseDados := TfrmBaseDados.Create(Self);
     try
          frmBaseDados.ShowModal;
     finally
          begin
               sCadSolucao    := '';
               sCadSolucaoMov := '';
               frmBaseDados.Free;
          end;
     end;
     frmBaseDados := nil;
     grdConhecimento.SetFocus;
end;

procedure TfrmConBaseConhecimento.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir a solucao selecionada ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsBaseConhecimento.Delete;
          dmPrincipal.cdsBaseConhecimento.ApplyUpdates(0);
     end;
end;

procedure TfrmConBaseConhecimento.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmConBaseConhecimento.btnAlteraClick(Sender: TObject);
begin
     if not Assigned(frmBaseDados) then
          frmBaseDados := TfrmBaseDados.Create(Self);
     try
     begin
          dmPrincipal.cdsBaseConhecimento.Edit;
          frmBaseDados.ShowModal;
     end;
     finally
          frmBaseDados.Free;
     end;
     frmBaseDados := nil;
     grdConhecimento.SetFocus;
end;

procedure TfrmConBaseConhecimento.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qryBaseConhecimento.Close;
     dmPrincipal.qryBaseConhecimento.SQL.Text := 'select * from base_conhecimento order by '+ edtIndice.Text;
     dmPrincipal.qryBaseConhecimento.Open;
     dmPrincipal.cdsBaseConhecimento.Close;
     dmPrincipal.cdsBaseConhecimento.Open;
end;

function TfrmConBaseConhecimento.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto  := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
           dmPrincipal.qryBaseConhecimento.Close;
           dmPrincipal.qryBaseConhecimento.SQL.Text := 'select * from base_conhecimento where cast(' + indice +' as TEXT)'+
           ' like '+ '''' + texto + '''' +
           ' order by ' + ansilowercase(ordem_final);

           dmPrincipal.qryBaseConhecimento.Open;

           dmPrincipal.cdsBaseConhecimento.Close;
           dmPrincipal.cdsBaseConhecimento.Open;
     end;
end;

procedure TfrmConBaseConhecimento.grdConhecimentoTitleClick(
  Column: TColumn);
begin
     if ordem_ant <> Column.FieldName then
     begin
          ordem_final    := Column.FieldName;
          edtIndice.Text := Column.FieldName;
          ordem_final    := '';
          dmPrincipal.qryBaseConhecimento.close;
          dmPrincipal.qryBaseConhecimento.SQL.Text := 'select * from base_conhecimento order by '+ edtIndice.Text;
          dmPrincipal.qryBaseConhecimento.open;
          dmPrincipal.cdsBaseConhecimento.close;
          dmPrincipal.cdsBaseConhecimento.Open;
          edtOrdem.Clear;
          edtOrdem.setfocus;
     end;

end;

procedure TfrmConBaseConhecimento.edtOrdemChange(Sender: TObject);
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

procedure TfrmConBaseConhecimento.grdConhecimentoDblClick(Sender: TObject);
begin
     btnAltera.Click;
end;

procedure TfrmConBaseConhecimento.grdConhecimentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
        btnAltera.Click;
end;

procedure TfrmConBaseConhecimento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key = VK_ESCAPE then
          btnSair.Click();
     if(key = VK_F2) or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnAdiciona.Click();
     if(key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114 )    then
          btnExporta.Click();
     if(key = VK_F6) or
        (Key = vk_F6)  or
        (Key = 117)    then
          btnAltera.Click();
     if(key = VK_F5) or
        (Key = vk_F5)  or
        (Key = 116)    then
          btnVisualiza.Click();
end;

procedure TfrmConBaseConhecimento.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsBaseConhecimento.First;
end;

procedure TfrmConBaseConhecimento.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsBaseConhecimento.Prior;
end;

procedure TfrmConBaseConhecimento.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsBaseConhecimento.Next;
end;

procedure TfrmConBaseConhecimento.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsBaseConhecimento.Last;
end;

end.
