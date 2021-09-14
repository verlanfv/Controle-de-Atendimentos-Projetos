unit uGRAFICOPORUSUARIO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, StdCtrls, Buttons,
  ComCtrls, ExtCtrls, KorpChart;

type
  TfrmGraficoStatusUsuario = class(TForm)
    KorpChart1: TKorpChart;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtdataini: TDateTimePicker;
    edtdatafim: TDateTimePicker;
    btnGerar: TBitBtn;
    btnSair: TBitBtn;
    cbxBusca: TComboBox;
    qryGraficoUsuario: TSQLQuery;
    cdsGraficoUsuario: TClientDataSet;
    dspGrafico: TDataSetProvider;
    dsGraficoUser: TDataSource;
    cbxUsuario: TComboBox;
    qryGraficoUsuariodesc_status: TStringField;
    qryGraficoUsuariototal: TLargeintField;
    cdsGraficoUsuariodesc_status: TStringField;
    cdsGraficoUsuariototal: TLargeintField;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraficoStatusUsuario: TfrmGraficoStatusUsuario;

implementation

uses DTMPRINCIPAL;

{$R *.dfm}

procedure TfrmGraficoStatusUsuario.FormShow(Sender: TObject);
begin
     edtdataini.Date := (Date - 7);
     edtdatafim.Date := Date;

     dmPrincipal.qryUsuarios.Close;
     dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by nome_usuario';
     dmPrincipal.qryUsuarios.Open;
     dmPrincipal.cdsUsuario.Close;
     dmPrincipal.cdsUsuario.Open;
     while not dmPrincipal.cdsUsuario.Eof do
     begin
          cbxUsuario.Items.Add(dmPrincipal.cdsUsuarionome_usuario.AsString);
          dmPrincipal.cdsUsuario.Next;
     end;
     cbxUsuario.ItemIndex := 0;
     btnGerar.Click;
end;

procedure TfrmGraficoStatusUsuario.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmGraficoStatusUsuario.btnGerarClick(Sender: TObject);
begin
     if edtdataini.Date > edtdatafim.Date then
     begin
          ShowMessage('A data inicial não pode ser maior que data final!');
          edtdataini.SetFocus;
          Abort;
     end;
     if cbxUsuario.Text = '' then
     begin
          ShowMessage('O usuário não pode ser nulo!');
          cbxUsuario.SetFocus;
          Abort;
     end;
     
     Screen.Cursor := crHourGlass;
     cdsGraficoUsuario.Close;
     cdsGraficoUsuario.Params[0].AsDate := edtdataini.Date;
     cdsGraficoUsuario.Params[1].AsDate := edtdatafim.Date;
     dmPrincipal.qryUsuarios.Close;
     dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
     dmPrincipal.qryUsuarios.Open;
     if dmPrincipal.qryUsuarios.Locate('nome_usuario',cbxUsuario.text,[]) then
          cdsGraficoUsuario.Params[2].AsInteger := dmPrincipal.qryUsuarioscod_usuario.AsInteger;
     cdsGraficoUsuario.Open;
     KorpChart1.Charts.Items[0].SerieType := TKorpSeriesType(cbxBusca.ItemIndex);
     KorpChart1.ClearCharts;
     KorpChart1.CreateCharts;
     Screen.Cursor := crDefault;
end;

procedure TfrmGraficoStatusUsuario.FormKeyDown(Sender: TObject;
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
