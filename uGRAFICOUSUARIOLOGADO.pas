unit uGRAFICOUSUARIOLOGADO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, DB, Provider, DBClient, SqlExpr, Buttons,
  ComCtrls, ExtCtrls, KorpChart;

type
  TForm1 = class(TForm)
    KorpChart1: TKorpChart;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtdataini: TDateTimePicker;
    edtdatafim: TDateTimePicker;
    btnGerar: TBitBtn;
    btnSair: TBitBtn;
    cbxBusca: TComboBox;
    qryGraficoUsuario: TSQLQuery;
    qryGraficoUsuariodesc_status: TStringField;
    qryGraficoUsuariototal: TLargeintField;
    cdsGraficoUsuario: TClientDataSet;
    cdsGraficoUsuariodesc_status: TStringField;
    cdsGraficoUsuariototal: TLargeintField;
    dspGrafico: TDataSetProvider;
    dsGraficoUser: TDataSource;
    edtUsuario: TEdit;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses uLOGIN;

{$R *.dfm}

procedure TForm1.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
     edtdataini.Date := (Date - 7);
     edtdatafim.Date := Date;
     btnGerar.Click;
end;

end.
