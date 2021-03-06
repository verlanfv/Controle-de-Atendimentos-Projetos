unit uGRAFICOORIGEMPORCLIENTE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, KorpChart, StdCtrls, Buttons, ComCtrls, ExtCtrls, FMTBcd, DB,
  DBClient, Provider, SqlExpr;

type
  TfrmGraficoOrigemporCliente = class(TForm)
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
    qryGraficoOrigem: TSQLQuery;
    dspOrigem: TDataSetProvider;
    cdsGraficoOrigem: TClientDataSet;
    dsOrigem: TDataSource;
    qryGraficoOrigemorigem_chamado: TStringField;
    qryGraficoOrigemtotal: TLargeintField;
    cdsGraficoOrigemorigem_chamado: TStringField;
    cdsGraficoOrigemtotal: TLargeintField;
    procedure btnSairClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraficoOrigemporCliente: TfrmGraficoOrigemporCliente;

implementation

uses DTMPRINCIPAL;

{$R *.dfm}

procedure TfrmGraficoOrigemporCliente.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmGraficoOrigemporCliente.btnGerarClick(Sender: TObject);
begin
     if edtdataini.Date > edtdatafim.Date then
     begin
          ShowMessage('A data inicial n?o pode ser maior que data final!');
          edtdataini.SetFocus;
          Abort;
     end;
     if cbxCliente.Text = '' then
     begin
          ShowMessage('O cliente n?o pode ser nulo!');
          cbxCliente.SetFocus;
          Abort;
     end;
     
     Screen.Cursor := crHourGlass;
     cdsGraficoOrigem.Close;
     cdsGraficoOrigem.Params[0].AsDate := edtdataini.Date;
     cdsGraficoOrigem.Params[1].AsDate := edtdatafim.Date;
     dmPrincipal.qryClientes.Close;
     dmPrincipal.qryClientes.SQL.Text := 'select * from cliente order by cod_cliente';
     dmPrincipal.qryClientes.Open;
     if dmPrincipal.qryClientes.Locate('nome_cliente',cbxCliente.text,[]) then
     begin
          cdsGraficoOrigem.Params[2].AsInteger := dmPrincipal.qryClientescod_cliente.AsInteger;
          cdsGraficoOrigem.Params[3].AsInteger := dmPrincipal.qryClientescod_cliente.AsInteger;
     end
     else
     begin
          cdsGraficoOrigem.Params[2].AsInteger := 0;
          cdsGraficoOrigem.Params[3].AsInteger := 999999;
     end;
     cdsGraficoOrigem.Open;
     KorpChart1.Charts.Items[0].SerieType := TKorpSeriesType(cbxBusca.ItemIndex);
     KorpChart1.ClearCharts;
     KorpChart1.CreateCharts;
     Screen.Cursor := crDefault;
end;

procedure TfrmGraficoOrigemporCliente.FormShow(Sender: TObject);
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

procedure TfrmGraficoOrigemporCliente.FormKeyDown(Sender: TObject; var Key: Word;
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
