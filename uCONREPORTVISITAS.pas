unit uCONREPORTVISITAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, DBCtrls,
  cxLookAndFeels, cxLookAndFeelPainters;

type
  TfrmConReportVisita = class(TForm)
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
    dsReport: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    cxGrid1DBTableView1cod_report: TcxGridDBColumn;
    cxGrid1DBTableView1cod_cliente: TcxGridDBColumn;
    cxGrid1DBTableView1motivo_visita: TcxGridDBColumn;
    cxGrid1DBTableView1tarefa_executada: TcxGridDBColumn;
    cxGrid1DBTableView1data_visita: TcxGridDBColumn;
    cxGrid1DBTableView1necessita_nova_visita: TcxGridDBColumn;
    cxGrid1DBTableView1motivo_nova_visita: TcxGridDBColumn;
    cxGrid1DBTableView1cod_usuario_visita: TcxGridDBColumn;
    cxGrid1DBTableView1tempo_gasto: TcxGridDBColumn;
    cxGrid1DBTableView1nome_usuario: TcxGridDBColumn;
    cxGrid1DBTableView1nome_cliente: TcxGridDBColumn;
    cxGrid1DBTableView1contato: TcxGridDBColumn;
    cxGrid1DBTableView1resultados: TcxGridDBColumn;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdReportTitleClick(Column: TColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure grdReportDblClick(Sender: TObject);
    procedure grdReportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1ColumnHeaderClick(
      Sender: TcxGridTableView; AColumn: TcxGridColumn);
  private
    { Private declarations }
  public
     ordem_final : String;
     ordem_ant   : String;
     carac_pesq  : String;
     function on_change(texto,indice,ordem_final : String): Boolean;
  end;

var
  frmConReportVisita: TfrmConReportVisita;

implementation

uses DTMPRINCIPAL, uMNTREPORTVISITAS;

{$R *.dfm}

procedure TfrmConReportVisita.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryReport.Close;
     dmPrincipal.qryReport.SQL.Text := 'select * from report_visita where '+
                                        ' cod_report    ='+ '-1'+
                                        ' order by cod_report desc limit 1';
     dmPrincipal.qryReport.Open;
     dmPrincipal.cdsReport.Close;
     dmPrincipal.cdsReport.Open;
     dmPrincipal.cdsReport.Insert;
     if not Assigned(frmReportVisita) then
          frmReportVisita := TfrmReportVisita.Create(Self);
     try
          frmReportVisita.ShowModal;
     finally
          frmReportVisita.Free;
     end;
     frmReportVisita := nil;
     cxGrid1.SetFocus;
end;

procedure TfrmConReportVisita.btnAlteraClick(Sender: TObject);
begin
     if not Assigned(frmReportVisita) then
          frmReportVisita := TfrmReportVisita.Create(Self);
     try
     begin
          dmPrincipal.cdsReport.Edit;
          frmReportVisita.ShowModal;
     end;
     finally
          frmReportVisita.Free;
     end;
     frmReportVisita := nil;
     cxGrid1.SetFocus;
end;

procedure TfrmConReportVisita.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir o report da visita selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsReport.Delete;
          dmPrincipal.cdsReport.ApplyUpdates(0);
     end;
end;

procedure TfrmConReportVisita.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmConReportVisita.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qryReport.Close;
     dmPrincipal.qryReport.SQL.Text := 'select * from report_visita order by '+ edtIndice.Text;
     dmPrincipal.qryReport.Open;
     dmPrincipal.cdsReport.Close;
     dmPrincipal.cdsReport.Open;
end;

procedure TfrmConReportVisita.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsReport.First;
end;

procedure TfrmConReportVisita.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsReport.Prior;
end;

procedure TfrmConReportVisita.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsReport.Next;
end;

procedure TfrmConReportVisita.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsReport.Last;
end;

procedure TfrmConReportVisita.FormShow(Sender: TObject);
begin
     ActiveControl:=edtOrdem;
     dmPrincipal.qryReport.Close;
     dmPrincipal.qryReport.SQL.Text := 'select * from report_visita order by cod_report';
     dmPrincipal.qryReport.Open;
     dmPrincipal.cdsReport.Close;
     dmPrincipal.cdsReport.Open;
end;

function TfrmConReportVisita.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
           dmPrincipal.qryReport.Close;
           dmPrincipal.qryReport.SQL.Text := 'select * from report_visita where cast(' + indice +' as TEXT)'+
           ' like '+ '''' + texto + '''' +
           ' order by ' + ansilowercase(ordem_final);

           dmPrincipal.qryReport.Open;

           dmPrincipal.cdsReport.Close;
           dmPrincipal.cdsReport.Open;
     end;
end;

procedure TfrmConReportVisita.grdReportTitleClick(Column: TColumn);
begin
     if ordem_ant <> Column.FieldName then
     begin
          ordem_final := Column.FieldName;                               
          edtIndice.Text := Column.FieldName;
          ordem_final := '';
          dmPrincipal.qryReport.close;
          dmPrincipal.qryReport.SQL.Text := 'select * from report_visita order by '+ edtIndice.Text;
          dmPrincipal.qryReport.open;
          dmPrincipal.cdsReport.close;
          dmPrincipal.cdsReport.Open;
          edtOrdem.Clear;
          edtOrdem.setfocus;
     end;
end;

procedure TfrmConReportVisita.edtOrdemChange(Sender: TObject);
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

procedure TfrmConReportVisita.grdReportDblClick(Sender: TObject);
begin
     btnAltera.Click;
end;

procedure TfrmConReportVisita.grdReportKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
        btnAltera.Click;
end;

procedure TfrmConReportVisita.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
        btnAltera.Click;
end;

procedure TfrmConReportVisita.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
     btnAltera.Click;
end;

procedure TfrmConReportVisita.cxGrid1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
     edtindice.text := trim(copy(AColumn.name,20,100));
     edtOrdem.setfocus;
end;

end.
