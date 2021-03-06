unit uPRINCIPAL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, jpeg, Menus, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, JvBlinkingLabel, StdCtrls, JvLabel, JvHotLink, Buttons,
  FMTBcd, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, DB,
  DBClient, Provider, SqlExpr, ppStrtch, ppMemo, ppCtrls, dxGDIPlusClasses,
  ppVar, ppPrnabl, ppBands, ppCache;

type
  TfrmPrincipal = class(TForm)
    Time_hora: TTimer;
    MainMenu1: TMainMenu;
    CHAMADO: TMenuItem;
    mnuChamados: TMenuItem;
    mnuCategorias: TMenuItem;
    mnuStatus: TMenuItem;
    mnuBaseConhecimentos: TMenuItem;
    USURIO: TMenuItem;
    mnuUsurios: TMenuItem;
    mnuAreas: TMenuItem;
    CLIENTE: TMenuItem;
    mnuClientes: TMenuItem;
    RELATRIOS1: TMenuItem;
    Panel1: TPanel;
    sbPrincipal: TStatusBar;
    Panel2: TPanel;
    mnuReportVisitas: TMenuItem;
    mnuSair: TMenuItem;
    mnuTrocaUsuario: TMenuItem;
    mnuCompromisso: TMenuItem;
    RelatorioChamados1: TMenuItem;
    GRFICOS1: TMenuItem;
    SISTEMA1: TMenuItem;
    mnuParmetrosGerais: TMenuItem;
    RelCompromissos: TMenuItem;
    GraficoChamados: TMenuItem;
    RelatriodeTempoCobrana: TMenuItem;
    SituaodosChamadosporUsurio: TMenuItem;
    CategoriasdoChamadoporCliente: TMenuItem;
    OrigemdoChamadoporCliente: TMenuItem;
    MdulosdoSistema1: TMenuItem;
    SituaodosChamadosporCliente: TMenuItem;
    pnlRelCronAlt: TPanel;
    btnGerar: TBitBtn;
    btnSair: TBitBtn;
    GroupBox1: TGroupBox;
    rdSim: TRadioButton;
    rdNao: TRadioButton;
    rdTodos: TRadioButton;
    edtDataFim: TDateTimePicker;
    Label4: TLabel;
    edtDataIni: TDateTimePicker;
    Label3: TLabel;
    RelatrioCronogramadeAlter: TMenuItem;
    qryRelAlteracoes: TSQLQuery;
    dspRelAlteracoes: TDataSetProvider;
    cdsRelAlteracoes: TClientDataSet;
    desRelAlt: TDataSource;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    qryRelAlteracoescod_chamado: TIntegerField;
    qryRelAlteracoesdt_prev_entrega: TDateField;
    qryRelAlteracoestempo_prev_alteracao: TFMTBCDField;
    qryRelAlteracoescod_cliente: TIntegerField;
    qryRelAlteracoesnome_cliente: TStringField;
    qryRelAlteracoescod_modulo: TIntegerField;
    qryRelAlteracoesdesc_modulo: TStringField;
    qryRelAlteracoesnome_programa: TStringField;
    qryRelAlteracoesdesc_alteracao_prevista: TStringField;
    qryRelAlteracoesdesc_alteracao_efetivada: TStringField;
    qryRelAlteracoesfinalizado: TStringField;
    qryRelAlteracoescod_usr_responsavel: TIntegerField;
    qryRelAlteracoesnome_usr_responsavel: TStringField;
    qryRelAlteracoescod_categoria: TIntegerField;
    qryRelAlteracoesdesc_categoria: TStringField;
    qryRelAlteracoesdt_finalizacao: TDateField;
    qryRelAlteracoesHr_finalizacao: TTimeField;
    qryRelAlteracoestempo_gasto: TFMTBCDField;
    qryRelAlteracoesdata_solicitacao: TDateField;
    cdsRelAlteracoescod_chamado: TIntegerField;
    cdsRelAlteracoesdt_prev_entrega: TDateField;
    cdsRelAlteracoestempo_prev_alteracao: TFMTBCDField;
    cdsRelAlteracoescod_cliente: TIntegerField;
    cdsRelAlteracoesnome_cliente: TStringField;
    cdsRelAlteracoescod_modulo: TIntegerField;
    cdsRelAlteracoesdesc_modulo: TStringField;
    cdsRelAlteracoesnome_programa: TStringField;
    cdsRelAlteracoesdesc_alteracao_prevista: TStringField;
    cdsRelAlteracoesdesc_alteracao_efetivada: TStringField;
    cdsRelAlteracoesfinalizado: TStringField;
    cdsRelAlteracoescod_usr_responsavel: TIntegerField;
    cdsRelAlteracoesnome_usr_responsavel: TStringField;
    cdsRelAlteracoescod_categoria: TIntegerField;
    cdsRelAlteracoesdesc_categoria: TStringField;
    cdsRelAlteracoesdt_finalizacao: TDateField;
    cdsRelAlteracoesHr_finalizacao: TTimeField;
    cdsRelAlteracoestempo_gasto: TFMTBCDField;
    cdsRelAlteracoesdata_solicitacao: TDateField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine2: TppLine;
    ppLine1: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine26: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppShape4: TppShape;
    ppLabel56: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel65: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLine32: TppLine;
    ppDBText16: TppDBText;
    ppDBText33: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText43: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLine15: TppLine;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel17: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel5: TppLabel;
    ppLabel9: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine14: TppLine;
    ppLine19: TppLine;
    ppShape7: TppShape;
    ppLabel18: TppLabel;
    Image2: TImage;
    ppImage1: TppImage;
    RegistrodeAlteraes: TMenuItem;
    dsAtualizacao: TDataSource;
    cdsCliAtualizacao: TClientDataSet;
    dspAtualizacao: TDataSetProvider;
    qryCliAtualizacao: TSQLQuery;
    qryCliAtualizacaocod_cliente: TIntegerField;
    qryCliAtualizacaonome_cliente: TStringField;
    qryCliAtualizacaonome_fantasia: TStringField;
    qryCliAtualizacaoendereco: TStringField;
    qryCliAtualizacaobairro: TStringField;
    qryCliAtualizacaofone: TStringField;
    qryCliAtualizacaomail: TStringField;
    qryCliAtualizacaoobservacoes: TStringField;
    qryCliAtualizacaoativo: TStringField;
    qryCliAtualizacaonome_cidade: TStringField;
    qryCliAtualizacaouf: TStringField;
    qryCliAtualizacaodominio: TStringField;
    qryCliAtualizacaoarq_cliente: TStringField;
    qryCliAtualizacaodt_ultima_atualizacao: TDateField;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape8: TppShape;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel23: TppLabel;
    ppLine20: TppLine;
    ppLine25: TppLine;
    ppLabel29: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel31: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine27: TppLine;
    ppLine31: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppImage2: TppImage;
    ppDetailBand2: TppDetailBand;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppFooterBand2: TppFooterBand;
    ppShape9: TppShape;
    ppLabel33: TppLabel;
    ppDBPipeline2: TppDBPipeline;
    cdsCliAtualizacaocod_cliente: TIntegerField;
    cdsCliAtualizacaonome_cliente: TStringField;
    cdsCliAtualizacaonome_fantasia: TStringField;
    cdsCliAtualizacaoendereco: TStringField;
    cdsCliAtualizacaobairro: TStringField;
    cdsCliAtualizacaofone: TStringField;
    cdsCliAtualizacaomail: TStringField;
    cdsCliAtualizacaoobservacoes: TStringField;
    cdsCliAtualizacaoativo: TStringField;
    cdsCliAtualizacaonome_cidade: TStringField;
    cdsCliAtualizacaouf: TStringField;
    cdsCliAtualizacaodominio: TStringField;
    cdsCliAtualizacaoarq_cliente: TStringField;
    cdsCliAtualizacaodt_ultima_atualizacao: TDateField;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    RelatrioAtualizaesSistema1: TMenuItem;
    CheckListdeImplantao1: TMenuItem;
    RegistroDesenvolvimento: TMenuItem;
    mnuTelas: TMenuItem;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnGera: TBitBtn;
    btnsaida: TBitBtn;
    edtdtfim: TDateTimePicker;
    edtdtini: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    edtCliIni: TEdit;
    edtCliFim: TEdit;
    ppReport3: TppReport;
    ppDBPipeline3: TppDBPipeline;
    dsRelDesenv: TDataSource;
    qryRelDesenv: TSQLQuery;
    dspRelDesenv: TDataSetProvider;
    cdsRelDesenv: TClientDataSet;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppLabel21: TppLabel;
    ppLabel24: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel34: TppLabel;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine40: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppShape10: TppShape;
    ppLabel35: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel36: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppImage3: TppImage;
    ppLine53: TppLine;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine54: TppLine;
    ppShape12: TppShape;
    ppShape14: TppShape;
    ppLabel39: TppLabel;
    ppDBMemo3: TppDBMemo;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLabel43: TppLabel;
    qryRelDesenvcod_desenvolvimento: TIntegerField;
    qryRelDesenvcod_tela: TIntegerField;
    qryRelDesenvcod_modulo: TIntegerField;
    qryRelDesenvnome_tela: TStringField;
    qryRelDesenvdata_alteracao: TDateField;
    qryRelDesenvtempo: TFMTBCDField;
    qryRelDesenvcod_categoria: TIntegerField;
    qryRelDesenvobservacao: TStringField;
    qryRelDesenvcod_usuario: TIntegerField;
    qryRelDesenvcod_cliente: TIntegerField;
    qryRelDesenvnome_cliente: TStringField;
    qryRelDesenvnome_usuario: TStringField;
    qryRelDesenvdescricao_categoria: TStringField;
    cdsRelDesenvcod_desenvolvimento: TIntegerField;
    cdsRelDesenvcod_tela: TIntegerField;
    cdsRelDesenvcod_modulo: TIntegerField;
    cdsRelDesenvnome_tela: TStringField;
    cdsRelDesenvdata_alteracao: TDateField;
    cdsRelDesenvtempo: TFMTBCDField;
    cdsRelDesenvcod_categoria: TIntegerField;
    cdsRelDesenvobservacao: TStringField;
    cdsRelDesenvcod_usuario: TIntegerField;
    cdsRelDesenvcod_cliente: TIntegerField;
    cdsRelDesenvnome_cliente: TStringField;
    cdsRelDesenvnome_usuario: TStringField;
    cdsRelDesenvdescricao_categoria: TStringField;
    ppLabel22: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine39: TppLine;
    ppLine41: TppLine;
    ppLabel28: TppLabel;
    ppLine47: TppLine;
    ppShape11: TppShape;
    ppLine57: TppLine;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel37: TppLabel;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine66: TppLine;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    qryRelDesenvnum_chamado: TIntegerField;
    qryRelDesenvdata_chamado: TDateField;
    cdsRelDesenvnum_chamado: TIntegerField;
    cdsRelDesenvdata_chamado: TDateField;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    RelatrioRegistroDesenvolvimento1: TMenuItem;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLabel38: TppLabel;
    ppDBText24: TppDBText;
    ppLine74: TppLine;
    qryRelDesenvtempo_cobranca: TFMTBCDField;
    cdsRelDesenvtempo_cobranca: TFMTBCDField;
    ppLabel40: TppLabel;
    ppDBCalc2: TppDBCalc;
    PermissesdeUsurios1: TMenuItem;
    Timer_abrirConsulta: TTimer;
    PopupMenu1: TPopupMenu;
    RegistrosBloqueados1: TMenuItem;
    Agenda1: TMenuItem;
    Panel4: TPanel;
    Image1: TImage;
    Panel5: TPanel;
    Image3: TImage;
    PerguntasdaPesquisa: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Time_horaTimer(Sender: TObject);
    procedure mnuStatusClick(Sender: TObject);
    procedure mnuAreasClick(Sender: TObject);
    procedure mnuCategoriasClick(Sender: TObject);
    procedure mnuBaseConhecimentosClick(Sender: TObject);
    procedure mnuUsuriosClick(Sender: TObject);
    procedure mnuReportVisitasClick(Sender: TObject);
    procedure mnuClientesClick(Sender: TObject);
    procedure mnuChamadosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mnuTrocaUsuarioClick(Sender: TObject);
    procedure DoEnterAsTab(var Msg: TMsg; var Handled: Boolean);
    procedure mnuCompromissoClick(Sender: TObject);
    procedure RelatorioChamados1Click(Sender: TObject);
    procedure mnuParmetrosGeraisClick(Sender: TObject);
    procedure RelCompromissosClick(Sender: TObject);
    procedure GraficoChamadosClick(Sender: TObject);
    procedure RelatriodeTempoCobranaClick(Sender: TObject);
    procedure SituaodosChamadosporUsurioClick(Sender: TObject);
    procedure CategoriasdoChamadoporClienteClick(Sender: TObject);
    procedure OrigemdoChamadoporClienteClick(Sender: TObject);
    procedure MdulosdoSistema1Click(Sender: TObject);
    procedure SituaodosChamadosporClienteClick(Sender: TObject);
    procedure RelatrioCronogramadeAlterClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure ppLabel18Print(Sender: TObject);
    
    procedure RegistrodeAlteraesClick(Sender: TObject);
    procedure RelatrioAtualizaesSistema1Click(Sender: TObject);
    procedure CheckListdeImplantao1Click(Sender: TObject);
    procedure RegistroDesenvolvimentoClick(Sender: TObject);
    procedure mnuTelasClick(Sender: TObject);
    procedure btnsaidaClick(Sender: TObject);
    procedure btnGeraClick(Sender: TObject);
    procedure RelatrioRegistroDesenvolvimento1Click(Sender: TObject);
    procedure edtCliIniDblClick(Sender: TObject);
    procedure edtCliFimDblClick(Sender: TObject);
    procedure PermissesdeUsurios1Click(Sender: TObject);
    procedure Timer_abrirConsultaTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RegistrosBloqueados1Click(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure PerguntasdaPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
     function encrip(senha : string) : string;
     function desencrip(senha : string) : string;
     
     function dataporextenso(Data: TDateTime):String;
     function Formata_Data(data_formatada : string) : string;
  end;

var
  frmPrincipal: TfrmPrincipal;
  chamou_zoom,cancelou_zoom : Boolean;
  TrocaUsuario, result_erro_conexao : Boolean;
  cod_cliente_zoom, cod_cliUsuario_zoom, cod_categoria_zoom, cod_area_zoom,
  cod_usuario_zoom,cod_status_zoom, cod_tela_zoom, cod_chamado_zoom : integer;
  cod_data_chamado_zoom : TDate;

implementation

uses uMNTSTATUS, uMNTCLIENTES, uMNTCHAMADOS, DTMPRINCIPAL, uCONAREA,
  uCONSTATUS, uCONCATEGORIA, uMNTBASEDADOS, uCONBASECONHECIMENTO,
  uUSUARIOS, uCONREPORTVISITAS, uCONCLIENTES, uCONCHAMADOS, uLOGIN,
  uCONCOMPCLIENTE, uRELCHAMADOS, uPARAMETROSGERAIS, uRELCOMPROMISSOS,
  uGRAFICOCHAMADO, uRELTEMPOCOBRANCA, uGRAFICOPORUSUARIO,
  uGRAFICOCATEGORIAPORCLIENTE, uGRAFICOORIGEMPORCLIENTE, uCONMODULOS,
  uGRAFICOSTATUSPORCLIENTE, uCONREGALTERACAO, uCONCHECKLIST, uCONDESENV,
  uCONTELAS, uCLIENTEUSUARIO, BLOQUEADOS, uMNTAGENDA, uCONAGENDA,
  uCONPESQUISA;

{$R *.dfm}

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
     Timer_abrirConsulta.Enabled := true;
     
     if confirma_senha = false then
          close();
     if confirma_senha = true then
     begin
          sbPrincipal.Panels[4].Text := DateToStr(data_sistema_login);
          sbPrincipal.Panels[5].Text := '   '+FormatDateTime('hh:nn:ss',Time);
          sbPrincipal.Panels[0].Text := inttostr(cod_usuario_login);
          sbPrincipal.Panels[1].Text := 'Nome: '+nome_usuario_login;
          sbPrincipal.Panels[2].Text := 'Defini??o: '+definicao;
          sbPrincipal.Panels[3].Text := '?rea: '+des_area;

          if definicao <> 'ADMINISTRADOR' then
          begin
               mnuParmetrosGerais.Enabled            := False;
               RelatriodeTempoCobrana.Enabled        := False;
               SituaodosChamadosporUsurio.Enabled    := False;

          end
          else
          begin
               mnuParmetrosGerais.Enabled            := True;
               RelatriodeTempoCobrana.Enabled        := True;
               SituaodosChamadosporUsurio.Enabled    := True;
          end;

          if definicao = 'RECEBE E-MAIL' then
               begin
                    mnuCategorias.Enabled                 := false;
                    mnuStatus.Enabled                     := false;
                    mnuBaseConhecimentos.Enabled          := false;
                    mnuUsurios.Enabled                    := false;
                    mnuAreas.Enabled                      := false;
                    mnuClientes.Enabled                   := false;
                    mnuReportVisitas.Enabled              := false;
                    mnuCompromisso.Enabled                := false;
                    mnuParmetrosGerais.Enabled            := false;
                    mnuCategorias.Enabled                 := false;
                    mnuTrocaUsuario.Enabled               := false;
                    MdulosdoSistema1.Enabled              := false;
                    RegistrodeAlteraes.Enabled            := false;
                    RelatorioChamados1.Enabled            := false;
                    RelCompromissos.Enabled               := false;
                    RelatriodeTempoCobrana.Enabled        := false;
                    RelatrioCronogramadeAlter.Enabled     := false;
                    RelatrioAtualizaesSistema1.Enabled    := false;
                    GraficoChamados.Enabled               := false;
                    SituaodosChamadosporUsurio.Enabled    := false;
                    SituaodosChamadosporCliente.Enabled   := false;
                    CategoriasdoChamadoporCliente.Enabled := false;
                    OrigemdoChamadoporCliente.Enabled     := false;
                    CheckListdeImplantao1.Enabled         := false;
                    RegistroDesenvolvimento.Enabled       := false;
                    mnuTelas.Enabled                      := false;
                    PermissesdeUsurios1.Enabled           := false;
                    RelatrioRegistroDesenvolvimento1.Enabled := false;
               end
     end;
end;

procedure TfrmPrincipal.Time_horaTimer(Sender: TObject);
begin
     sbPrincipal.Panels[5].Text := '   '+ FormatDateTime('hh:nn:ss',Time);
end;

procedure TfrmPrincipal.mnuStatusClick(Sender: TObject);
begin
     frmConStatus := TfrmConStatus.Create(Application);
     try
          frmConStatus.ShowModal();
     finally
          frmConStatus.Free();
     end;
end;


procedure TfrmPrincipal.mnuAreasClick(Sender: TObject);
begin
     frmConAreas := TfrmConAreas.Create(Application);
     try
          frmConAreas.ShowModal();
     finally
          frmConAreas.Free();
     end;
end;

procedure TfrmPrincipal.mnuCategoriasClick(Sender: TObject);
begin
     frmConCategoria := TfrmConCategoria.Create(Application);
     try
          frmConCategoria.ShowModal();
     finally
          frmConCategoria.Free();
     end;
end;

procedure TfrmPrincipal.mnuBaseConhecimentosClick(Sender: TObject);
begin
     frmConBaseConhecimento := TfrmConBaseConhecimento.Create(Application);
     try
          frmConBaseConhecimento.ShowModal();
     finally
          frmConBaseConhecimento.Free();
     end;
end;

procedure TfrmPrincipal.mnuUsuriosClick(Sender: TObject);
begin
     frmConUsuarios := TfrmConUsuarios.Create(Application);
     try
          frmConUsuarios.ShowModal();
     finally
          frmConUsuarios.Free();
     end;
end;

procedure TfrmPrincipal.mnuReportVisitasClick(Sender: TObject);
begin
     frmConReportVisita := TfrmConReportVisita.Create(Application);
     try
          frmConReportVisita.ShowModal();
     finally
          frmConReportVisita.Free();
     end;
end;

procedure TfrmPrincipal.mnuClientesClick(Sender: TObject);
begin
     frmConClientes := TfrmConClientes.Create(Application);
     try
          frmConClientes.ShowModal();

     finally
          frmConClientes.Free();
     end;
end;

procedure TfrmPrincipal.mnuChamadosClick(Sender: TObject);
begin
     frmConChamados := TfrmConChamados.Create(Application);
     try
          frmConChamados.ShowModal();
     finally
          frmConChamados.Free();
     end;
end;

function TfrmPrincipal.desencrip(senha: string): string;
var decrip : string;
    i : integer;
begin
     i := 1;
     decrip := '';
     while i < length(senha) do
     begin
          if copy(senha,i,3) = '{$.' then
          begin
               decrip := decrip + 'a';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '#/!' then
          begin
               decrip := decrip + 'b';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '/;q' then
          begin
               decrip := decrip + 'c';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '9&%' then
          begin
               decrip := decrip + 'd';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'Y!2' then
          begin
               decrip := decrip + 'e';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '}:-' then
          begin
               decrip := decrip + 'f';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '+-*' then
          begin
               decrip := decrip + 'g';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '~,.' then
          begin
               decrip := decrip + 'h';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '][\' then
          begin
               decrip := decrip + 'i';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 's_s' then
          begin
               decrip := decrip + 'j';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '-==' then
          begin
               decrip := decrip + 'k';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '..?' then
          begin
               decrip := decrip + 'l';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '__\' then
          begin
               decrip := decrip + 'm';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '{}]' then
          begin
               decrip := decrip + 'n';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '))(' then
          begin
               decrip := decrip + 'o';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '12^' then
          begin
               decrip := decrip + 'p';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'A@!' then
          begin
               decrip := decrip + 'q';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'q_T' then
          begin
               decrip := decrip + 'r';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '|\}' then
          begin
               decrip := decrip + 's';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'ZQi' then
          begin
               decrip := decrip + 't';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'h&*' then
          begin
               decrip := decrip + 'u';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '`Pp' then
          begin
               decrip := decrip + 'v';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '89q' then
          begin
               decrip := decrip + 'w';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'w90' then
          begin
               decrip := decrip + 'x';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '7.8' then
          begin
               decrip := decrip + 'y';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '%36' then
          begin
               decrip := decrip + 'z';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '%$%' then
          begin
               decrip := decrip + ' ';
               i := i + 3;
          end
          else     // M A I ? S C U L A S        M A I ? S C U L A S
          if copy(senha,i,3) = '100' then
          begin
               decrip := decrip + 'A';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '_!9' then
          begin
               decrip := decrip + 'B';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '_*-' then
          begin
               decrip := decrip + 'C';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'A>a' then
          begin
               decrip := decrip + 'D';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '<*>' then
          begin
               decrip := decrip + 'E';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'x;:' then
          begin
               decrip := decrip + 'F';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '4q5' then
          begin
               decrip := decrip + 'G';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '=_=' then
          begin
               decrip := decrip + 'H';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '...' then
          begin
               decrip := decrip + 'I';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '{u}' then
          begin
               decrip := decrip + 'J';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '/!/' then
          begin
               decrip := decrip + 'K';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '||=' then
          begin
               decrip := decrip + 'L';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = ',<,' then
          begin
               decrip := decrip + 'M';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '`<`' then
          begin
               decrip := decrip + 'N';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '/*?' then
          begin
               decrip := decrip + 'O';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '582' then
          begin
               decrip := decrip + 'P';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '___' then
          begin
               decrip := decrip + 'Q';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '&@#' then
          begin
               decrip := decrip + 'R';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '~~`' then
          begin
               decrip := decrip + 'S';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'jHe' then
          begin
               decrip := decrip + 'T';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'DET' then
          begin
               decrip := decrip + 'U';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '!!!' then
          begin
               decrip := decrip + 'V';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '{q@' then
          begin
               decrip := decrip + 'W';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '@q{' then
          begin
               decrip := decrip + 'X';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '@q}' then
          begin
               decrip := decrip + 'Y';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '}q@' then
          begin
               decrip := decrip + 'Z';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '@!~' then
          begin
               decrip := decrip + '0';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '515' then
          begin
               decrip := decrip + '1';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '(*(' then
          begin
               decrip := decrip + '2';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '63&' then
          begin
               decrip := decrip + '3';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '!1@' then
          begin
               decrip := decrip + '4';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '[[]' then
          begin
               decrip := decrip + '5';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '7 p' then
          begin
               decrip := decrip + '6';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '2@~' then
          begin
               decrip := decrip + '7';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '\9/' then
          begin
               decrip := decrip + '8';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '-+:' then
          begin
               decrip := decrip + '9';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '1w2' then
          begin
               decrip := decrip + '@';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '21w' then
          begin
               decrip := decrip + '~';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '1w3' then
          begin
               decrip := decrip + '!';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '3y4' then
          begin
               decrip := decrip + '$';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'y43' then
          begin
               decrip := decrip + '%';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '5Y7' then
          begin
               decrip := decrip + '^';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '786' then
          begin
               decrip := decrip + '&';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '7x5' then
          begin
               decrip := decrip + '(';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '5!&' then
          begin
               decrip := decrip + ')';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '&ca' then
          begin
               decrip := decrip + '_';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '8y2' then
          begin
               decrip := decrip + '-';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'w29' then
          begin
               decrip := decrip + '+';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '@sv' then
          begin
               decrip := decrip + '=';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '7w8' then
          begin
               decrip := decrip + '{';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '92w' then
          begin
               decrip := decrip + '}';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'REV' then
          begin
               decrip := decrip + '[';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'NAL' then
          begin
               decrip := decrip + ']';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'xzy' then
          begin
               decrip := decrip + '\';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '%d#' then
          begin
               decrip := decrip + '|';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = ':' then
          begin
               decrip := decrip + 'qrs';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = ';' then
          begin
               decrip := decrip + 'tuv';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '982' then
          begin
               decrip := decrip + '"';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'r!?' then
          begin
               decrip := decrip + '<';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'hi1' then
          begin
               decrip := decrip + '>';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = '1ih' then
          begin
               decrip := decrip + ',';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'bd8' then
          begin
               decrip := decrip + '.';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'c#$' then
          begin
               decrip := decrip + '?';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'vfv' then
          begin
               decrip := decrip + '/';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'grm' then
          begin
               decrip := decrip + '*';
               i := i + 3;
          end
          else
          if copy(senha,i,3) = 'jjk' then
          begin
               decrip := decrip + '#';
               i := i + 3;
          end
          else
               i := i + 3;
     end;
     result := decrip;

end;

function TfrmPrincipal.encrip(senha: string): string;
var senha_encrip : string;
    i,j : integer;
    achou : boolean;
    campos : array[0..92] of string;
begin
     campos[0]  := 'a'; campos[1]  := 'b'; campos[2]  := 'c'; campos[3]  := 'd';
     campos[4]  := 'e'; campos[5]  := 'f'; campos[6]  := 'g'; campos[7]  := 'h';
     campos[8]  := 'i'; campos[9]  := 'j'; campos[10] := 'k'; campos[11] := 'l';
     campos[12] := 'm'; campos[13] := 'n'; campos[14] := 'o'; campos[15] := 'p';
     campos[16] := 'q'; campos[17] := 'r'; campos[18] := 's'; campos[19] := 't';
     campos[20] := 'u'; campos[21] := 'v'; campos[22] := 'w'; campos[23] := 'x';
     campos[24] := 'y'; campos[25] := 'z';
     campos[26] := 'A'; campos[27] := 'B'; campos[28] := 'C'; campos[29] := 'D';
     campos[30] := 'E'; campos[31] := 'F'; campos[32] := 'G'; campos[33] := 'H';
     campos[34] := 'I'; campos[35] := 'J'; campos[36] := 'K'; campos[37] := 'L';
     campos[38] := 'M'; campos[39] := 'N'; campos[40] := 'O'; campos[41] := 'P';
     campos[42] := 'Q'; campos[43] := 'R'; campos[44] := 'S'; campos[45] := 'T';
     campos[46] := 'U'; campos[47] := 'V'; campos[48] := 'W'; campos[49] := 'X';
     campos[50] := 'Y'; campos[51] := 'Z';
     campos[52] := '0'; campos[53] := '1'; campos[54] := '2'; campos[55] := '3';
     campos[56] := '4'; campos[57] := '5'; campos[58] := '6'; campos[59] := '7';
     campos[60] := '8'; campos[61] := '9'; campos[62] := ' ';
     campos[63] := '@';
     campos[64] := '~'; campos[65] := '!'; campos[66] := '$'; campos[67] := '%';
     campos[68] := '^'; campos[69] := '&'; campos[70] := '('; campos[71] := ')';
     campos[72] := '_'; campos[73] := '-'; campos[74] := '+'; campos[75] := '=';
     campos[76] := '{'; campos[77] := '}'; campos[78] := '['; campos[79] := ']';
     campos[80] := '\'; campos[81] := '|'; campos[82] := ':'; campos[83] := ';';
     campos[84] := '"'; campos[85] := '<'; campos[86] := '>'; campos[87] := ',';
     campos[88] := '.'; campos[89] := '?'; campos[90] := '/'; campos[91] := '*';
     campos[92] := '#';

     for i := 1 to length(Senha) do
     begin
          achou := false;
          for j := 0 to 92 do
          begin
               if copy(Senha,i,1) = campos[j] then
               begin
                    achou := true;
                    break;
               end;
          end;
          if achou = false then
          begin
               MessageDlg('Existem caracteres inv?lidos para a senha. Por favor verifique!',
                          mtError, [mbOk], 0);
               Abort();
          end;
     end;

     for i := 1 to length(Senha) do
     begin
          if copy(Senha,i,1) = 'a' then
               senha_encrip := senha_encrip + '{$.'
          else
          if copy(Senha,i,1) = 'b' then
               senha_encrip := senha_encrip + '#/!'
          else
          if copy(Senha,i,1) = 'c' then
               senha_encrip := senha_encrip + '/;q'
          else
          if copy(Senha,i,1) = 'd' then
               senha_encrip := senha_encrip + '9&%'
          else
          if copy(Senha,i,1) = 'e' then
               senha_encrip := senha_encrip + 'Y!2'
          else
          if copy(Senha,i,1) = 'f' then
               senha_encrip := senha_encrip + '}:-'
          else
          if copy(Senha,i,1) = 'g' then
               senha_encrip := senha_encrip + '+-*'
          else
          if copy(Senha,i,1) = 'h' then
               senha_encrip := senha_encrip + '~,.'
          else
          if copy(Senha,i,1) = 'i' then
               senha_encrip := senha_encrip + '][\'
          else
          if copy(Senha,i,1) = 'j' then
               senha_encrip := senha_encrip + 's_s'
          else
          if copy(Senha,i,1) = 'k' then
               senha_encrip := senha_encrip + '-=='
          else
          if copy(Senha,i,1) = 'l' then
               senha_encrip := senha_encrip + '..?'
          else
          if copy(Senha,i,1) = 'm' then
               senha_encrip := senha_encrip + '__\'
          else
          if copy(Senha,i,1) = 'n' then
               senha_encrip := senha_encrip + '{}]'
          else
          if copy(Senha,i,1) = 'o' then
               senha_encrip := senha_encrip + '))('
          else
          if copy(Senha,i,1) = 'p' then
               senha_encrip := senha_encrip + '12^'
          else
          if copy(Senha,i,1) = 'q' then
               senha_encrip := senha_encrip + 'A@!'
          else
          if copy(Senha,i,1) = 'r' then
               senha_encrip := senha_encrip + 'q_T'
          else
          if copy(Senha,i,1) = 's' then
               senha_encrip := senha_encrip + '|\}'
          else
          if copy(Senha,i,1) = 't' then
               senha_encrip := senha_encrip + 'ZQi'
          else
          if copy(Senha,i,1) = 'u' then
               senha_encrip := senha_encrip + 'h&*'
          else
          if copy(Senha,i,1) = 'v' then
               senha_encrip := senha_encrip + '`Pp'
          else
          if copy(Senha,i,1) = 'w' then
               senha_encrip := senha_encrip + '89q'
          else
          if copy(Senha,i,1) = 'x' then
               senha_encrip := senha_encrip + 'w90'
          else
          if copy(Senha,i,1) = 'y' then
               senha_encrip := senha_encrip + '7.8'
          else
          if copy(Senha,i,1) = 'z' then
               senha_encrip := senha_encrip + '%36'
          else    // M A I ? S C U L A S        M A I ? S C U L A S
          if copy(Senha,i,1) = 'A' then
               senha_encrip := senha_encrip + '100'
          else
          if copy(Senha,i,1) = 'B' then
               senha_encrip := senha_encrip + '_!9'
          else
          if copy(Senha,i,1) = 'C' then
               senha_encrip := senha_encrip + '_*-'
          else
          if copy(Senha,i,1) = 'D' then
               senha_encrip := senha_encrip + 'A>a'
          else
          if copy(Senha,i,1) = 'E' then
               senha_encrip := senha_encrip + '<*>'
          else
          if copy(Senha,i,1) = 'F' then
               senha_encrip := senha_encrip + 'x;:'
          else
          if copy(Senha,i,1) = 'G' then
               senha_encrip := senha_encrip + '4q5'
          else
          if copy(Senha,i,1) = 'H' then
               senha_encrip := senha_encrip + '=_='
          else
          if copy(Senha,i,1) = 'I' then
               senha_encrip := senha_encrip + '...'
          else
          if copy(Senha,i,1) = 'J' then
               senha_encrip := senha_encrip + '{u}'
          else
          if copy(Senha,i,1) = 'K' then
               senha_encrip := senha_encrip + '/!/'
          else
          if copy(Senha,i,1) = 'L' then
               senha_encrip := senha_encrip + '||='
          else
          if copy(Senha,i,1) = 'M' then
               senha_encrip := senha_encrip + ',<,'
          else
          if copy(Senha,i,1) = 'N' then
               senha_encrip := senha_encrip + '`<`'
          else
          if copy(Senha,i,1) = 'O' then
               senha_encrip := senha_encrip + '/*?'
          else
          if copy(Senha,i,1) = 'P' then
               senha_encrip := senha_encrip + '582'
          else
          if copy(Senha,i,1) = 'Q' then
               senha_encrip := senha_encrip + '___'
          else
          if copy(Senha,i,1) = 'R' then
               senha_encrip := senha_encrip + '&@#'
          else
          if copy(Senha,i,1) = 'S' then
               senha_encrip := senha_encrip + '~~`'
          else
          if copy(Senha,i,1) = 'T' then
               senha_encrip := senha_encrip + 'jHe'
          else
          if copy(Senha,i,1) = 'U' then
               senha_encrip := senha_encrip + 'DET'
          else
          if copy(Senha,i,1) = 'V' then
               senha_encrip := senha_encrip + '!!!'
          else
          if copy(Senha,i,1) = 'W' then
               senha_encrip := senha_encrip + '{q@'
          else
          if copy(Senha,i,1) = 'X' then
               senha_encrip := senha_encrip + '@q{'
          else
          if copy(Senha,i,1) = 'Y' then
               senha_encrip := senha_encrip + '@q}'
          else
          if copy(Senha,i,1) = 'Z' then
               senha_encrip := senha_encrip + '}q@'
          else                   //EM BRANCO    BRANCO
          if copy(Senha,i,1) = ' ' then
               senha_encrip := senha_encrip + '%$%'
          else                          //N?MEROS    N?MEROS
          if copy(Senha,i,1) = '0' then
               senha_encrip := senha_encrip + '@!~'
          else
          if copy(Senha,i,1) = '1' then
               senha_encrip := senha_encrip + '515'
          else
          if copy(Senha,i,1) = '2' then
               senha_encrip := senha_encrip + '(*('
          else
          if copy(Senha,i,1) = '3' then
               senha_encrip := senha_encrip + '63&'
          else
          if copy(Senha,i,1) = '4' then
               senha_encrip := senha_encrip + '!1@'
          else
          if copy(Senha,i,1) = '5' then
               senha_encrip := senha_encrip + '[[]'
          else
          if copy(Senha,i,1) = '6' then
               senha_encrip := senha_encrip + '7 p'
          else
          if copy(Senha,i,1) = '7' then
               senha_encrip := senha_encrip + '2@~'
          else
          if copy(Senha,i,1) = '8' then
               senha_encrip := senha_encrip + '\9/'
          else
          if copy(Senha,i,1) = '9' then
               senha_encrip := senha_encrip + '-+:'
          else                       //CARACTERES ESPECIAIS
          if copy(Senha,i,1) = '@' then
               senha_encrip := senha_encrip + '1w2'
          else
          if copy(Senha,i,1) = '~' then
               senha_encrip := senha_encrip + '21w'
          else
          if copy(Senha,i,1) = '!' then
               senha_encrip := senha_encrip + '1w3'
          else
          if copy(Senha,i,1) = '$' then
               senha_encrip := senha_encrip + '3y4'
          else
          if copy(Senha,i,1) = '%' then
               senha_encrip := senha_encrip + 'y43'
          else
          if copy(Senha,i,1) = '^' then
               senha_encrip := senha_encrip + '5y7'
          else
          if copy(Senha,i,1) = '&' then
               senha_encrip := senha_encrip + '786'
          else
          if copy(Senha,i,1) = '(' then
               senha_encrip := senha_encrip + '7x5'
          else
          if copy(Senha,i,1) = ')' then
               senha_encrip := senha_encrip + '5!&'
          else
          if copy(Senha,i,1) = '_' then
               senha_encrip := senha_encrip + '&ca'
          else
          if copy(Senha,i,1) = '-' then
               senha_encrip := senha_encrip + '8y2'
          else
          if copy(Senha,i,1) = '+' then
               senha_encrip := senha_encrip + 'w29'
          else
          if copy(Senha,i,1) = '=' then
               senha_encrip := senha_encrip + '@sv'
          else
          if copy(Senha,i,1) = '{' then
               senha_encrip := senha_encrip + '7w8'
          else
          if copy(Senha,i,1) = '}' then
               senha_encrip := senha_encrip + '92w'
          else
          if copy(Senha,i,1) = '[' then
               senha_encrip := senha_encrip + 'REV'
          else
          if copy(Senha,i,1) = ']' then
               senha_encrip := senha_encrip + 'NAL'
          else
          if copy(Senha,i,1) = '\' then
               senha_encrip := senha_encrip + 'xzy'
          else
          if copy(Senha,i,1) = '|' then
               senha_encrip := senha_encrip + '%d#'
          else
          if copy(Senha,i,1) = ':' then
               senha_encrip := senha_encrip + 'qrs'
          else
          if copy(Senha,i,1) = ';' then
               senha_encrip := senha_encrip + 'tuv'
          else
          if copy(Senha,i,1) = '"' then
               senha_encrip := senha_encrip + '982'
          else
          if copy(Senha,i,1) = '<' then
               senha_encrip := senha_encrip + 'r!?'
          else
          if copy(Senha,i,1) = '>' then
               senha_encrip := senha_encrip + 'hi1'
          else
          if copy(Senha,i,1) = ',' then
               senha_encrip := senha_encrip + '1ih'
          else
          if copy(Senha,i,1) = '.' then
               senha_encrip := senha_encrip + 'bd8'
          else
          if copy(Senha,i,1) = '?' then
               senha_encrip := senha_encrip + 'c#$'
          else
          if copy(Senha,i,1) = '/' then
               senha_encrip := senha_encrip + 'vfv'
          else
          if copy(Senha,i,1) = '*' then
               senha_encrip := senha_encrip + 'grm'
          else
          if copy(Senha,i,1) = '#' then
               senha_encrip := senha_encrip + 'jjk';
     end;
     result := senha_encrip

end;

function TfrmPrincipal.dataporextenso(Data: TDateTime): String;
var diadasemana: array[1..7] of String; //array dos dias da semana
     meses: array[1..12] of String; //array dos meses
     dianumero: Integer;
     ano, mes, dia: Word;
begin
     diadasemana[1]:= 'Domingo';
     diadasemana[2]:= 'Segunda-feira';
     diadasemana[3]:= 'Ter?a-feira';
     diadasemana[4]:= 'Quarta-feira';
     diadasemana[5]:= 'Quinta-feira';
     diadasemana[6]:= 'Sexta-feira';
     diadasemana[7]:= 'S?bado';
     meses[1]:= 'Janeiro';
     meses[2]:= 'Fevereiro';
     meses[3]:= 'Mar?o';                            
     meses[4]:= 'Abril';                                                                  
     meses[5]:= 'Maio';
     meses[6]:= 'Junho';
     meses[7]:= 'Julho';
     meses[8]:= 'Agosto';
     meses[9]:= 'Setembro';
     meses[10]:= 'Outubro';
     meses[11]:= 'Novembro';
     meses[12]:= 'Dezembro';
     DecodeDate(Data,ano,mes,dia); //separa a data em ano, mes e dia
     dianumero:= DayOfWeek(Data); // determina qual o dia da semana
     Result:= diadasemana[dianumero]+', '+IntToStr(dia)+' de '+meses[mes]+' de '+IntToStr(ano);

end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
     if confirma_senha = false then
          Application.Terminate;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
     Application.OnMessage := DoEnterAsTab;
     frmLogin := TfrmLogin.Create(Application);
     try
          frmLogin.ShowModal();
     finally
          frmLogin.Free();
     end;

end;

procedure TfrmPrincipal.mnuSairClick(Sender: TObject);
begin
     Application.Terminate;
end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Key = 4096)       or
        (key = VK_ESCAPE) or
        (key = vk_ESCAPE)  or
        (Key = 27)         then
          mnuSair.Click();
end;

procedure TfrmPrincipal.mnuTrocaUsuarioClick(Sender: TObject);
begin
     frmLogin := TfrmLogin.Create(Application);
     try
          frmLogin.ShowModal();
     finally
          frmLogin.Free();
     end;
end;

procedure TfrmPrincipal.DoEnterAsTab(var Msg: TMsg; var Handled: Boolean);
begin
     {if Msg.Message = WM_KEYDOWN then
     if Msg.wParam = VK_RETURN then
          Keybd_event(VK_TAB, 0, 0, 0);}
end;


procedure TfrmPrincipal.mnuCompromissoClick(Sender: TObject);
begin
     frmCompromissos := TfrmCompromissos.Create(Application);
     try
          frmCompromissos.ShowModal();
     finally
          frmCompromissos.Free();
     end;
end;

procedure TfrmPrincipal.RelatorioChamados1Click(Sender: TObject);
begin
     frmRelChamados := TfrmRelChamados.Create(Application);
     try
          frmRelChamados.ShowModal();
     finally
          frmRelChamados.Free();
     end;
end;

procedure TfrmPrincipal.mnuParmetrosGeraisClick(Sender: TObject);
begin
     frmParametrosGerais := TfrmParametrosGerais.Create(Application);
     try
          frmParametrosGerais.ShowModal();
     finally
          frmParametrosGerais.Free();
     end;
end;

function TfrmPrincipal.Formata_Data(data_formatada: string): string;
var data_str      : string;
    ano, mes, dia : Word;
begin
     DecodeDate(Date,ano,mes,dia);
     if copy(data_formatada,1,1) <> ' ' then
     begin
          if copy(data_formatada,7,1) = ' ' then
          begin
               data_str       := copy(data_formatada,1,6) + inttostr(ano);
               data_formatada := data_str;
               result         := data_str;
          end
          else
          begin
               if (copy(data_formatada,7,1) <> ' ') and
                  (copy(data_formatada,8,1) =  ' ') then
               begin
                    data_str       := copy(data_formatada,1,6) + copy(inttostr(ano),1,3) + copy(data_formatada,7,1);
                    data_formatada := data_str;
                    result         := data_str;
               end
               else
               if copy(data_formatada,9,1) = ' ' then
               begin
                    data_str       := copy(data_formatada,1,6) + copy(inttostr(ano),1,2) + copy(data_formatada,7,2);
                    data_formatada := data_str;
                    result         := data_str;
               end
          end;
          if (copy(data_formatada,4,1) = '0') and
             (copy(data_formatada,5,1) = '0') then
          begin
               data_str       := copy(data_formatada,1,3) + formatfloat('00',mes) + copy(data_formatada,6,5);
               data_formatada := data_str;
               result         := data_str;
          end
          else
          if (copy(data_formatada,4,1) = ' ') or
             (copy(data_formatada,5,1) = ' ') then
          begin
               if (copy(data_formatada,4,1) = '1') or
                  (copy(data_formatada,5,1) = '1') or
                  (copy(data_formatada,4,1) = '0') or
                  (copy(data_formatada,5,1) = '0') or
                  (copy(data_formatada,4,1) = ' ') or
                  (copy(data_formatada,5,1) = ' ') then
                    data_str       := copy(data_formatada,1,3) + formatfloat('00',mes) + copy(data_formatada,6,5);
               if (copy(data_formatada,4,1) = '2') or
                  (copy(data_formatada,5,1) = '2') then
                    data_str       := copy(data_formatada,1,3) + '02' + copy(data_formatada,6,5);
               if (copy(data_formatada,4,1) = '3') or
                  (copy(data_formatada,5,1) = '3') then
                    data_str       := copy(data_formatada,1,3) + '03' + copy(data_formatada,6,5);
               if (copy(data_formatada,4,1) = '4') or
                  (copy(data_formatada,5,1) = '4') then
                    data_str       := copy(data_formatada,1,3) + '04' + copy(data_formatada,6,5);
               if (copy(data_formatada,4,1) = '5') or
                  (copy(data_formatada,5,1) = '5') then
                    data_str       := copy(data_formatada,1,3) + '05' + copy(data_formatada,6,5);
               if (copy(data_formatada,4,1) = '6') or
                  (copy(data_formatada,5,1) = '6') then
                    data_str       := copy(data_formatada,1,3) + '06' + copy(data_formatada,6,5);
               if (copy(data_formatada,4,1) = '7') or
                  (copy(data_formatada,5,1) = '7') then
                    data_str       := copy(data_formatada,1,3) + '07' + copy(data_formatada,6,5);
               if (copy(data_formatada,4,1) = '8') or
                  (copy(data_formatada,5,1) = '8') then
                    data_str       := copy(data_formatada,1,3) + '08' + copy(data_formatada,6,5);
               if (copy(data_formatada,4,1) = '9') or
                  (copy(data_formatada,5,1) = '9') then
                    data_str       := copy(data_formatada,1,3) + '09' + copy(data_formatada,6,5);

               data_formatada := data_str;
               result         := data_str;
          end;
     end;

end;

procedure TfrmPrincipal.RelCompromissosClick(Sender: TObject);
begin
     frmRelCompromissos := TfrmRelCompromissos.Create(Application);
     try
          frmRelCompromissos.ShowModal();
     finally
          frmRelCompromissos.Free();
     end;
end;

procedure TfrmPrincipal.GraficoChamadosClick(Sender: TObject);
begin
     frmGraficoSituacaoChamado := TfrmGraficoSituacaoChamado.Create(Application);
     try
          frmGraficoSituacaoChamado .ShowModal();
     finally
          frmGraficoSituacaoChamado .Free();
     end;
end;

procedure TfrmPrincipal.RelatriodeTempoCobranaClick(Sender: TObject);
begin
     frmRelTempoCobrancaCliente := TfrmRelTempoCobrancaCliente.Create(Application);
     try
          frmRelTempoCobrancaCliente.ShowModal();
     finally
          frmRelTempoCobrancaCliente.Free();
     end;
end;

procedure TfrmPrincipal.SituaodosChamadosporUsurioClick(Sender: TObject);
begin
     frmGraficoStatusUsuario := TfrmGraficoStatusUsuario.Create(Application);
     try
          frmGraficoStatusUsuario.ShowModal();
     finally
          frmGraficoStatusUsuario.Free();
     end;
end;

procedure TfrmPrincipal.CategoriasdoChamadoporClienteClick(
  Sender: TObject);
begin
     frmGraficoCategoriasporCliente := TfrmGraficoCategoriasporCliente.Create(Application);
     try
          frmGraficoCategoriasporCliente.ShowModal();
     finally
          frmGraficoCategoriasporCliente.Free();
     end;
end;

procedure TfrmPrincipal.OrigemdoChamadoporClienteClick(Sender: TObject);
begin
     frmGraficoOrigemporCliente := TfrmGraficoOrigemporCliente.Create(Application);
     try
          frmGraficoOrigemporCliente.ShowModal();
     finally
          frmGraficoOrigemporCliente.Free();
     end;
end;

procedure TfrmPrincipal.MdulosdoSistema1Click(Sender: TObject);
begin
     frmConModulo := TfrmConModulo.Create(Application);
     try
          frmConModulo.ShowModal();
     finally
          frmConModulo.Free();
     end;
end;

procedure TfrmPrincipal.SituaodosChamadosporClienteClick(Sender: TObject);
begin
     frmGraficoStatusporCliente := TfrmGraficoStatusporCliente.Create(Application);
     try
          frmGraficoStatusporCliente.ShowModal();
     finally
          frmGraficoStatusporCliente.Free();
     end;
end;

procedure TfrmPrincipal.RelatrioCronogramadeAlterClick(Sender: TObject);
begin
     pnlRelCronAlt.Visible := true;
     edtDataFim.Date  := Date;
     edtDataIni.Date  := (Date - 7);
     rdTodos.Checked  := True;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
     pnlRelCronAlt.Visible := False;
end;

procedure TfrmPrincipal.btnGerarClick(Sender: TObject);
begin
     sFinalizado := '';
     dataini     := '';
     datafim     := '';

     if edtDataIni.Date > edtDataFim.Date then
     begin
          ShowMessage('A data inicial n?o pode ser maior que a data final');
          edtDataIni.SetFocus;
          Abort;
     end;


     //==========formatando data do chamado =========//
     dataini := FormatDateTime('yyyy/mm/dd',edtDataIni.Date);
     datafim := FormatDateTime('yyyy/mm/dd',edtDataFim.Date);
     //=================== Verifica status do compromisso ======================//
     if (rdSim.Checked = true) then
          sFinalizado := 'S'
     else if (rdNao.Checked = true) then
          sFinalizado := 'N'
     else
          sFinalizado := '%';


     qryRelAlteracoes.Close;
     qryRelAlteracoes.SQL.Text := 'select * from cronograma_alteracao where data_solicitacao between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                                   ' and finalizado like'+QuotedStr(sFinalizado)+
                                   ' order by data_solicitacao desc';

     qryRelAlteracoes.open;
     cdsRelAlteracoes.Close;
     cdsRelAlteracoes.Open;

     if cdsRelAlteracoes.RecordCount = 0 then
     begin
          ShowMessage('Nenhum dado foi encontrado para os par?metros informados !!');
          edtDataIni.SetFocus;
     end
     else
          ppReport1.PrintReport;

end;


procedure TfrmPrincipal.ppLabel18Print(Sender: TObject);
begin
     if cdsRelAlteracoesfinalizado.AsString = 'S' then
          ppLabel18.Caption := 'Sim'
     else
          ppLabel18.Caption := 'N?o';
end;

procedure TfrmPrincipal.RegistrodeAlteraesClick(Sender: TObject);
begin
     frmRegistroAlteracao := TfrmRegistroAlteracao.Create(Application);
     try
          frmRegistroAlteracao.ShowModal();
     finally
          frmRegistroAlteracao.Free();
     end;
end;

procedure TfrmPrincipal.RelatrioAtualizaesSistema1Click(Sender: TObject);
begin
     qryCliAtualizacao.Close;
     qryCliAtualizacao.SQL.Text := 'select * from cliente where ativo = ''S''' +
                                   ' order by dt_ultima_atualizacao, cod_cliente';

     qryCliAtualizacao.open;
     cdsCliAtualizacao.Close;
     cdsCliAtualizacao.Open;

     if cdsCliAtualizacao.RecordCount = 0 then
     begin
          ShowMessage('Nenhum dado foi encontrado !!');
     end
     else
     begin
          ppReport2.PrintReport;
     end;
end;

procedure TfrmPrincipal.CheckListdeImplantao1Click(Sender: TObject);
begin
     frmConItensChecklist := TfrmConItensChecklist.Create(Application);
     try
          frmConItensChecklist.ShowModal();
     finally
          frmConItensChecklist.Free();
     end;
end;

procedure TfrmPrincipal.RegistroDesenvolvimentoClick(Sender: TObject);
begin
     frmConDesenv := TfrmConDesenv.Create(Application);
     try
          frmConDesenv.ShowModal();
     finally
          frmConDesenv.Free();
     end;
end;

procedure TfrmPrincipal.mnuTelasClick(Sender: TObject);
begin
     frmConTelas := TfrmConTelas.Create(Application);
     try
          frmConTelas.ShowModal();
     finally
          frmConTelas.Free();
     end;
end;

procedure TfrmPrincipal.btnsaidaClick(Sender: TObject);
begin
     Panel3.Visible := False;
end;

procedure TfrmPrincipal.btnGeraClick(Sender: TObject);
var
    cliIni     : String;
    cliFim     : String;
    desenDtIni : String;
    desenDtFim : String;
begin
     cliIni      := '';
     cliFim      := '';
     desenDtIni     := '';
     desenDtFim     := '';

     if edtdtini.Date > edtdtfim.Date then
     begin
          ShowMessage('A data inicial n?o pode ser maior que a data final');
          edtdtini.SetFocus;
          Abort;
     end;

     if edtCliIni.Text = '' then
     begin
          ShowMessage('O cliente inicial n?o pode ser nulo');
          edtCliIni.SetFocus;
          Abort;
     end;

     if edtCliFim.Text = '' then
     begin
          ShowMessage('O cliente final n?o pode ser nulo');
          edtCliFim.SetFocus;
          Abort;
     end;


     //==========formatando data do chamado =========//
     desenDtIni := FormatDateTime('yyyy/mm/dd',edtdtini.Date);
     desenDtFim := FormatDateTime('yyyy/mm/dd',edtdtfim.Date);

     cliIni := edtCliIni.Text;
     cliFim := edtCliFim.Text;

     qryRelDesenv.Close;
     qryRelDesenv.SQL.Text := 'select d.*,c.nome_cliente,u.nome_usuario, t.descricao_categoria '+
                              'from desenvolvimento d, cliente c, usuario u, categoria_chamado t '+
                              'where c.cod_cliente = d.cod_cliente '+
                              'and u.cod_usuario = d.cod_usuario '+
                              'and t.cod_categoria = d.cod_categoria '+
                              'and d.cod_cliente between '+cliIni+' and '+cliFim+
                              ' and d.data_alteracao between '+QuotedStr(desenDtIni)+' and '+QuotedStr(desenDtFim)+
                              ' order by d.data_alteracao, d.cod_cliente';



     qryRelDesenv.open;
     cdsRelDesenv.Close;
     cdsRelDesenv.Open;

     if cdsRelDesenv.RecordCount = 0 then
     begin
          ShowMessage('Nenhum dado foi encontrado para os par?metros informados !!');
          edtdtini.SetFocus;
     end
     else
          ppReport3.PrintReport;
end;

procedure TfrmPrincipal.RelatrioRegistroDesenvolvimento1Click(
  Sender: TObject);
begin
     Panel3.Visible := True;
     edtCliIni.Text := '0';
     edtCliFim.Text := '999999';
     edtdtfim.Date  := Date;
     edtdtini.Date  := (Date - 7);
end;

procedure TfrmPrincipal.edtCliIniDblClick(Sender: TObject);
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

procedure TfrmPrincipal.edtCliFimDblClick(Sender: TObject);
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

procedure TfrmPrincipal.PermissesdeUsurios1Click(Sender: TObject);
begin
     frmClienteUsuario := TfrmClienteUsuario.Create(Application);
     try
          frmClienteUsuario.ShowModal();
     finally
          frmClienteUsuario.Free();
     end;
end;

procedure TfrmPrincipal.Timer_abrirConsultaTimer(Sender: TObject);
begin
     if (definicao = 'RECEBE E-MAIL') then
     begin
          frmConChamados := TfrmConChamados.Create(Application);
          try
               frmConChamados.ShowModal();
          finally
               frmConChamados.Free();
          end;
     end;

end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TfrmPrincipal.RegistrosBloqueados1Click(Sender: TObject);
begin
     frmBloqueados := TfrmBloqueados.Create(Application);
     try
          frmBloqueados.ShowModal();
     finally frmBloqueados.Free(); end;
     frmBloqueados := nil;
     frmPrincipal.SetFocus;
end;

procedure TfrmPrincipal.Agenda1Click(Sender: TObject);
begin
     frmConAgenda := TfrmConAgenda.Create(Application);
     try
          frmConAgenda.ShowModal();
     finally
          frmConAgenda.Free();
     end;
     
end;

procedure TfrmPrincipal.Image1Click(Sender: TObject);
begin
     frmConAgenda := TfrmConAgenda.Create(Application);
     try
          frmConAgenda.ShowModal();
     finally
          frmConAgenda.Free();
     end;
end;

procedure TfrmPrincipal.Image3Click(Sender: TObject);
begin
     dmPrincipal.qryChamados.Close;
     dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where '+
                                         ' cod_chamado    ='+ '-1'+
                                         ' order by cod_chamado desc limit 1';
     dmPrincipal.qryChamados.Open;
     dmPrincipal.cdsChamados.Close;
     dmPrincipal.cdsChamados.Open;
     dmPrincipal.cdsChamados.Append;
     if not Assigned(frmCadChamados) then
          frmCadChamados := TfrmCadChamados.Create(Self);
     try
          frmCadChamados.ShowModal;
     finally
          frmCadChamados.Free;
     end;
     dmPrincipal.qryChamados.Refresh;
     dmPrincipal.cdsChamados.Refresh;
     frmCadChamados := nil;
end;

procedure TfrmPrincipal.PerguntasdaPesquisaClick(Sender: TObject);
begin
     frmPesquisa := TfrmPesquisa.Create(Application);
     try
          frmPesquisa.ShowModal();
     finally
          frmPesquisa.Free();
     end;
end;

end.
