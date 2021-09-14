unit uRELCHAMADOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FMTBcd, DB, SqlExpr, ppDB, ppDBPipe, ppBands, ppCache,
  ppClass, ppComm, ppRelatv, ppProd, ppReport, StdCtrls, Buttons, DBCtrls,
  ppCtrls, ppPrnabl, DBClient, Provider, ppVar, ComCtrls, ppStrtch, ppMemo,
  ppSubRpt, dxGDIPlusClasses;

type
  TfrmRelChamados = class(TForm)
    Panel1: TPanel;
    btnGerar: TBitBtn;
    btnSair: TBitBtn;
    dsRelChamado: TDataSource;
    qryRelChamado: TSQLQuery;
    edtCliIni: TEdit;
    edtCliFim: TEdit;
    ppDBPipeline1: TppDBPipeline;
    dspRel: TDataSetProvider;
    cdsRelChamado: TClientDataSet;
    cbxStatus: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbxCategoria: TComboBox;
    Label5: TLabel;
    edtRespIni: TEdit;
    edtRespFim: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edtDataIni: TDateTimePicker;
    Label8: TLabel;
    edtDatafim: TDateTimePicker;
    Label9: TLabel;
    edtUsuarioAbriuInic: TEdit;
    Label10: TLabel;
    edtUsuarioAbriuFim: TEdit;
    cbxPrioridade: TComboBox;
    Label11: TLabel;
    RadioGroup1: TRadioGroup;
    rdEstourado: TRadioButton;
    rdDentro: TRadioButton;
    rdTodos: TRadioButton;
    Label12: TLabel;
    cbxOrigem: TComboBox;
    Panel2: TPanel;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
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
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine2: TppLine;
    ppLabel15: TppLabel;
    ppLabel18: TppLabel;
    Panel3: TPanel;
    Label13: TLabel;
    lblcod_chamado: TLabel;
    lstOrdem: TListBox;
    Label14: TLabel;
    lblcod_cliente: TLabel;
    lblcod_status: TLabel;
    lblcod_categoria: TLabel;
    lbldata_chamado: TLabel;
    Label15: TLabel;
    lblchamado_automatico: TLabel;
    lblnivel_prioridade: TLabel;
    btnLimpar: TBitBtn;
    lblcod_usuario_resp: TLabel;
    lblcod_usuario_abriu: TLabel;
    lblorigem_chamado: TLabel;
    lbldata_final: TLabel;
    chxNenhumResp: TCheckBox;
    qryRelChamadocod_chamado: TIntegerField;
    qryRelChamadocod_cliente: TIntegerField;
    qryRelChamadocod_status: TIntegerField;
    qryRelChamadocod_categoria: TIntegerField;
    qryRelChamadonome_cliente: TStringField;
    qryRelChamadodesc_status: TStringField;
    qryRelChamadodesc_categoria: TStringField;
    qryRelChamadodata_chamado: TDateField;
    qryRelChamadohora_chamado: TTimeField;
    qryRelChamadoprazo_fim_chamdo: TDateField;
    qryRelChamadochamado_automatico: TStringField;
    qryRelChamadonivel_prioridade: TStringField;
    qryRelChamadodescricao_chamado: TStringField;
    qryRelChamadocaminho_arq: TStringField;
    qryRelChamadocod_usuario_resp: TIntegerField;
    qryRelChamadonome_usuario_resp: TStringField;
    qryRelChamadonome_usuario_abriu: TStringField;
    qryRelChamadocod_usuario_abriu: TIntegerField;
    qryRelChamadofuncionario_emp: TStringField;
    qryRelChamadoorigem_chamado: TStringField;
    qryRelChamadotempo_gasto: TFMTBCDField;
    qryRelChamadodata_final: TDateField;
    qryRelChamadohora_final: TTimeField;
    qryRelChamadogera_compromisso: TStringField;
    qryRelChamadotempo_cobranca: TFMTBCDField;
    qryRelChamadoreincidencia: TStringField;
    qryRelChamadohora_gravacao: TTimeField;
    qryRelChamadodata_gravacao: TDateField;
    qryRelChamadosolicitacao: TStringField;
    qryRelChamadoproc_adotado: TStringField;
    qryRelChamadoemail_solicitante: TStringField;
    cdsRelChamadocod_chamado: TIntegerField;
    cdsRelChamadocod_cliente: TIntegerField;
    cdsRelChamadocod_status: TIntegerField;
    cdsRelChamadocod_categoria: TIntegerField;
    cdsRelChamadonome_cliente: TStringField;
    cdsRelChamadodesc_status: TStringField;
    cdsRelChamadodesc_categoria: TStringField;
    cdsRelChamadodata_chamado: TDateField;
    cdsRelChamadohora_chamado: TTimeField;
    cdsRelChamadoprazo_fim_chamdo: TDateField;
    cdsRelChamadochamado_automatico: TStringField;
    cdsRelChamadonivel_prioridade: TStringField;
    cdsRelChamadodescricao_chamado: TStringField;
    cdsRelChamadocaminho_arq: TStringField;
    cdsRelChamadocod_usuario_resp: TIntegerField;
    cdsRelChamadonome_usuario_resp: TStringField;
    cdsRelChamadonome_usuario_abriu: TStringField;
    cdsRelChamadocod_usuario_abriu: TIntegerField;
    cdsRelChamadofuncionario_emp: TStringField;
    cdsRelChamadoorigem_chamado: TStringField;
    cdsRelChamadotempo_gasto: TFMTBCDField;
    cdsRelChamadodata_final: TDateField;
    cdsRelChamadohora_final: TTimeField;
    cdsRelChamadogera_compromisso: TStringField;
    cdsRelChamadotempo_cobranca: TFMTBCDField;
    cdsRelChamadoreincidencia: TStringField;
    cdsRelChamadohora_gravacao: TTimeField;
    cdsRelChamadodata_gravacao: TDateField;
    cdsRelChamadosolicitacao: TStringField;
    cdsRelChamadoproc_adotado: TStringField;
    cdsRelChamadoemail_solicitante: TStringField;
    ppReport2: TppReport;
    ppLabel28: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine6: TppLine;
    ppLabel35: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel46: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine7: TppLine;
    ppLabel50: TppLabel;
    ppLabel52: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText24: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel55: TppLabel;
    rdTpRel: TRadioGroup;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel36: TppLabel;
    ppLine1: TppLine;
    Label16: TLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine32: TppLine;
    ppDBText16: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLine4: TppLine;
    ppLabel23: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine3: TppLine;
    ppLine8: TppLine;
    ppLine11: TppLine;
    ppLine19: TppLine;
    ppLine31: TppLine;
    ppShape3: TppShape;
    ppLabel17: TppLabel;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLabel63: TppLabel;
    ppLabel26: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel65: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppImage1: TppImage;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine44: TppLine;
    ppLine46: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppDBText32: TppDBText;
    ppLine5: TppLine;
    ppLine51: TppLine;
    ppLine9: TppLine;
    ppLabel1: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine10: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppShape6: TppShape;
    ppLabel16: TppLabel;
    ppShape8: TppShape;
    ppLabel27: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine56: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine64: TppLine;
    ppLine66: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLabel29: TppLabel;
    ppShape9: TppShape;
    ppImage2: TppImage;
    ppLabel19: TppLabel;
    ppShape7: TppShape;
    qryReport: TSQLQuery;
    dspReport: TDataSetProvider;
    cdsReport: TClientDataSet;
    dsReport: TDataSource;
    pipe_report: TppDBPipeline;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape11: TppShape;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel47: TppLabel;
    ppLabel51: TppLabel;
    ppLine38: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppLabel62: TppLabel;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine45: TppLine;
    ppLine47: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine65: TppLine;
    ppLine67: TppLine;
    ppLine70: TppLine;
    ppLabel68: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppImage3: TppImage;
    ppDetailBand3: TppDetailBand;
    ppShape12: TppShape;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLabel70: TppLabel;
    ppShape16: TppShape;
    ppDBText13: TppDBText;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppLine82: TppLine;
    ppLabel73: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppShape17: TppShape;
    ppLabel74: TppLabel;
    ppDBMemo4: TppDBMemo;
    ppLabel20: TppLabel;
    ppDBMemo5: TppDBMemo;
    ppLabel21: TppLabel;
    ppDBText1: TppDBText;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppShape10: TppShape;
    ppShape15: TppShape;
    ppLabel25: TppLabel;
    ppLabel69: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppDBText2: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText23: TppDBText;
    ppDBText25: TppDBText;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppLabel80: TppLabel;
    ppDBText28: TppDBText;
    qryReportcod_chamado: TIntegerField;
    qryReportcod_cliente: TIntegerField;
    qryReportcod_status: TIntegerField;
    qryReportcod_categoria: TIntegerField;
    qryReportnome_cliente: TStringField;
    qryReportdesc_status: TStringField;
    qryReportdesc_categoria: TStringField;
    qryReportdata_chamado: TDateField;
    qryReporthora_chamado: TTimeField;
    qryReportprazo_fim_chamdo: TDateField;
    qryReportchamado_automatico: TStringField;
    qryReportnivel_prioridade: TStringField;
    qryReportdescricao_chamado: TStringField;
    qryReportcaminho_arq: TStringField;
    qryReportcod_usuario_resp: TIntegerField;
    qryReportnome_usuario_resp: TStringField;
    qryReportnome_usuario_abriu: TStringField;
    qryReportcod_usuario_abriu: TIntegerField;
    qryReportfuncionario_emp: TStringField;
    qryReportorigem_chamado: TStringField;
    qryReporttempo_gasto: TFMTBCDField;
    qryReportdata_final: TDateField;
    qryReporthora_final: TTimeField;
    qryReportgera_compromisso: TStringField;
    qryReporttempo_cobranca: TFMTBCDField;
    qryReportreincidencia: TStringField;
    qryReporthora_gravacao: TTimeField;
    qryReportdata_gravacao: TDateField;
    qryReportsolicitacao: TStringField;
    qryReportproc_adotado: TStringField;
    qryReportemail_solicitante: TStringField;
    qryReportgera_cronograma_alt: TStringField;
    qryReportcod_report: TIntegerField;
    qryReportcod_cliente_1: TIntegerField;
    qryReportmotivo_treinamento: TStringField;
    qryReporttarefa_executada: TStringField;
    qryReportdata_visita: TDateField;
    qryReportnecessita_nova_visita: TStringField;
    qryReportmotivo_nova_visita: TStringField;
    qryReportcod_usuario_visita: TIntegerField;
    qryReporttempo_gasto_1: TFMTBCDField;
    qryReportnome_usuario: TStringField;
    qryReportnome_cliente_1: TStringField;
    qryReportcontato: TStringField;
    qryReportresultados: TStringField;
    qryReportcod_compromisso: TIntegerField;
    qryReportcod_chamado_1: TIntegerField;
    qryReportdata_chamado_1: TDateField;
    qryReporthora_ini: TTimeField;
    qryReporthora_fim: TTimeField;
    qryReportcaminho_arq_1: TStringField;
    qryReportmotivo_duvidas_cliente: TStringField;
    qryReportmotivo_levantamento_dados: TStringField;
    qryReportmotivo_outros: TStringField;
    qryReportmotivo_analise_oper: TStringField;
    qryReportmotivo_config_sistema: TStringField;
    qryReportmotivo_analise_erro: TStringField;
    qryReportdetalhamento_motivo: TStringField;
    cdsReportcod_chamado: TIntegerField;
    cdsReportcod_cliente: TIntegerField;
    cdsReportcod_status: TIntegerField;
    cdsReportcod_categoria: TIntegerField;
    cdsReportnome_cliente: TStringField;
    cdsReportdesc_status: TStringField;
    cdsReportdesc_categoria: TStringField;
    cdsReportdata_chamado: TDateField;
    cdsReporthora_chamado: TTimeField;
    cdsReportprazo_fim_chamdo: TDateField;
    cdsReportchamado_automatico: TStringField;
    cdsReportnivel_prioridade: TStringField;
    cdsReportdescricao_chamado: TStringField;
    cdsReportcaminho_arq: TStringField;
    cdsReportcod_usuario_resp: TIntegerField;
    cdsReportnome_usuario_resp: TStringField;
    cdsReportnome_usuario_abriu: TStringField;
    cdsReportcod_usuario_abriu: TIntegerField;
    cdsReportfuncionario_emp: TStringField;
    cdsReportorigem_chamado: TStringField;
    cdsReporttempo_gasto: TFMTBCDField;
    cdsReportdata_final: TDateField;
    cdsReporthora_final: TTimeField;
    cdsReportgera_compromisso: TStringField;
    cdsReporttempo_cobranca: TFMTBCDField;
    cdsReportreincidencia: TStringField;
    cdsReporthora_gravacao: TTimeField;
    cdsReportdata_gravacao: TDateField;
    cdsReportsolicitacao: TStringField;
    cdsReportproc_adotado: TStringField;
    cdsReportemail_solicitante: TStringField;
    cdsReportgera_cronograma_alt: TStringField;
    cdsReportcod_report: TIntegerField;
    cdsReportcod_cliente_1: TIntegerField;
    cdsReportmotivo_treinamento: TStringField;
    cdsReporttarefa_executada: TStringField;
    cdsReportdata_visita: TDateField;
    cdsReportnecessita_nova_visita: TStringField;
    cdsReportmotivo_nova_visita: TStringField;
    cdsReportcod_usuario_visita: TIntegerField;
    cdsReporttempo_gasto_1: TFMTBCDField;
    cdsReportnome_usuario: TStringField;
    cdsReportnome_cliente_1: TStringField;
    cdsReportcontato: TStringField;
    cdsReportresultados: TStringField;
    cdsReportcod_compromisso: TIntegerField;
    cdsReportcod_chamado_1: TIntegerField;
    cdsReportdata_chamado_1: TDateField;
    cdsReporthora_ini: TTimeField;
    cdsReporthora_fim: TTimeField;
    cdsReportcaminho_arq_1: TStringField;
    cdsReportmotivo_duvidas_cliente: TStringField;
    cdsReportmotivo_levantamento_dados: TStringField;
    cdsReportmotivo_outros: TStringField;
    cdsReportmotivo_analise_oper: TStringField;
    cdsReportmotivo_config_sistema: TStringField;
    cdsReportmotivo_analise_erro: TStringField;
    cdsReportdetalhamento_motivo: TStringField;
    ppShape13: TppShape;
    ppLabel53: TppLabel;
    ppmmoSolicitacao: TppMemo;
    ppmmoProcedimento: TppMemo;
    ppDBText12: TppDBText;
    procedure btnGerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure lblcod_chamadoClick(Sender: TObject);
    procedure lblcod_clienteClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure lblcod_statusClick(Sender: TObject);
    procedure lblcod_categoriaClick(Sender: TObject);
    procedure lbldata_chamadoClick(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure lblchamado_automaticoClick(Sender: TObject);
    procedure lblnivel_prioridadeClick(Sender: TObject);
    procedure lblcod_usuario_respClick(Sender: TObject);
    procedure lblcod_usuario_abriuClick(Sender: TObject);
    procedure lblorigem_chamadoClick(Sender: TObject);
    procedure lbldata_finalClick(Sender: TObject);
    procedure cbxStatusExit(Sender: TObject);
    procedure cbxStatusChange(Sender: TObject);
    procedure chxNenhumRespClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCliIniDblClick(Sender: TObject);
    procedure edtCliFimDblClick(Sender: TObject);
    procedure edtRespIniDblClick(Sender: TObject);
    procedure edtRespFimDblClick(Sender: TObject);
    procedure edtUsuarioAbriuInicDblClick(Sender: TObject);
    procedure edtUsuarioAbriuFimDblClick(Sender: TObject);
    procedure ppLabel29Print(Sender: TObject);
    procedure rdTpRelClick(Sender: TObject);
    procedure ppmmoSolicitacaoPrint(Sender: TObject);
    procedure ppmmoProcedimentoPrint(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelChamados: TfrmRelChamados;
  sStatusini    : string;
  sStatusfim    : string;
  dataini       : string;
  datafim       : string;
  sCategoriaini : string;
  sCategoriafim : string;
  sPrazo        : string;
  sEncerrado    : string;
  snivelini     : string;
  snivelfim     : string;
  sOrigem       : String;
  sOrder        : String;
  scod_chamado  : String;
  scod_cliente  : string;
  scod_status   : string;
  scod_categoria: String;
  sdata         : String;
  sdata_fim     : String;
  sauto         : String;
  sprioridade   : String;
  susuario_resp : String;
  susuario_abriu: String;
  sorigem_cham  : string;
  sdata_final   : string;
  sPrazoTodosEst: String;
  satual        : String;
  sRespUser     : String;
  sPrazoEst     : string;
  
implementation

uses DTMPRINCIPAL, uCONCLIENTES, uPRINCIPAL, uUSUARIOS;

{$R *.dfm}

procedure TfrmRelChamados.btnGerarClick(Sender: TObject);
begin
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
     if (StrToInt(edtCliIni.Text) > StrToInt(edtClifim.Text)) then
     begin
          ShowMessage('O código inicial do cliente não pode ser maior que o código final!');
          edtCliIni.SetFocus;
          Abort;
     end;

     if edtRespIni.Text = '' then
     begin
          ShowMessage('Informe um código inicial para o responsável pelo chamado!');
          edtRespIni.SetFocus;
          Abort;
     end;
     if edtRespFim.Text = '' then
     begin
          ShowMessage('Informe um código final para o responsável pelo chamado!');
          edtRespFim.SetFocus;
          Abort;
     end;
     if (StrToInt(edtRespIni.Text) > StrToInt(edtRespFim.Text)) then
     begin
          ShowMessage('O código inicial do responsável pelo chamado não pode ser maior que o código final!!');
          edtRespIni.SetFocus;
          Abort;
     end;

     if edtUsuarioAbriuInic.Text = '' then
     begin
          ShowMessage('Informe um código inicial para o usuário responsável pela abertura do chamado!');
          edtUsuarioAbriuInic.SetFocus;
          Abort;
     end;
     if edtUsuarioAbriuFim.Text = '' then
     begin
          ShowMessage('Informe um código final para o usuário responsável pela abertura do chamado!');
          edtUsuarioAbriuFim.SetFocus;
          Abort;
     end;
     if (StrToInt(edtUsuarioAbriuInic.Text) > StrToInt(edtUsuarioAbriuFim.Text)) then
     begin
          ShowMessage('O código inicial do usuário responsável pela abertura do chamado'+#13+' não pode ser maior que o código final!');
          edtUsuarioAbriuInic.SetFocus;
          Abort;
     end;
     if edtDataIni.Date > edtDatafim.Date then
     begin
          ShowMessage('A data inicial não pode ser maior que a data final');
          edtDataIni.SetFocus;
          Abort;
     end;
     if cbxStatus.text = '' then
     begin
          ShowMessage('O status não pode ser nulo!');
          cbxStatus.SetFocus;
          Abort;
     end;
     if cbxCategoria.text = '' then
     begin
          ShowMessage('A categoria não pode ser nula!');
          cbxCategoria.SetFocus;
          Abort;
     end;
     if cbxPrioridade.text = '' then
     begin
          ShowMessage('A prioridade não pode ser nula!');
          cbxPrioridade.SetFocus;
          Abort;
     end;
     if cbxOrigem.text = '' then
     begin
          ShowMessage('A origem do chamado não pode ser nula!');
          cbxOrigem.SetFocus;
          Abort;
     end;



     //=====zerando variáveis============//
     sStatusini    := '';
     sStatusfim    := '';
     dataini       := '';
     datafim       := '';
     sCategoriaini := '';
     sCategoriafim := '';
     sPrazo        := '';
     sEncerrado    := '';
     snivelini     := '';
     snivelfim     := '';
     sOrigem       := '';
     sOrder        := '';
     scod_chamado  := '';
     scod_cliente  := '';
     scod_status   := '';
     scod_categoria:= '';
     sdata         := '';
     sdata_fim     := '';
     sauto         := '';
     sprioridade   := '';
     susuario_resp := '';
     susuario_abriu:= '';
     sorigem_cham  := '';
     sdata_final   := '';
     sPrazoTodosEst:= '';
     satual        := '';
     sRespUser     := '';
     ppLabel22.text:= '';
     ppLabel36.text:= '';
     sPrazoEst     := '';

     //==========formatando data do chamado =========//
     dataini := FormatDateTime('yyyy/mm/dd',edtDataIni.Date);
     datafim := FormatDateTime('yyyy/mm/dd',edtDatafim.Date);
     //===========busca codigo do status =========//
     dmPrincipal.qryStatus.Close;
     dmPrincipal.qryStatus.open;
     if dmPrincipal.qryStatus.Locate('descricao_status',cbxStatus.Text,[]) then
     begin
          sStatusini := dmPrincipal.qryStatuscod_status.AsString;
          sStatusfim := dmPrincipal.qryStatuscod_status.AsString;
          sEncerrado := dmPrincipal.qryStatusencerra_chamado.AsString;
     end
     else
     begin
          sStatusini := '0';
          sStatusfim := '99999';
          sEncerrado := '';
     end;

     //==========busca codigo categoria ==========//
     dmPrincipal.qryCategoria.Close;
     dmPrincipal.qryCategoria.open;
     if dmPrincipal.qryCategoria.Locate('descricao_categoria',cbxCategoria.Text,[]) then
     begin
          sCategoriaini := dmPrincipal.qryCategoriacod_categoria.AsString;
          sCategoriafim := dmPrincipal.qryCategoriacod_categoria.AsString;
     end
     else
     begin
          sCategoriaini := '0';
          sCategoriafim := '99999';
     end;

     //=========filtro por prazo estourado E todos os status =========//
     if (rdEstourado.Checked = true) and (sEncerrado = '') then
     begin
          sPrazoTodosEst := 'S';
          satual := ''''+FormatDateTime('yyyy/mm/dd',Date)+'''';
     end;
     //======= prazo estourado e status encerramento ======//
     if (rdEstourado.Checked = true) and (sEncerrado = 'S') then
     begin
          sPrazoEst := 'S';
          sPrazo := 'prazo_fim_chamdo < data_final';
     end;
     //======= prazo estourado e status não encerramento ======//
     if (rdEstourado.Checked = true) and (sEncerrado = 'N') and (chxNenhumResp.Checked = false){(cbxStatus.Text <> 'AGUARDANDO ATENDIMENTO')} then
     begin
          sPrazoEst := 'S';
          sPrazo    := 'prazo_fim_chamdo < '+''''+(FormatDateTime('yyyy/mm/dd',Date))+'''';
     end;

     //========= por dentro do prazo e todos os status =======//
     if (rdDentro.Checked = true) and (sEncerrado = '') then
     begin
          sPrazoTodosEst := 'N';
          satual         := ''''+FormatDateTime('yyyy/mm/dd',Date)+'''';
     end;
     //========= por dentro do prazo e status encerramento =======//
     if (rdDentro.Checked = true) and (sEncerrado = 'S') then
     begin
          sPrazoEst := 'N';
          sPrazo    := 'prazo_fim_chamdo >= data_final';
     end;
     //========= por dentro do prazo e status não encerramento =======//
     if (rdDentro.Checked = true) and (sEncerrado = 'N') and (chxNenhumResp.Checked = false){(cbxStatus.Text <> 'AGUARDANDO ATENDIMENTO')} then
     begin
          sPrazoEst := 'N';
          sPrazo    := 'prazo_fim_chamdo >= '+''''+(FormatDateTime('yyyy/mm/dd',Date))+'''';
     end;

     //======= FILTRA PRAZO ESTOURADO  ========================//
     if (rdEstourado.Checked = true) and {(sEncerrado = 'N') and} (chxNenhumResp.Checked = true){(cbxStatus.Text = 'AGUARDANDO ATENDIMENTO')} then
     begin
          sPrazoEst := 'S';
          sPrazo    := 'prazo_fim_chamdo < '+''''+(FormatDateTime('yyyy/mm/dd',Date))+'''';
     end;
     //======= FILTRA DENTRO DO PRAZO  ========================//
     if (rdDentro.Checked = true) and {(sEncerrado = 'N') and} (chxNenhumResp.Checked = true){(cbxStatus.Text = 'AGUARDANDO ATENDIMENTO')} then
     begin
          sPrazoEst := 'N';
          sPrazo    := 'prazo_fim_chamdo >= '+''''+(FormatDateTime('yyyy/mm/dd',Date))+'''';
     end;


     //=========== todos =======//
     if (rdTodos.Checked = true) then
     begin
          sPrazo         := 'data_chamado < '+'''9999/12/31''';
          sPrazoTodosEst := '';
     end;

     //============== prioridade ======//
     if cbxPrioridade.ItemIndex = 0 then
     begin
          snivelini := '1';
          snivelfim := '1';
     end;
     if cbxPrioridade.ItemIndex = 1 then
     begin
          snivelini := '2';
          snivelfim := '2';
     end;
     if cbxPrioridade.ItemIndex = 2 then
     begin
          snivelini := '3';
          snivelfim := '3';
     end;
     if cbxPrioridade.ItemIndex = 3 then
     begin
          snivelini := '0';
          snivelfim := '99';
     end;
     //=======Origem chamado==========//
     if cbxOrigem.Text = 'TODOS' then
          sOrigem := 'like ''%'''
     else
          sOrigem := '= '+cbxOrigem.Text;
     //========= Ordenar por: ======//
     if lstOrdem.Items.Text <> '' then
          sOrder := lstOrdem.Items.DelimitedText
     else
          sOrder := 'cod_chamado, data_chamado';


     if (sPrazoTodosEst = '') and (chxNenhumResp.Checked = false){(cbxStatus.Text <> 'AGUARDANDO ATENDIMENTO')} and (sPrazoEst = '') then
     begin
          qryRelChamado.Close;
          qryRelChamado.SQL.Text := 'select * from chamado where cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                               ' and cod_usuario_resp between '+edtRespIni.text+' and '+edtRespFim.text+
                               ' and cod_usuario_abriu between '+edtUsuarioAbriuInic.text+' and '+edtUsuarioAbriuFim.text+
                               ' and data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                               ' and cod_status between '+(sStatusini)+' and '+(sStatusfim)+
                               ' and cod_categoria between '+sCategoriaini+' and '+sCategoriafim+
                               ' and '+(sPrazo)+
                               ' and nivel_prioridade between '+QuotedStr(snivelini)+' and '+QuotedStr(snivelfim)+
                               ' and origem_chamado '+(sOrigem)+
                               ' order by '+sOrder;

          qryRelChamado.open;
          cdsRelChamado.Close;
          cdsRelChamado.Open;
          if rdTpRel.ItemIndex = 0 then
          begin
               ppLabel24.Text := DateToStr(edtDataIni.Date);
               ppLabel26.Text := DateToStr(edtDatafim.Date);
          end
          else if rdTpRel.ItemIndex = 1 then
          begin
               ppLabel33.Text := DateToStr(edtDataIni.Date);
               ppLabel34.Text := DateToStr(edtDatafim.Date);
          end
          else if rdTpRel.ItemIndex = 2 then
          begin
               ppLabel66.Text := DateToStr(edtDataIni.Date);
               ppLabel62.Text := DateToStr(edtDatafim.Date);

               qryReport.Close;
               qryReport.SQL.Text := 'select c.*,r.* from chamado c, report_visita r where c.cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                               ' and c.cod_usuario_resp between '+edtRespIni.text+' and '+edtRespFim.text+
                               ' and c.cod_usuario_abriu between '+edtUsuarioAbriuInic.text+' and '+edtUsuarioAbriuFim.text+
                               ' and c.data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                               ' and c.cod_status between '+(sStatusini)+' and '+(sStatusfim)+
                               ' and c.cod_categoria between '+sCategoriaini+' and '+sCategoriafim+
                               ' and c.nivel_prioridade between '+QuotedStr(snivelini)+' and '+QuotedStr(snivelfim)+
                               ' and c.origem_chamado '+(sOrigem)+
                               ' and c.cod_chamado = r.cod_chamado' +
                               ' and c.data_chamado = r.data_chamado'+
                               ' order by c.cod_chamado, c.data_chamado';

               qryReport.open;
               cdsReport.Close;
               cdsReport.Open;
          end
     end
     else if (sPrazoTodosEst = 'S') and (chxNenhumResp.Checked = false){(cbxStatus.Text <> 'AGUARDANDO ATENDIMENTO')} then
     begin
          qryRelChamado.Close;
          qryRelChamado.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                    ' where c.prazo_fim_chamdo < c.data_final and c.cod_status = s.cod_status'+
                                    ' and s.encerra_chamado = ''S'''+
                                    ' and c.cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                                    ' and c.cod_usuario_resp between '+edtRespIni.text+' and '+edtRespFim.text+
                                    ' and c.cod_usuario_abriu between '+edtUsuarioAbriuInic.text+' and '+edtUsuarioAbriuFim.text+
                                    ' and c.data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                                    ' and c.cod_status between '+(sStatusini)+' and '+(sStatusfim)+
                                    ' and cod_categoria between '+sCategoriaini+' and '+sCategoriafim+
                                    ' and c.nivel_prioridade between '+QuotedStr(snivelini)+' and '+QuotedStr(snivelfim)+
                                    ' and c.origem_chamado '+(sOrigem)+
                                    ' union'+
                                    ' select c.* from chamado c, status_chamado s'+
                                    ' where c.prazo_fim_chamdo < '+satual+
                                    ' and c.cod_status = s.cod_status'+
                                    ' and c.cod_status = s.cod_status and s.encerra_chamado = ''N'''+
                                    ' and c.cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                                    ' and c.cod_usuario_resp between '+edtRespIni.text+' and '+edtRespFim.Text+
                                    ' and c.cod_usuario_abriu between '+edtUsuarioAbriuInic.text+' and '+edtUsuarioAbriuFim.text+
                                    ' and c.data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                                    ' and c.cod_status between '+(sStatusini)+' and '+(sStatusfim)+
                                    ' and cod_categoria between '+sCategoriaini+' and '+sCategoriafim+
                                    ' and c.nivel_prioridade between '+QuotedStr(snivelini)+' and '+QuotedStr(snivelfim)+
                                    ' and c.origem_chamado '+(sOrigem)+
                                    ' order by '+sOrder;
          qryRelChamado.open;
          cdsRelChamado.Close;
          cdsRelChamado.Open;
          if rdTpRel.ItemIndex = 0 then
          begin
               ppLabel22.text := 'Fora do Prazo';
               ppLabel24.Text := DateToStr(edtDataIni.Date);
               ppLabel26.Text := DateToStr(edtDatafim.Date);
          end
          else
          begin
               ppLabel36.text := 'Fora do Prazo';
               ppLabel33.Text := DateToStr(edtDataIni.Date);
               ppLabel34.Text := DateToStr(edtDatafim.Date);
          end

     end
     else if (sPrazoEst = 'S') and (sEncerrado = 'S') and (chxNenhumResp.Checked = false) then
     begin
          qryRelChamado.Close;
          qryRelChamado.SQL.Text := 'select c from chamado where cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                               ' and cod_usuario_resp between '+edtRespIni.text+' and '+edtRespFim.text+
                               ' and cod_usuario_abriu between '+edtUsuarioAbriuInic.text+' and '+edtUsuarioAbriuFim.text+
                               ' and data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                               ' and cod_status between '+(sStatusini)+' and '+(sStatusfim)+
                               ' and cod_categoria between '+sCategoriaini+' and '+sCategoriafim+
                               ' and '+(sPrazo)+
                               ' and nivel_prioridade between '+QuotedStr(snivelini)+' and '+QuotedStr(snivelfim)+
                               ' and origem_chamado '+(sOrigem)+
                               ' order by '+sOrder;

          qryRelChamado.open;
          cdsRelChamado.Close;
          cdsRelChamado.Open;
          if rdTpRel.ItemIndex = 0 then
          begin
               ppLabel22.text := 'Fora do Prazo';
               ppLabel24.Text := DateToStr(edtDataIni.Date);
               ppLabel26.Text := DateToStr(edtDatafim.Date);
          end
          else
          begin
               ppLabel36.text := 'Fora do Prazo';
               ppLabel33.Text := DateToStr(edtDataIni.Date);
               ppLabel34.Text := DateToStr(edtDatafim.Date);
          end
     end
     else if (sPrazoEst = 'S') and (sEncerrado = 'N') and (chxNenhumResp.Checked = false){(cbxStatus.Text <> 'AGUARDANDO ATENDIMENTO')} then
     begin
          qryRelChamado.Close;
          qryRelChamado.SQL.Text := 'select c from chamado where cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                               ' and cod_usuario_resp between '+edtRespIni.text+' and '+edtRespFim.text+
                               ' and cod_usuario_abriu between '+edtUsuarioAbriuInic.text+' and '+edtUsuarioAbriuFim.text+
                               ' and data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                               ' and cod_status between '+(sStatusini)+' and '+(sStatusfim)+
                               ' and cod_categoria between '+sCategoriaini+' and '+sCategoriafim+
                               ' and '+(sPrazo)+
                               ' and nivel_prioridade between '+QuotedStr(snivelini)+' and '+QuotedStr(snivelfim)+
                               ' and origem_chamado '+(sOrigem)+
                               ' order by '+sOrder;

          qryRelChamado.open;
          cdsRelChamado.Close;
          cdsRelChamado.Open;
          if rdTpRel.ItemIndex = 0 then
          begin
               ppLabel22.text := 'Fora do Prazo';
               ppLabel24.Text := DateToStr(edtDataIni.Date);
               ppLabel26.Text := DateToStr(edtDatafim.Date);
          end
          else
          begin
               ppLabel36.text := 'Fora do Prazo';
               ppLabel33.Text := DateToStr(edtDataIni.Date);
               ppLabel34.Text := DateToStr(edtDatafim.Date);
          end
     end
     else if (sPrazoEst = 'N') and (sEncerrado = 'S') and (chxNenhumResp.Checked = false) then
     begin
          qryRelChamado.Close;
          qryRelChamado.SQL.Text := 'select c from chamado where cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                               ' and cod_usuario_resp between '+edtRespIni.text+' and '+edtRespFim.text+
                               ' and cod_usuario_abriu between '+edtUsuarioAbriuInic.text+' and '+edtUsuarioAbriuFim.text+
                               ' and data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                               ' and cod_status between '+(sStatusini)+' and '+(sStatusfim)+
                               ' and cod_categoria between '+sCategoriaini+' and '+sCategoriafim+
                               ' and '+(sPrazo)+
                               ' and nivel_prioridade between '+QuotedStr(snivelini)+' and '+QuotedStr(snivelfim)+
                               ' and origem_chamado '+(sOrigem)+
                               ' order by '+sOrder;

          qryRelChamado.open;
          cdsRelChamado.Close;
          cdsRelChamado.Open;
          if rdTpRel.ItemIndex = 0 then
          begin
               ppLabel22.text := 'Dentro do Prazo';
               ppLabel24.Text := DateToStr(edtDataIni.Date);
               ppLabel26.Text := DateToStr(edtDatafim.Date);
          end
          else
          begin
               ppLabel36.text := 'Dentro do Prazo';
               ppLabel33.Text := DateToStr(edtDataIni.Date);
               ppLabel34.Text := DateToStr(edtDatafim.Date);
          end
     end
     else if (sPrazoEst = 'N') and (sEncerrado = 'N') and (chxNenhumResp.Checked = false) {(cbxStatus.Text <> 'AGUARDANDO ATENDIMENTO')} then
     begin
          qryRelChamado.Close;
          qryRelChamado.SQL.Text := 'select c from chamado where cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                               ' and cod_usuario_resp between '+edtRespIni.text+' and '+edtRespFim.text+
                               ' and cod_usuario_abriu between '+edtUsuarioAbriuInic.text+' and '+edtUsuarioAbriuFim.text+
                               ' and data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                               ' and cod_status between '+(sStatusini)+' and '+(sStatusfim)+
                               ' and cod_categoria between '+sCategoriaini+' and '+sCategoriafim+
                               ' and '+(sPrazo)+
                               ' and nivel_prioridade between '+QuotedStr(snivelini)+' and '+QuotedStr(snivelfim)+
                               ' and origem_chamado '+(sOrigem)+
                               ' order by '+sOrder;

          qryRelChamado.open;
          cdsRelChamado.Close;
          cdsRelChamado.Open;
          if rdTpRel.ItemIndex = 0 then
          begin
               ppLabel22.text := 'Dentro do Prazo';
               ppLabel24.Text := DateToStr(edtDataIni.Date);
               ppLabel26.Text := DateToStr(edtDatafim.Date);
          end
          else
          begin
               ppLabel36.text := 'Dentro do Prazo';
               ppLabel33.Text := DateToStr(edtDataIni.Date);
               ppLabel34.Text := DateToStr(edtDatafim.Date);
          end
     end

     else if (sPrazoTodosEst = 'N') and (chxNenhumResp.Checked = false){(cbxStatus.Text <> 'AGUARDANDO ATENDIMENTO')} then
     begin
          qryRelChamado.Close;
          qryRelChamado.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                    ' where c.prazo_fim_chamdo >= c.data_final and c.cod_status = s.cod_status'+
                                    ' and s.encerra_chamado = ''S'''+
                                    ' and c.cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                                    ' and c.cod_usuario_resp between '+edtRespIni.text+' and '+edtRespFim.text+
                                    ' and c.cod_usuario_abriu between '+edtUsuarioAbriuInic.text+' and '+edtUsuarioAbriuFim.text+
                                    ' and c.data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                                    ' and c.cod_status between '+(sStatusini)+' and '+(sStatusfim)+
                                    ' and cod_categoria between '+sCategoriaini+' and '+sCategoriafim+
                                    ' and c.nivel_prioridade between '+QuotedStr(snivelini)+' and '+QuotedStr(snivelfim)+
                                    ' and c.origem_chamado '+(sOrigem)+
                                    ' union'+
                                    ' select c.* from chamado c, status_chamado s'+
                                    ' where c.prazo_fim_chamdo >= '+satual+
                                    ' and c.cod_status = s.cod_status'+
                                    ' and c.cod_status = s.cod_status and s.encerra_chamado = ''N'''+
                                    ' and c.cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                                    ' and c.cod_usuario_resp between '+edtRespIni.text+' and '+edtRespFim.text+
                                    ' and c.cod_usuario_abriu between '+edtUsuarioAbriuInic.text+' and '+edtUsuarioAbriuFim.text+
                                    ' and c.data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                                    ' and c.cod_status between '+(sStatusini)+' and '+(sStatusfim)+
                                    ' and cod_categoria between '+sCategoriaini+' and '+sCategoriafim+
                                    ' and c.nivel_prioridade between '+QuotedStr(snivelini)+' and '+QuotedStr(snivelfim)+
                                    ' and c.origem_chamado '+(sOrigem)+
                                    ' order by '+sOrder;
          qryRelChamado.open;
          cdsRelChamado.Close;
          cdsRelChamado.Open;
          if rdTpRel.ItemIndex = 0 then
          begin
               ppLabel22.text := 'Dentro do Prazo';
               ppLabel24.Text := DateToStr(edtDataIni.Date);
               ppLabel26.Text := DateToStr(edtDatafim.Date);
          end
          else
          begin
               ppLabel36.text := 'Dentro do Prazo';
               ppLabel33.Text := DateToStr(edtDataIni.Date);
               ppLabel34.Text := DateToStr(edtDatafim.Date);
          end

     end
     else if {(cbxStatus.Text = 'AGUARDANDO ATENDIMENTO')}(chxNenhumResp.Checked = true) and (sPrazoTodosEst = '') and (sPrazoEst = '')  then
     begin
          qryRelChamado.Close;
          qryRelChamado.SQL.Text := 'select * from chamado where cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                                   ' and cod_usuario_resp is null'+
                                   ' and cod_usuario_abriu between '+edtUsuarioAbriuInic.text+' and '+edtUsuarioAbriuFim.text+
                                   ' and data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                                   ' and cod_status between '+(sStatusini)+' and '+(sStatusfim)+
                                   ' and cod_categoria between '+sCategoriaini+' and '+sCategoriafim+
                                   ' and '+(sPrazo)+
                                   ' and nivel_prioridade between '+QuotedStr(snivelini)+' and '+QuotedStr(snivelfim)+
                                   ' and origem_chamado '+(sOrigem)+
                                   ' order by '+sOrder;

          qryRelChamado.open;
          cdsRelChamado.Close;
          cdsRelChamado.Open;
          if rdTpRel.ItemIndex = 0 then
          begin
               ppLabel24.Text := DateToStr(edtDataIni.Date);
               ppLabel26.Text := DateToStr(edtDatafim.Date);
          end
          else
          begin
               ppLabel33.Text := DateToStr(edtDataIni.Date);
               ppLabel34.Text := DateToStr(edtDatafim.Date);
          end
     end
     else if {(cbxStatus.Text = 'AGUARDANDO ATENDIMENTO')}(chxNenhumResp.Checked = true) and (sPrazoEst = 'S')  then
     begin
          qryRelChamado.Close;
          qryRelChamado.SQL.Text := 'select * from chamado where cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                                   ' and cod_usuario_resp is null'+
                                   ' and cod_usuario_abriu between '+edtUsuarioAbriuInic.text+' and '+edtUsuarioAbriuFim.text+
                                   ' and data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                                   ' and cod_status between '+(sStatusini)+' and '+(sStatusfim)+
                                   ' and cod_categoria between '+sCategoriaini+' and '+sCategoriafim+
                                   ' and '+(sPrazo)+
                                   ' and nivel_prioridade between '+QuotedStr(snivelini)+' and '+QuotedStr(snivelfim)+
                                   ' and origem_chamado '+(sOrigem)+
                                   ' order by '+sOrder;

          qryRelChamado.open;
          cdsRelChamado.Close;
          cdsRelChamado.Open;
          if rdTpRel.ItemIndex = 0 then
          begin
               ppLabel22.text := 'Fora do Prazo';
               ppLabel24.Text := DateToStr(edtDataIni.Date);
               ppLabel26.Text := DateToStr(edtDatafim.Date);
          end
          else
          begin
               ppLabel36.text := 'Fora do Prazo';
               ppLabel33.Text := DateToStr(edtDataIni.Date);
               ppLabel34.Text := DateToStr(edtDatafim.Date);
          end
     end
     else if {(cbxStatus.Text = 'AGUARDANDO ATENDIMENTO')}(chxNenhumResp.Checked = true) and (sPrazoEst = 'N')  then
     begin
          qryRelChamado.Close;
          qryRelChamado.SQL.Text := 'select * from chamado c where c.cod_cliente between '+edtCliIni.Text+' and '+edtCliFim.text+
                                   ' and cod_usuario_resp is null'+
                                   ' and cod_usuario_abriu between '+edtUsuarioAbriuInic.text+' and '+edtUsuarioAbriuFim.text+
                                   ' and data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                                   ' and cod_status between '+(sStatusini)+' and '+(sStatusfim)+
                                   ' and cod_categoria between '+sCategoriaini+' and '+sCategoriafim+
                                   ' and '+(sPrazo)+
                                   ' and nivel_prioridade between '+QuotedStr(snivelini)+' and '+QuotedStr(snivelfim)+
                                   ' and origem_chamado '+(sOrigem)+
                                   ' order by '+sOrder;

          qryRelChamado.open;
          cdsRelChamado.Close;
          cdsRelChamado.Open;
          if rdTpRel.ItemIndex = 0 then
          begin
               ppLabel22.text := 'Dentro do Prazo';
               ppLabel24.Text := DateToStr(edtDataIni.Date);
               ppLabel26.Text := DateToStr(edtDatafim.Date);
          end
          else
          begin
               ppLabel36.text := 'Dentro do Prazo';
               ppLabel33.Text := DateToStr(edtDataIni.Date);
               ppLabel34.Text := DateToStr(edtDatafim.Date);
          end
     end;

     //================verifica se encontrou algum dado.... ====================//
     if cdsRelChamado.RecordCount = 0 then
     begin
          ShowMessage('Nenhum dado foi encontrado para os parâmetros informados !!');
          edtCliIni.SetFocus;
     end
     else
     begin
          if rdTpRel.ItemIndex = 0 then
               ppReport1.Print

          else if rdTpRel.ItemIndex = 1 then
               ppReport2.Print

          else if rdTpRel.ItemIndex = 2 then
               ppReport3.Print;
     end;

     if (chxNenhumResp.Checked = true) then
     begin
          edtRespIni.Enabled := false;
          edtRespFim.Enabled := false;
          edtRespIni.Text    := '0';
          edtRespFim.Text    := '99999';
     end
     else
     begin
          edtRespIni.Enabled := true;
          edtRespFim.Enabled := true;
     end;

end;

procedure TfrmRelChamados.FormShow(Sender: TObject);
begin
     //==========Inicio Status===========//
     dmPrincipal.qryStatus.Close;
     dmPrincipal.qryStatus.SQL.Text := 'select * from status_chamado order by descricao_status';
     dmPrincipal.qryStatus.Open;
     dmPrincipal.cdsStatus.Close;
     dmPrincipal.cdsStatus.Open;
     while not dmPrincipal.cdsStatus.Eof do
     begin
          cbxStatus.Items.Add(dmPrincipal.cdsStatusdescricao_status.AsString);
          dmPrincipal.cdsStatus.Next;
     end;
     cbxStatus.Items.Add('TODOS');
     cbxStatus.ItemIndex := dmPrincipal.cdsStatus.RecordCount;
     //==============Data =========//
     edtDataIni.Date := Date;
     edtDatafim.Date := Date;

     //============Categoria =======//
     dmPrincipal.qryCategoria.Close;
     dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado order by descricao_categoria';
     dmPrincipal.qryCategoria.Open;
     dmPrincipal.cdsCategoria.Close;
     dmPrincipal.cdsCategoria.Open;
     while not dmPrincipal.cdsCategoria.Eof do
     begin
          cbxCategoria.Items.Add(dmPrincipal.cdsCategoriadescricao_categoria.AsString);
          dmPrincipal.cdsCategoria.Next;
     end;
     cbxCategoria.Items.Add('TODOS');
     cbxCategoria.ItemIndex := dmPrincipal.cdsCategoria.RecordCount;

end;

procedure TfrmRelChamados.btnSairClick(Sender: TObject);
begin
     Close;
end;


procedure TfrmRelChamados.lblcod_chamadoClick(Sender: TObject);
begin
     if scod_chamado = '' then
     begin
          lstOrdem.Items.Add('cod_chamado');
          scod_chamado := 'cod_chamado';
     end;
end;

procedure TfrmRelChamados.lblcod_clienteClick(Sender: TObject);
begin
     if scod_cliente = '' then
     begin
          lstOrdem.Items.Add('cod_cliente');
          scod_cliente := 'cod_cliente';
     end;
end;

procedure TfrmRelChamados.btnLimparClick(Sender: TObject);
begin
     lstOrdem.Items.Clear;
     scod_chamado   := '';
     scod_cliente   := '';
     scod_status    := '';
     scod_categoria := '';
     sdata          := '';
     sdata_fim      := '';
     sauto          := '';
     sprioridade    := '';
     susuario_resp  := '';
     susuario_abriu := '';
     sorigem_cham   := '';
     sdata_final    := '';
end;

procedure TfrmRelChamados.lblcod_statusClick(Sender: TObject);
begin
     if scod_status = '' then
     begin
          lstOrdem.Items.Add('cod_status');
          scod_status := 'cod_status';
     end;
end;

procedure TfrmRelChamados.lblcod_categoriaClick(Sender: TObject);
begin
     if scod_categoria = '' then
     begin
          lstOrdem.Items.Add('cod_categoria');
          scod_categoria := 'cod_categoria';
     end;
end;

procedure TfrmRelChamados.lbldata_chamadoClick(Sender: TObject);
begin
     if sdata = '' then
     begin
          lstOrdem.Items.Add('data_chamado');
          sdata := 'data_chamado';
     end;
end;

procedure TfrmRelChamados.Label15Click(Sender: TObject);
begin
     if sdata_fim = '' then
     begin
          lstOrdem.Items.Add('prazo_fim_chamdo');
          sdata_fim := 'prazo_fim_chamdo';
     end;
end;

procedure TfrmRelChamados.lblchamado_automaticoClick(Sender: TObject);
begin
     if sauto = '' then
     begin
          lstOrdem.Items.Add('chamado_automatico');
          sauto := 'chamado_automatico';
     end;
end;
procedure TfrmRelChamados.lblnivel_prioridadeClick(Sender: TObject);
begin
     if sprioridade = '' then
     begin
          lstOrdem.Items.Add('nivel_prioridade');
          sprioridade := 'nivel_prioridade';
     end;
end;

procedure TfrmRelChamados.lblcod_usuario_respClick(Sender: TObject);
begin
     if susuario_resp = '' then
     begin
          lstOrdem.Items.Add('cod_usuario_resp');
          susuario_resp:= 'cod_usuario_resp';
     end;
end;

procedure TfrmRelChamados.lblcod_usuario_abriuClick(Sender: TObject);
begin
     if susuario_abriu = '' then
     begin
          lstOrdem.Items.Add('cod_usuario_abriu');
          susuario_abriu:= 'cod_usuario_abriu';
     end;
end;

procedure TfrmRelChamados.lblorigem_chamadoClick(Sender: TObject);
begin
     if sorigem_cham = '' then
     begin
          lstOrdem.Items.Add('origem_chamado');
          sorigem_cham:= 'origem_chamado';
     end;
end;

procedure TfrmRelChamados.lbldata_finalClick(Sender: TObject);
begin
     if sdata_final = '' then
     begin
          lstOrdem.Items.Add('data_final');
          sdata_final:= 'data_final';
     end;
end;

procedure TfrmRelChamados.cbxStatusExit(Sender: TObject);
begin
     {if cbxStatus.Text = 'AGUARDANDO ATENDIMENTO' then
     begin
          rdEstourado.Enabled := False;
          rdDentro.Enabled := False;
          rdTodos.Enabled := False;
          rdTodos.Checked := True;
          edtRespIni.Text := '0';
          edtRespIni.Enabled := False;
          edtRespFim.Text := '99999';
          edtRespFim.Enabled := False;
     end
     else
     begin
          RadioGroup1.Enabled := True;
          edtRespIni.Enabled  := true;
          edtRespFim.Enabled  := true;
          rdEstourado.Enabled := True;
          rdDentro.Enabled := true;
          rdTodos.Enabled := true;
     end;}
end;

procedure TfrmRelChamados.cbxStatusChange(Sender: TObject);
begin
     if cbxStatus.Text = 'AGUARDANDO ATENDIMENTO' then
     begin
          edtRespIni.Text    := '0';
          edtRespIni.Enabled := False;
          edtRespFim.Text    := '99999';
          edtRespFim.Enabled := False;
     end
     else
     begin
          edtRespIni.Enabled  := true;
          edtRespFim.Enabled  := true;
     end;
end;

procedure TfrmRelChamados.chxNenhumRespClick(Sender: TObject);
begin
     if (chxNenhumResp.Checked = true) then
     begin
          edtRespIni.Enabled := false;
          edtRespFim.Enabled := false;
          edtRespIni.Text    := '0';
          edtRespFim.Text    := '99999';
     end
     else
     begin
          edtRespIni.Enabled := true;
          edtRespFim.Enabled := true;
     end;
end;

procedure TfrmRelChamados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
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

procedure TfrmRelChamados.edtCliIniDblClick(Sender: TObject);
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

procedure TfrmRelChamados.edtCliFimDblClick(Sender: TObject);
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

procedure TfrmRelChamados.edtRespIniDblClick(Sender: TObject);
var result : boolean;
begin
     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConUsuarios <> nil then
          frmConUsuarios := nil;

     frmConUsuarios := TfrmConUsuarios.Create(Application);
     try
     begin
          frmConUsuarios.btnExporta.Enabled := True;
          frmConUsuarios.ShowModal();
     end
     finally
          frmConUsuarios.Free();
     end;
     frmConUsuarios := nil;

     if cancelou_zoom = false then
     begin
          edtRespIni.Text := dmPrincipal.cdsUsuariocod_usuario.AsString;
     end;
     edtRespIni.SetFocus;

end;

procedure TfrmRelChamados.edtRespFimDblClick(Sender: TObject);
var result : boolean;
begin
     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConUsuarios <> nil then
          frmConUsuarios := nil;

     frmConUsuarios := TfrmConUsuarios.Create(Application);
     try
     begin
          frmConUsuarios.btnExporta.Enabled := True;
          frmConUsuarios.ShowModal();
     end
     finally
          frmConUsuarios.Free();
     end;
     frmConUsuarios := nil;

     if cancelou_zoom = false then
     begin
          edtRespFim.Text := dmPrincipal.cdsUsuariocod_usuario.AsString;
     end;
     edtRespFim.SetFocus;

end;

procedure TfrmRelChamados.edtUsuarioAbriuInicDblClick(Sender: TObject);
var result : boolean;
begin
     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConUsuarios <> nil then
          frmConUsuarios := nil;

     frmConUsuarios := TfrmConUsuarios.Create(Application);
     try
     begin
          frmConUsuarios.btnExporta.Enabled := True;
          frmConUsuarios.ShowModal();
     end
     finally
          frmConUsuarios.Free();
     end;
     frmConUsuarios := nil;

     if cancelou_zoom = false then
     begin
          edtUsuarioAbriuInic.Text := dmPrincipal.cdsUsuariocod_usuario.AsString;
     end;
     edtUsuarioAbriuInic.SetFocus;

end;

procedure TfrmRelChamados.edtUsuarioAbriuFimDblClick(Sender: TObject);
var result : boolean;
begin
     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConUsuarios <> nil then
          frmConUsuarios := nil;

     frmConUsuarios := TfrmConUsuarios.Create(Application);
     try
     begin
          frmConUsuarios.btnExporta.Enabled := True;
          frmConUsuarios.ShowModal();
     end
     finally
          frmConUsuarios.Free();
     end;
     frmConUsuarios := nil;

     if cancelou_zoom = false then
     begin
          edtUsuarioAbriuFim.Text := dmPrincipal.cdsUsuariocod_usuario.AsString;
     end;
     edtUsuarioAbriuFim.SetFocus;

end;

procedure TfrmRelChamados.ppLabel29Print(Sender: TObject);
begin
     if cdsRelChamadochamado_automatico.AsString = 'S' then
          ppLabel29.Caption := 'Sim'
     else
           ppLabel29.Caption := 'Não';
end;



procedure TfrmRelChamados.rdTpRelClick(Sender: TObject);
begin
     if rdTpRel.ItemIndex = 2 then
     begin
          chxNenhumResp.Enabled := false;
          chxNenhumResp.Checked := false;
          rdEstourado.Enabled   := false;
          rdDentro.Enabled      := false;
          rdTodos.Enabled       := false;
          rdTodos.Checked       := true;
          Panel3.Enabled        := false;
     end
     else
     begin
          chxNenhumResp.Enabled := true;
          rdEstourado.Enabled   := true;
          rdDentro.Enabled      := true;
          rdTodos.Enabled       := true;
          Panel3.Enabled        := true;

     end;
end;

procedure TfrmRelChamados.ppmmoSolicitacaoPrint(Sender: TObject);
begin
     ppmmoSolicitacao.Text := stringReplace(cdsRelChamadosolicitacao.AsString, #13#10, ' ', [rfReplaceAll]);
end;


procedure TfrmRelChamados.ppmmoProcedimentoPrint(Sender: TObject);
begin
     ppmmoProcedimento.Text := stringReplace(cdsRelChamadoproc_adotado.AsString, #13#10, ' ', [rfReplaceAll]);
end;

end.


