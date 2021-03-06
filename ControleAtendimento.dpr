program ControleAtendimento;

uses
  Forms,
  uMNTCATEGORIA in 'uMNTCATEGORIA.pas' {frmCadCategoria},
  uMNTSTATUS in 'uMNTSTATUS.pas' {frmStatus},
  uPRINCIPAL in 'uPRINCIPAL.pas' {frmPrincipal},
  uMNTAREA in 'uMNTAREA.pas' {frmCadArea},
  uMNTUSUARIO in 'uMNTUSUARIO.pas' {frmCadUsuario},
  uMNTBASEDADOS in 'uMNTBASEDADOS.pas' {frmBaseDados},
  pgeLicense in 'pgeLicense.pas',
  uMNTCHECKLIST in 'uMNTCHECKLIST.pas' {frmCadChecklist},
  uMNTREPORTVISITAS in 'uMNTREPORTVISITAS.pas' {frmReportVisita},
  uMNTCHAMADOS in 'uMNTCHAMADOS.pas' {frmCadChamados},
  uMNTMOVIMENTOCHAMADO in 'uMNTMOVIMENTOCHAMADO.pas' {frmCadMovimentoChamado},
  DTMPRINCIPAL in 'DTMPRINCIPAL.pas' {dmPrincipal: TDataModule},
  uCONAREA in 'uCONAREA.pas' {frmConAreas},
  uCONSTATUS in 'uCONSTATUS.pas' {frmConStatus},
  uCONCATEGORIA in 'uCONCATEGORIA.pas' {frmConCategoria},
  uCONBASECONHECIMENTO in 'uCONBASECONHECIMENTO.pas' {frmConBaseConhecimento},
  uCONREPORTVISITAS in 'uCONREPORTVISITAS.pas' {frmConReportVisita},
  uUSUARIOS in 'uUSUARIOS.pas' {frmConUsuarios},
  uCONCHECKLIST in 'uCONCHECKLIST.pas' {frmConItensChecklist},
  uCONCHAMADOS in 'uCONCHAMADOS.pas' {frmConChamados},
  uLOGIN in 'uLOGIN.pas' {frmLogin},
  uMAIL in 'uMAIL.pas' {frmAddMail},
  uCONCOMPCLIENTE in 'uCONCOMPCLIENTE.pas' {frmCompromissos},
  uMNTCOMPCLIENTE in 'uMNTCOMPCLIENTE.pas' {frmCadCompromisso},
  uRELCHAMADOS in 'uRELCHAMADOS.pas' {frmRelChamados},
  uPARAMETROSGERAIS in 'uPARAMETROSGERAIS.pas' {frmParametrosGerais},
  uMNTPARAMGERAIS in 'uMNTPARAMGERAIS.pas' {frmCadParametros},
  uRELCOMPROMISSOS in 'uRELCOMPROMISSOS.pas' {frmRelCompromissos},
  uGRAFICOCHAMADO in 'uGRAFICOCHAMADO.pas' {frmGraficoSituacaoChamado},
  uRELTEMPOCOBRANCA in 'uRELTEMPOCOBRANCA.pas' {frmRelTempoCobrancaCliente},
  uGRAFICOPORUSUARIO in 'uGRAFICOPORUSUARIO.pas' {frmGraficoStatusUsuario},
  uGRAFICOCATEGORIAPORCLIENTE in 'uGRAFICOCATEGORIAPORCLIENTE.pas' {frmGraficoCategoriasporCliente},
  uGRAFICOORIGEMPORCLIENTE in 'uGRAFICOORIGEMPORCLIENTE.pas' {frmGraficoOrigemporCliente},
  uGRAFICOUSUARIOLOGADO in 'uGRAFICOUSUARIOLOGADO.pas' {Form1},
  uMNTMODULOS in 'uMNTMODULOS.pas' {frmCadModulo},
  uCONMODULOS in 'uCONMODULOS.pas' {frmConModulo},
  uMNTDETALHEMODULO in 'uMNTDETALHEMODULO.pas' {frmDetalheModulo},
  uGRAFICOSTATUSPORCLIENTE in 'uGRAFICOSTATUSPORCLIENTE.pas' {frmGraficoStatusporCliente},
  uPROCEDIMENTOADOTADO in 'uPROCEDIMENTOADOTADO.pas' {frmProcedimentoAdotado},
  uBUSCAEMAIL in 'uBUSCAEMAIL.pas' {frmBuscaEmail},
  uCRONOGRAMA_ALT in 'uCRONOGRAMA_ALT.pas' {frmCronogramaAlteracoes},
  uCONREGALTERACAO in 'uCONREGALTERACAO.pas' {frmRegistroAlteracao},
  uMNTREGALTERACAO in 'uMNTREGALTERACAO.pas' {frmMntRegistroAlteracao},
  uMNTCLIENTES in 'uMNTCLIENTES.pas' {frmCadClientes},
  uCONCLIENTES in 'uCONCLIENTES.pas' {frmConClientes},
  uMNTDESENV in 'uMNTDESENV.pas' {frmManutencaoDesenv},
  uCONDESENV in 'uCONDESENV.pas' {frmConDesenv},
  uMNTTELAS in 'uMNTTELAS.pas' {frmTelas},
  uCONTELAS in 'uCONTELAS.pas' {frmConTelas},
  EMAIL_MOVIMENTACAO in 'EMAIL_MOVIMENTACAO.pas' {frmInfoEmailMov},
  uCLIENTEUSUARIO in 'uCLIENTEUSUARIO.pas' {frmClienteUsuario},
  uMNTCLIENTEUSUARIO in 'uMNTCLIENTEUSUARIO.pas' {frmMntClienteUsuario},
  BLOQUEADOS in 'BLOQUEADOS.pas' {frmBloqueados},
  uMNTAGENDA in 'uMNTAGENDA.pas' {frmMntAgenda},
  uCONAGENDA in 'uCONAGENDA.pas' {frmConAgenda},
  uCONPESQUISA in 'uCONPESQUISA.pas' {frmPesquisa},
  uMNTPESQUISA in 'uMNTPESQUISA.pas' {frmCadPesquisa};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmCadModulo, frmCadModulo);
  Application.CreateForm(TfrmConModulo, frmConModulo);
  Application.CreateForm(TfrmDetalheModulo, frmDetalheModulo);
  Application.CreateForm(TfrmGraficoStatusporCliente, frmGraficoStatusporCliente);
  Application.CreateForm(TfrmProcedimentoAdotado, frmProcedimentoAdotado);
  Application.CreateForm(TfrmBuscaEmail, frmBuscaEmail);
  Application.CreateForm(TfrmCronogramaAlteracoes, frmCronogramaAlteracoes);
  Application.CreateForm(TfrmRegistroAlteracao, frmRegistroAlteracao);
  Application.CreateForm(TfrmMntRegistroAlteracao, frmMntRegistroAlteracao);
  Application.CreateForm(TfrmCadClientes, frmCadClientes);
  Application.CreateForm(TfrmConClientes, frmConClientes);
  Application.CreateForm(TfrmManutencaoDesenv, frmManutencaoDesenv);
  Application.CreateForm(TfrmConDesenv, frmConDesenv);
  Application.CreateForm(TfrmTelas, frmTelas);
  Application.CreateForm(TfrmConTelas, frmConTelas);
  Application.CreateForm(TfrmInfoEmailMov, frmInfoEmailMov);
  Application.CreateForm(TfrmClienteUsuario, frmClienteUsuario);
  Application.CreateForm(TfrmMntClienteUsuario, frmMntClienteUsuario);
  Application.CreateForm(TfrmBloqueados, frmBloqueados);
  Application.CreateForm(TfrmMntAgenda, frmMntAgenda);
  Application.CreateForm(TfrmConAgenda, frmConAgenda);
  Application.Run;
end.
