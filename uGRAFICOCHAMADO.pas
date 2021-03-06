unit uGRAFICOCHAMADO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, ComCtrls, ExtCtrls, DBClient,
  Provider, DB, SqlExpr, TeEngine, Series, TeeProcs, Chart, DbChart,
  KorpChart;

type
  TfrmGraficoSituacaoChamado = class(TForm)
    qryGrafico: TSQLQuery;
    dspGrafico: TDataSetProvider;
    cdsGrafico: TClientDataSet;
    Panel1: TPanel;
    edtdataini: TDateTimePicker;
    edtdatafim: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    btnGerar: TBitBtn;
    btnSair: TBitBtn;
    qryGraficodesc_status: TStringField;
    qryGraficototal: TLargeintField;
    cdsGraficodesc_status: TStringField;
    cdsGraficototal: TLargeintField;
    dsGrafico: TDataSource;
    KorpChart1: TKorpChart;
    cbxBusca: TComboBox;
    Label3: TLabel;
    procedure btnGerarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraficoSituacaoChamado: TfrmGraficoSituacaoChamado;

implementation

uses DTMPRINCIPAL;

{$R *.dfm}

procedure TfrmGraficoSituacaoChamado.btnGerarClick(Sender: TObject);
begin
     if edtdataini.Date > edtdatafim.Date then
     begin
          ShowMessage('A data inicial n?o pode ser maior que data final!');
          edtdataini.SetFocus;
          Abort;
     end;
     
     Screen.Cursor := crHourGlass;
     cdsGrafico.Close;
     cdsGrafico.Params[0].AsDate := edtdataini.Date;
     cdsGrafico.Params[1].AsDate := edtdatafim.Date;
     cdsGrafico.Open;
     KorpChart1.Charts.Items[0].SerieType := TKorpSeriesType(cbxBusca.ItemIndex);
     KorpChart1.ClearCharts;
     KorpChart1.CreateCharts;
     Screen.Cursor := crDefault;

end;

procedure TfrmGraficoSituacaoChamado.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmGraficoSituacaoChamado.FormShow(Sender: TObject);
begin
     edtdataini.Date := (Date - 7);
     edtdatafim.Date := Date;
     btnGerar.Click;
end;

procedure TfrmGraficoSituacaoChamado.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key = VK_ESCAPE then
          btnSair.Click();
     if(key = VK_F2) or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnGerar.Click();
end;

end.
