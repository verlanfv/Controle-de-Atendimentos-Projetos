unit uPARAMETROSGERAIS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TfrmParametrosGerais = class(TForm)
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
    dsParametros: TDataSource;
    grdParametros: TDBGrid;
    pnlOrdem: TPanel;
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure grdParametrosDblClick(Sender: TObject);
    procedure grdParametrosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParametrosGerais: TfrmParametrosGerais;

implementation

uses DTMPRINCIPAL, uMNTPARAMGERAIS;

{$R *.dfm}

procedure TfrmParametrosGerais.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsParametros.first;
end;

procedure TfrmParametrosGerais.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsParametros.prior;
end;

procedure TfrmParametrosGerais.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsParametros.next;
end;

procedure TfrmParametrosGerais.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsParametros.last;
end;

procedure TfrmParametrosGerais.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qryParametros.Close;
     dmPrincipal.qryParametros.SQL.Text := 'select * from parametros_gerais order by parametro';
     dmPrincipal.qryParametros.Open;
     dmPrincipal.cdsParametros.Close;
     dmPrincipal.cdsParametros.Open;
end;

procedure TfrmParametrosGerais.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir o parâmetro selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsParametros.Delete;
          dmPrincipal.cdsParametros.ApplyUpdates(0);
     end;
end;

procedure TfrmParametrosGerais.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmParametrosGerais.FormShow(Sender: TObject);
begin
     dmPrincipal.qryParametros.Close;
     dmPrincipal.qryParametros.SQL.Text := 'select * from parametros_gerais order by parametro';
     dmPrincipal.qryParametros.Open;
     dmPrincipal.cdsParametros.Close;
     dmPrincipal.cdsParametros.Open;
end;

procedure TfrmParametrosGerais.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryParametros.Close;
     dmPrincipal.qryParametros.SQL.Text := 'select * from parametros_gerais where '+
                                           ' parametro  ='+ '-1'+
                                           ' order by parametro desc limit 1';
     dmPrincipal.qryParametros.Open;
     dmPrincipal.cdsParametros.Close;
     dmPrincipal.cdsParametros.Open;
     dmPrincipal.cdsParametros.Insert;
     if not Assigned(frmCadParametros) then
          frmCadParametros := TfrmCadParametros.Create(Self);
     try
          frmCadParametros.ShowModal;
     finally
          frmCadParametros.Free;
     end;
     frmCadParametros := nil;
     grdParametros.SetFocus;
end;

procedure TfrmParametrosGerais.btnAlteraClick(Sender: TObject);
begin
     if not Assigned(frmCadParametros) then
          frmCadParametros := TfrmCadParametros.Create(Self);
     try
     begin
          dmPrincipal.cdsParametros.Edit;
          frmCadParametros.ShowModal;
     end;
     finally
          begin
               frmCadParametros.Free;
          end;
     end;
     frmCadParametros := nil;
     grdParametros.SetFocus
end;

procedure TfrmParametrosGerais.grdParametrosDblClick(Sender: TObject);
begin
     btnAltera.Click;
end;

procedure TfrmParametrosGerais.grdParametrosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN)  or
        (Key = vk_RETURN)  or
        (Key = 13)         then
        btnAltera.Click;
end;

procedure TfrmParametrosGerais.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_ESCAPE then
          btnSair.Click();

     if(key = VK_F2)   or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnAdiciona.Click();
     if(key = VK_F3)   or
        (Key = vk_F3)  or
        (Key = 114 )    then
          btnExporta.Click();
     if(key = VK_F6)   or
        (Key = vk_F6)  or
        (Key = 117)    then
          btnAltera.Click();
     if(key = VK_F5)   or
        (Key = vk_F5)  or
        (Key = 116)    then
          btnVisualiza.Click();
end;

end.
