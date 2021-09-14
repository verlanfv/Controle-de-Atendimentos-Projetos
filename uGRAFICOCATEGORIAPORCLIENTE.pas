unit uGRAFICOCATEGORIAPORCLIENTE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, KorpChart, StdCtrls,
  Buttons, ComCtrls, ExtCtrls;

type
  TfrmGraficoCategoriasporCliente = class(TForm)
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
    cbxCliente: TComboBox;
    KorpChart1: TKorpChart;
    qryGraficoCliente: TSQLQuery;
    dspCliente: TDataSetProvider;
    cdsGraficoCliente: TClientDataSet;
    dsCliente: TDataSource;
    qryGraficoClientedesc_categoria: TStringField;
    qryGraficoClientetotal: TLargeintField;
    cdsGraficoClientedesc_categoria: TStringField;
    cdsGraficoClientetotal: TLargeintField;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraficoCategoriasporCliente: TfrmGraficoCategoriasporCliente;

implementation

uses DTMPRINCIPAL;

{$R *.dfm}

procedure TfrmGraficoCategoriasporCliente.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmGraficoCategoriasporCliente.FormShow(Sender: TObject);
begin
     edtdataini.Date := (Date - 7);
     edtdatafim.Date := Date;

     dmPrincipal.qryClientes.Close;
     dmPrincipal.qryClientes.SQL.Text := 'select * from cliente order by nome_cliente';
     dmPrincipal.qryClientes.Open;
     dmPrincipal.cdsClientes.Close;
     dmPrincipal.cdsClientes.Open;
     while not dmPrincipal.cdsClientes.Eof do
     begin
          cbxCliente.Items.Add(dmPrincipal.cdsClientesnome_cliente.AsString);
          dmPrincipal.cdsClientes.Next;
     end;
     cbxCliente.ItemIndex := 0;
     btnGerar.Click;
end;

procedure TfrmGraficoCategoriasporCliente.btnGerarClick(Sender: TObject);
begin
     if edtdataini.Date > edtdatafim.Date then
     begin
          ShowMessage('A data inicial não pode ser maior que data final!');
          edtdataini.SetFocus;
          Abort;
     end;
     if cbxCliente.Text = '' then
     begin
          ShowMessage('O cliente não pode ser nulo!');
          cbxCliente.SetFocus;
          Abort;
     end;
     
     Screen.Cursor := crHourGlass;
     cdsGraficoCliente.Close;
     cdsGraficoCliente.Params[0].AsDate := edtdataini.Date;
     cdsGraficoCliente.Params[1].AsDate := edtdatafim.Date;
     dmPrincipal.qryClientes.Close;
     dmPrincipal.qryClientes.SQL.Text := 'select * from cliente order by cod_cliente';
     dmPrincipal.qryClientes.Open;
     if dmPrincipal.qryClientes.Locate('nome_cliente',cbxCliente.text,[]) then
     begin
          cdsGraficoCliente.Params[2].AsInteger := dmPrincipal.qryClientescod_cliente.AsInteger;
          cdsGraficoCliente.Params[3].AsInteger := dmPrincipal.qryClientescod_cliente.AsInteger;
     end
     else
     begin
          cdsGraficoCliente.Params[2].AsInteger := 0;
          cdsGraficoCliente.Params[3].AsInteger := 999999;
     end;
     cdsGraficoCliente.Open;
     KorpChart1.Charts.Items[0].SerieType := TKorpSeriesType(cbxBusca.ItemIndex);
     KorpChart1.ClearCharts;
     KorpChart1.CreateCharts;
     Screen.Cursor := crDefault;
end;

procedure TfrmGraficoCategoriasporCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_ESCAPE then
          btnSair.Click();
     if(key = VK_F2) or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnGerar.Click();
end;

end.
