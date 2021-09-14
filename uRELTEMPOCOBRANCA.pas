unit uRELTEMPOCOBRANCA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, FMTBcd, ppBands, ppCache,
  ppClass, ppDB, DB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  DBClient, Provider, SqlExpr, ppCtrls, ppPrnabl, ppVar, dxGDIPlusClasses;

type
  TfrmRelTempoCobrancaCliente = class(TForm)
    Panel1: TPanel;
    btnGerar: TBitBtn;
    btnSair: TBitBtn;
    edtDataini: TDateTimePicker;
    edtDatafim: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtCliIni: TEdit;
    edtCliFim: TEdit;
    qryRelTempoCobranca: TSQLQuery;
    dspTmpCobranca: TDataSetProvider;
    cdsRelTempoCobranca: TClientDataSet;
    dsRelatorio: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppFooterBand1: TppFooterBand;
    qryRelTempoCobrancacod_chamado: TIntegerField;
    qryRelTempoCobrancacod_cliente: TIntegerField;
    qryRelTempoCobrancacod_status: TIntegerField;
    qryRelTempoCobrancacod_categoria: TIntegerField;
    qryRelTempoCobrancanome_cliente: TStringField;
    qryRelTempoCobrancadesc_status: TStringField;
    qryRelTempoCobrancadesc_categoria: TStringField;
    qryRelTempoCobrancadata_chamado: TDateField;
    qryRelTempoCobrancahora_chamado: TTimeField;
    qryRelTempoCobrancaprazo_fim_chamdo: TDateField;
    qryRelTempoCobrancachamado_automatico: TStringField;
    qryRelTempoCobrancanivel_prioridade: TStringField;
    qryRelTempoCobrancadescricao_chamado: TStringField;
    qryRelTempoCobrancacaminho_arq: TStringField;
    qryRelTempoCobrancacod_usuario_resp: TIntegerField;
    qryRelTempoCobrancanome_usuario_resp: TStringField;
    qryRelTempoCobrancanome_usuario_abriu: TStringField;
    qryRelTempoCobrancacod_usuario_abriu: TIntegerField;
    qryRelTempoCobrancafuncionario_emp: TStringField;
    qryRelTempoCobrancaorigem_chamado: TStringField;
    qryRelTempoCobrancatempo_gasto: TFMTBCDField;
    qryRelTempoCobrancadata_final: TDateField;
    qryRelTempoCobrancahora_final: TTimeField;
    qryRelTempoCobrancagera_compromisso: TStringField;
    qryRelTempoCobrancatempo_cobranca: TFMTBCDField;
    qryRelTempoCobrancareincidencia: TStringField;
    qryRelTempoCobrancahora_gravacao: TTimeField;
    qryRelTempoCobrancadata_gravacao: TDateField;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine4: TppLine;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine5: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine6: TppLine;
    ppLine9: TppLine;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel16: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel25: TppLabel;
    ppLabel18: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppShape2: TppShape;
    ppLabel26: TppLabel;
    ppLine25: TppLine;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppImage1: TppImage;
    cdsRelTempoCobrancacod_chamado: TIntegerField;
    cdsRelTempoCobrancacod_cliente: TIntegerField;
    cdsRelTempoCobrancacod_status: TIntegerField;
    cdsRelTempoCobrancacod_categoria: TIntegerField;
    cdsRelTempoCobrancanome_cliente: TStringField;
    cdsRelTempoCobrancadesc_status: TStringField;
    cdsRelTempoCobrancadesc_categoria: TStringField;
    cdsRelTempoCobrancadata_chamado: TDateField;
    cdsRelTempoCobrancahora_chamado: TTimeField;
    cdsRelTempoCobrancaprazo_fim_chamdo: TDateField;
    cdsRelTempoCobrancachamado_automatico: TStringField;
    cdsRelTempoCobrancanivel_prioridade: TStringField;
    cdsRelTempoCobrancadescricao_chamado: TStringField;
    cdsRelTempoCobrancacaminho_arq: TStringField;
    cdsRelTempoCobrancacod_usuario_resp: TIntegerField;
    cdsRelTempoCobrancanome_usuario_resp: TStringField;
    cdsRelTempoCobrancanome_usuario_abriu: TStringField;
    cdsRelTempoCobrancacod_usuario_abriu: TIntegerField;
    cdsRelTempoCobrancafuncionario_emp: TStringField;
    cdsRelTempoCobrancaorigem_chamado: TStringField;
    cdsRelTempoCobrancatempo_gasto: TFMTBCDField;
    cdsRelTempoCobrancadata_final: TDateField;
    cdsRelTempoCobrancahora_final: TTimeField;
    cdsRelTempoCobrancagera_compromisso: TStringField;
    cdsRelTempoCobrancatempo_cobranca: TFMTBCDField;
    cdsRelTempoCobrancareincidencia: TStringField;
    cdsRelTempoCobrancahora_gravacao: TTimeField;
    cdsRelTempoCobrancadata_gravacao: TDateField;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGerarClick(Sender: TObject);
    procedure edtCliIniDblClick(Sender: TObject);
    procedure edtCliFimDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelTempoCobrancaCliente: TfrmRelTempoCobrancaCliente;
  dataini     : string;
  datafim     : string;
implementation

uses DTMPRINCIPAL, uCONCLIENTES, uPRINCIPAL;

{$R *.dfm}

procedure TfrmRelTempoCobrancaCliente.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmRelTempoCobrancaCliente.FormShow(Sender: TObject);
begin
     edtDataini.Date := Date;
     edtDatafim.Date := Date;
end;

procedure TfrmRelTempoCobrancaCliente.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      if (Key = 4100)       or
        (Key = 4101)        or
        (Key = VK_RETURN)  or
        (Key = vk_RETURN)  or
        (Key = 13)         then
          SelectNext(ActiveControl, True, True );
     if (Key = 4145)   or
        (key = VK_F2)  or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnGerar.Click();
     if (Key = 4096)       or
        (key = VK_ESCAPE)  or
        (key = vk_ESCAPE)  or
        (Key = 27)         then
          btnSair.Click();
end;

procedure TfrmRelTempoCobrancaCliente.btnGerarClick(Sender: TObject);
begin
     dataini := '';
     datafim := '';
     if edtDataini.Date > edtDatafim.Date then
     begin
          ShowMessage('A data inicial não pode ser maior que a data final');
          edtDataini.SetFocus;
          Abort;
     end;

     if edtCliIni.Text = '' then
     begin
          ShowMessage('Informe um código inicial para o cliente!');
          edtCliIni.SetFocus;
          Abort;
     end;
     if edtCliFim.Text = '' then
     begin
          ShowMessage('Informe um código final para o cliente!');
          edtCliFim.SetFocus;
          Abort;
     end;
     if (StrToInt(edtCliIni.Text) > StrToInt(edtCliFim.Text)) then
     begin
          ShowMessage('O código inicial do cliente não pode ser maior que o código final!');
          edtCliIni.SetFocus;
          Abort;
     end;

     //==========formatando data do chamado =========//
     dataini := FormatDateTime('yyyy/mm/dd',edtDataini.Date);
     datafim := FormatDateTime('yyyy/mm/dd',edtDatafim.Date);


     qryRelTempoCobranca.Close;
     qryRelTempoCobranca.SQL.Text := 'select * from chamado where cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                                   ' and data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                                   ' and tempo_cobranca <> 0.00'+
                                   ' order by cod_cliente, cod_chamado';

     qryRelTempoCobranca.open;
     cdsRelTempoCobranca.Close;
     cdsRelTempoCobranca.Open;
     ppLabel15.Text := DateToStr(edtDataini.Date);
     ppLabel16.Text := DateToStr(edtDatafim.Date);
     //================verifica se encontrou algum dado... ====================//
     if cdsRelTempoCobranca.RecordCount = 0 then
     begin
          ShowMessage('Nenhum dado foi encontrado para os parâmetros informados !!');
          edtDataini.SetFocus;
     end
     else
     begin
          ppReport1.PrintReport;
     end;

end;

procedure TfrmRelTempoCobrancaCliente.edtCliIniDblClick(Sender: TObject);
var result : boolean;
begin
     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConClientes <> nil then
          frmConClientes := nil;

     frmConClientes := TfrmConClientes.Create(Application);
     try
     begin
          frmConClientes.btnExporta.Enabled := True;
          frmConClientes.ShowModal();
     end
     finally
          frmConClientes.Free();
     end;
     frmConClientes := nil;

     if cancelou_zoom = false then
     begin
          edtCliIni.Text := dmPrincipal.cdsClientescod_cliente.AsString;
     end;
     edtCliIni.SetFocus;

end;

procedure TfrmRelTempoCobrancaCliente.edtCliFimDblClick(Sender: TObject);
var result : boolean;
begin
     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConClientes <> nil then
          frmConClientes := nil;

     frmConClientes := TfrmConClientes.Create(Application);
     try
     begin
          frmConClientes.btnExporta.Enabled := True;
          frmConClientes.ShowModal();
     end
     finally
          frmConClientes.Free();
     end;
     frmConClientes := nil;

     if cancelou_zoom = false then
     begin
          edtCliFim.Text := dmPrincipal.cdsClientescod_cliente.AsString;
     end;
     edtCliFim.SetFocus;

end;

end.
