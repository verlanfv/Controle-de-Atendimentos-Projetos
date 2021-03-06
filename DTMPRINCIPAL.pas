unit DTMPRINCIPAL;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr, Inifiles, Windows, Messages, Dialogs;

type
  TdmPrincipal = class(TDataModule)
    conpg: TSQLConnection;
    qryStatus: TSQLQuery;
    dspStatus: TDataSetProvider;
    cdsStatus: TClientDataSet;
    qryStatuscod_status: TIntegerField;
    qryStatusdescricao_status: TStringField;
    qryStatusencerra_chamado: TStringField;
    cdsStatuscod_status: TIntegerField;
    cdsStatusdescricao_status: TStringField;
    cdsStatusencerra_chamado: TStringField;
    qryArea: TSQLQuery;
    dspArea: TDataSetProvider;
    cdsArea: TClientDataSet;
    qryAreacod_area: TIntegerField;
    qryAreadescricao_area: TStringField;
    cdsAreacod_area: TIntegerField;
    cdsAreadescricao_area: TStringField;
    qryCategoria: TSQLQuery;
    dspCategoria: TDataSetProvider;
    cdsCategoria: TClientDataSet;
    qryCategoriacod_categoria: TIntegerField;
    qryCategoriadescricao_categoria: TStringField;
    cdsCategoriacod_categoria: TIntegerField;
    cdsCategoriadescricao_categoria: TStringField;
    qryBaseConhecimento: TSQLQuery;
    dspBase: TDataSetProvider;
    cdsBaseConhecimento: TClientDataSet;
    qryBaseConhecimentocod_solucao: TIntegerField;
    cdsBaseConhecimentocod_solucao: TIntegerField;
    qryUsuarios: TSQLQuery;
    dspUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    qryUsuarioscod_usuario: TIntegerField;
    qryUsuarioslogin: TStringField;
    qryUsuarioscod_area: TIntegerField;
    qryUsuariosdefinicao_usuario: TStringField;
    qryUsuariosmail: TStringField;
    qryUsuariospermite_ver_todos_chmados: TStringField;
    qryUsuariosativo: TStringField;
    qryUsuariosnome_usuario: TStringField;
    qryUsuarioshost_mail: TStringField;
    qryUsuariossenha_conta: TStringField;
    cdsUsuariocod_usuario: TIntegerField;
    cdsUsuariologin: TStringField;
    cdsUsuariocod_area: TIntegerField;
    cdsUsuariodefinicao_usuario: TStringField;
    cdsUsuariomail: TStringField;
    cdsUsuariopermite_ver_todos_chmados: TStringField;
    cdsUsuarioativo: TStringField;
    cdsUsuarionome_usuario: TStringField;
    cdsUsuariohost_mail: TStringField;
    cdsUsuariosenha_conta: TStringField;
    qryReport: TSQLQuery;
    dspReport: TDataSetProvider;
    cdsReport: TClientDataSet;
    qryReportcod_report: TIntegerField;
    qryReportcod_cliente: TIntegerField;
    qryReporttarefa_executada: TStringField;
    qryReportdata_visita: TDateField;
    qryReportnecessita_nova_visita: TStringField;
    qryReportmotivo_nova_visita: TStringField;
    qryReportcod_usuario_visita: TIntegerField;
    qryReporttempo_gasto: TFMTBCDField;
    cdsReportcod_report: TIntegerField;
    cdsReportcod_cliente: TIntegerField;
    cdsReporttarefa_executada: TStringField;
    cdsReportdata_visita: TDateField;
    cdsReportnecessita_nova_visita: TStringField;
    cdsReportmotivo_nova_visita: TStringField;
    cdsReportcod_usuario_visita: TIntegerField;
    cdsReporttempo_gasto: TFMTBCDField;
    qryClientes: TSQLQuery;
    dspClientes: TDataSetProvider;
    cdsClientes: TClientDataSet;
    qryClientescod_cliente: TIntegerField;
    qryClientesnome_cliente: TStringField;
    qryClientesnome_fantasia: TStringField;
    qryClientesendereco: TStringField;
    qryClientesbairro: TStringField;
    qryClientesfone: TStringField;
    qryClientesativo: TStringField;
    qryClientesnome_cidade: TStringField;
    qryClientesuf: TStringField;
    cdsClientescod_cliente: TIntegerField;
    cdsClientesnome_cliente: TStringField;
    cdsClientesnome_fantasia: TStringField;
    cdsClientesendereco: TStringField;
    cdsClientesbairro: TStringField;
    cdsClientesfone: TStringField;
    cdsClientesativo: TStringField;
    cdsClientesnome_cidade: TStringField;
    cdsClientesuf: TStringField;
    qryTemp: TSQLQuery;
    qryChamados: TSQLQuery;
    dspChamados: TDataSetProvider;
    cdsChamados: TClientDataSet;
    qryMovChamado: TSQLQuery;
    dspMovimento: TDataSetProvider;
    cdsMovChamado: TClientDataSet;
    qryMovChamadocod_movimento: TIntegerField;
    qryMovChamadocod_chamado: TIntegerField;
    qryMovChamadocod_status: TIntegerField;
    qryMovChamadodesc_status: TStringField;
    qryMovChamadocod_usuario: TIntegerField;
    qryMovChamadonome_usuario_resp: TStringField;
    qryMovChamadonivel_prioridade: TStringField;
    qryMovChamadodata_movimento: TDateField;
    qryMovChamadotempo_gasto: TFMTBCDField;
    qryMovChamadoobservacao: TStringField;
    cdsMovChamadocod_movimento: TIntegerField;
    cdsMovChamadocod_chamado: TIntegerField;
    cdsMovChamadocod_status: TIntegerField;
    cdsMovChamadodesc_status: TStringField;
    cdsMovChamadocod_usuario: TIntegerField;
    cdsMovChamadonome_usuario_resp: TStringField;
    cdsMovChamadonivel_prioridade: TStringField;
    cdsMovChamadodata_movimento: TDateField;
    cdsMovChamadotempo_gasto: TFMTBCDField;
    cdsMovChamadoobservacao: TStringField;
    qryChamadoscod_chamado: TIntegerField;
    qryChamadoscod_cliente: TIntegerField;
    qryChamadoscod_status: TIntegerField;
    qryChamadoscod_categoria: TIntegerField;
    qryChamadosnome_cliente: TStringField;
    qryChamadosdesc_status: TStringField;
    qryChamadosdesc_categoria: TStringField;
    qryChamadosdata_chamado: TDateField;
    qryChamadoshora_chamado: TTimeField;
    qryChamadosprazo_fim_chamdo: TDateField;
    qryChamadoschamado_automatico: TStringField;
    qryChamadosnivel_prioridade: TStringField;
    cdsChamadoscod_chamado: TIntegerField;
    cdsChamadoscod_cliente: TIntegerField;
    cdsChamadoscod_status: TIntegerField;
    cdsChamadoscod_categoria: TIntegerField;
    cdsChamadosnome_cliente: TStringField;
    cdsChamadosdesc_status: TStringField;
    cdsChamadosdesc_categoria: TStringField;
    cdsChamadosdata_chamado: TDateField;
    cdsChamadoshora_chamado: TTimeField;
    cdsChamadosprazo_fim_chamdo: TDateField;
    cdsChamadoschamado_automatico: TStringField;
    cdsChamadosnivel_prioridade: TStringField;
    qryChamadoscod_usuario_resp: TIntegerField;
    qryChamadosnome_usuario_resp: TStringField;
    cdsChamadoscod_usuario_resp: TIntegerField;
    cdsChamadosnome_usuario_resp: TStringField;
    qryMovChamadocod_usuario_mov: TIntegerField;
    qryMovChamadonome_usuario_mov: TStringField;
    cdsMovChamadocod_usuario_mov: TIntegerField;
    cdsMovChamadonome_usuario_mov: TStringField;
    qryChamadosnome_usuario_abriu: TStringField;
    qryChamadoscod_usuario_abriu: TIntegerField;
    cdsChamadosnome_usuario_abriu: TStringField;
    cdsChamadoscod_usuario_abriu: TIntegerField;
    qryChamadosfuncionario_emp: TStringField;
    cdsChamadosfuncionario_emp: TStringField;
    qryMovChamadodata_fim: TDateField;
    qryMovChamadohora_inic: TTimeField;
    qryMovChamadohora_fim: TTimeField;
    cdsMovChamadodata_fim: TDateField;
    cdsMovChamadohora_inic: TTimeField;
    cdsMovChamadohora_fim: TTimeField;
    qryChamadosorigem_chamado: TStringField;
    cdsChamadosorigem_chamado: TStringField;
    qryBaseConhecimentodesc_solucao: TStringField;
    qryBaseConhecimentodesc_problema: TStringField;
    cdsBaseConhecimentodesc_solucao: TStringField;
    cdsBaseConhecimentodesc_problema: TStringField;
    qryBaseConhecimentopalavra_chave: TStringField;
    cdsBaseConhecimentopalavra_chave: TStringField;
    qryChamadostempo_gasto: TFMTBCDField;
    cdsChamadostempo_gasto: TFMTBCDField;
    qryChamadosdata_final: TDateField;
    qryChamadoshora_final: TTimeField;
    cdsChamadosdata_final: TDateField;
    cdsChamadoshora_final: TTimeField;
    qryClientesdominio: TStringField;
    qryClientesarq_cliente: TStringField;
    cdsClientesdominio: TStringField;
    cdsClientesarq_cliente: TStringField;
    qryMail: TSQLQuery;
    dspMail: TDataSetProvider;
    cdsMail: TClientDataSet;
    cdsMailcod_cliente: TIntegerField;
    cdsMailemail_1: TStringField;
    cdsMailemail_2: TStringField;
    cdsMailemail_3: TStringField;
    cdsMailemail_4: TStringField;
    cdsMailemail_5: TStringField;
    cdsMailnome: TStringField;
    qryMailcod_cliente: TIntegerField;
    qryMailemail_1: TStringField;
    qryMailemail_2: TStringField;
    qryMailemail_3: TStringField;
    qryMailemail_4: TStringField;
    qryMailemail_5: TStringField;
    qryMailnome: TStringField;
    qryMailemail_6: TStringField;
    qryMailemail_7: TStringField;
    qryMailemail_8: TStringField;
    cdsMailemail_6: TStringField;
    cdsMailemail_7: TStringField;
    cdsMailemail_8: TStringField;
    qryCompromissos: TSQLQuery;
    dspCompromisso: TDataSetProvider;
    cdsCompromissos: TClientDataSet;
    qryCompromissoscod_cliente: TIntegerField;
    qryCompromissosnome_cliente: TStringField;
    qryCompromissossolicitante: TStringField;
    qryCompromissoscod_usuario: TIntegerField;
    qryCompromissosnome_usuario: TStringField;
    qryCompromissosdata: TDateField;
    qryCompromissoshora: TTimeField;
    qryCompromissoslocal: TStringField;
    qryCompromissosobservacao: TStringField;
    cdsCompromissoscod_cliente: TIntegerField;
    cdsCompromissosnome_cliente: TStringField;
    cdsCompromissossolicitante: TStringField;
    cdsCompromissoscod_usuario: TIntegerField;
    cdsCompromissosnome_usuario: TStringField;
    cdsCompromissosdata: TDateField;
    cdsCompromissoshora: TTimeField;
    cdsCompromissoslocal: TStringField;
    cdsCompromissosobservacao: TStringField;
    qryCompromissoscod_compromisso: TIntegerField;
    cdsCompromissoscod_compromisso: TIntegerField;
    qryReportnome_usuario: TStringField;
    qryReportnome_cliente: TStringField;
    cdsReportnome_usuario: TStringField;
    cdsReportnome_cliente: TStringField;
    dspParametros: TDataSetProvider;
    cdsParametros: TClientDataSet;
    qryParametros: TSQLQuery;
    qryParametrosporta_serv_entrada: TStringField;
    qryParametrosserv_entrada_email: TStringField;
    qryParametrosusuario: TStringField;
    qryParametrossenha: TStringField;
    qryParametroscod_cli_padrao: TIntegerField;
    qryParametrosnome_cli_padrao: TStringField;
    qryParametroscod_categoria_padrao: TIntegerField;
    qryParametrosdesc_categoria_padrao: TStringField;
    qryParametroscod_status_padrao: TIntegerField;
    qryParametrosdesc_status_padrao: TStringField;
    qryParametrosprioridade: TStringField;
    qryParametrosorigem_chamado: TStringField;
    qryParametrosparametro: TIntegerField;
    cdsParametrosporta_serv_entrada: TStringField;
    cdsParametrosserv_entrada_email: TStringField;
    cdsParametrosusuario: TStringField;
    cdsParametrossenha: TStringField;
    cdsParametroscod_cli_padrao: TIntegerField;
    cdsParametrosnome_cli_padrao: TStringField;
    cdsParametroscod_categoria_padrao: TIntegerField;
    cdsParametrosdesc_categoria_padrao: TStringField;
    cdsParametroscod_status_padrao: TIntegerField;
    cdsParametrosdesc_status_padrao: TStringField;
    cdsParametrosprioridade: TStringField;
    cdsParametrosorigem_chamado: TStringField;
    cdsParametrosparametro: TIntegerField;
    qryMovChamadodata_chamado: TDateField;
    cdsMovChamadodata_chamado: TDateField;
    qryParametrosultimo_chamado: TIntegerField;
    cdsParametrosultimo_chamado: TIntegerField;
    qryParametrosano_chamado: TIntegerField;
    cdsParametrosano_chamado: TIntegerField;
    qryReportresultados: TStringField;
    cdsReportresultados: TStringField;
    qryCompromissosfinalizado: TStringField;
    cdsCompromissosfinalizado: TStringField;
    qryChamadosgera_compromisso: TStringField;
    cdsChamadosgera_compromisso: TStringField;
    qryMovChamadogera_compromisso: TStringField;
    cdsMovChamadogera_compromisso: TStringField;
    qryParametrosporta_serv_saida: TStringField;
    qryParametrosserv_saida_email: TStringField;
    qryParametrosusuario_saida: TStringField;
    qryParametrossenha_saida: TStringField;
    qryParametrosemail_envio: TStringField;
    cdsParametrosporta_serv_saida: TStringField;
    cdsParametrosserv_saida_email: TStringField;
    cdsParametrosusuario_saida: TStringField;
    cdsParametrossenha_saida: TStringField;
    cdsParametrosemail_envio: TStringField;
    qryUsuariosusuario_conta: TStringField;
    qryUsuariosporta_serv_saida: TStringField;
    cdsUsuariousuario_conta: TStringField;
    cdsUsuarioporta_serv_saida: TStringField;
    qryCompromissoscod_chamado: TIntegerField;
    qryCompromissosdata_chamado: TDateField;
    cdsCompromissoscod_chamado: TIntegerField;
    cdsCompromissosdata_chamado: TDateField;
    qryReportcod_compromisso: TIntegerField;
    qryReportcod_chamado: TIntegerField;
    qryReportdata_chamado: TDateField;
    cdsReportcod_compromisso: TIntegerField;
    cdsReportcod_chamado: TIntegerField;
    cdsReportdata_chamado: TDateField;
    qryReporthora_ini: TTimeField;
    qryReporthora_fim: TTimeField;
    cdsReporthora_ini: TTimeField;
    cdsReporthora_fim: TTimeField;
    qryUsuariossenha: TStringField;
    cdsUsuariosenha: TStringField;
    qryChamadostempo_cobranca: TFMTBCDField;
    cdsChamadostempo_cobranca: TFMTBCDField;
    qryReportcaminho_arq: TStringField;
    cdsReportcaminho_arq: TStringField;
    qryChamadosreincidencia: TStringField;
    cdsChamadosreincidencia: TStringField;
    qryChamadoshora_gravacao: TTimeField;
    qryChamadosdata_gravacao: TDateField;
    cdsChamadoshora_gravacao: TTimeField;
    cdsChamadosdata_gravacao: TDateField;
    qryMovChamadodata_gravacao: TDateField;
    cdsMovChamadodata_gravacao: TDateField;
    qryMovChamadohora_gravacao: TTimeField;
    cdsMovChamadohora_gravacao: TTimeField;
    qryClientesmail: TStringField;
    cdsClientesmail: TStringField;
    qryModulo: TSQLQuery;
    dspModulo: TDataSetProvider;
    cdsModulo: TClientDataSet;
    qryModulocod_modulo: TIntegerField;
    qryModulodesc_modulo: TStringField;
    cdsModulocod_modulo: TIntegerField;
    cdsModulodesc_modulo: TStringField;
    qryReportdetalhamento_motivo: TStringField;
    cdsReportdetalhamento_motivo: TStringField;
    qryDetalheModulo: TSQLQuery;
    dspDetalhe: TDataSetProvider;
    cdsDetalheModulo: TClientDataSet;
    qryDetalheModulocod_report: TIntegerField;
    qryDetalheModulocod_modulo: TIntegerField;
    qryDetalheModulonome_modulo: TStringField;
    qryDetalheModulodetalhamento_modulo: TStringField;
    cdsDetalheModulocod_report: TIntegerField;
    cdsDetalheModulocod_modulo: TIntegerField;
    cdsDetalheModulonome_modulo: TStringField;
    cdsDetalheModulodetalhamento_modulo: TStringField;
    qryDetalheModulocod_chamado: TIntegerField;
    qryDetalheModulodata_chamado: TDateField;
    qryDetalheModulocod_compromisso: TIntegerField;
    cdsDetalheModulocod_chamado: TIntegerField;
    cdsDetalheModulodata_chamado: TDateField;
    cdsDetalheModulocod_compromisso: TIntegerField;
    qryReportcontato: TStringField;
    cdsReportcontato: TStringField;
    qryCategoriaenvia_email: TStringField;
    cdsCategoriaenvia_email: TStringField;
    qryReportmotivo_treinamento: TStringField;
    qryReportmotivo_duvidas_cliente: TStringField;
    qryReportmotivo_levantamento_dados: TStringField;
    qryReportmotivo_outros: TStringField;
    qryReportmotivo_analise_oper: TStringField;
    qryReportmotivo_config_sistema: TStringField;
    qryReportmotivo_analise_erro: TStringField;
    cdsReportmotivo_treinamento: TStringField;
    cdsReportmotivo_duvidas_cliente: TStringField;
    cdsReportmotivo_levantamento_dados: TStringField;
    cdsReportmotivo_outros: TStringField;
    cdsReportmotivo_analise_oper: TStringField;
    cdsReportmotivo_config_sistema: TStringField;
    cdsReportmotivo_analise_erro: TStringField;
    qryChamadossolicitacao: TStringField;
    cdsChamadossolicitacao: TStringField;
    qryChamadosproc_adotado: TStringField;
    cdsChamadosproc_adotado: TStringField;
    qryChamadosemail_solicitante: TStringField;
    cdsChamadosemail_solicitante: TStringField;
    qryBuscaEmails: TSQLQuery;
    qryBuscaEmailscod_cliente: TIntegerField;
    qryBuscaEmailsemail_1: TStringField;
    qryBuscaEmailsemail_2: TStringField;
    qryBuscaEmailsemail_3: TStringField;
    qryBuscaEmailsemail_4: TStringField;
    qryBuscaEmailsemail_5: TStringField;
    qryBuscaEmailsnome: TStringField;
    qryBuscaEmailsemail_6: TStringField;
    qryBuscaEmailsemail_7: TStringField;
    qryBuscaEmailsemail_8: TStringField;
    qryMailcontato_1: TStringField;
    qryMailcontato_2: TStringField;
    qryMailcontato_3: TStringField;
    qryMailcontato_4: TStringField;
    qryMailcontato_5: TStringField;
    qryMailcontato_6: TStringField;
    qryMailcontato_7: TStringField;
    qryMailcontato_8: TStringField;
    cdsMailcontato_1: TStringField;
    cdsMailcontato_2: TStringField;
    cdsMailcontato_3: TStringField;
    cdsMailcontato_4: TStringField;
    cdsMailcontato_5: TStringField;
    cdsMailcontato_6: TStringField;
    cdsMailcontato_7: TStringField;
    cdsMailcontato_8: TStringField;
    qryBuscaEmailscontato_1: TStringField;
    qryBuscaEmailscontato_2: TStringField;
    qryBuscaEmailscontato_3: TStringField;
    qryBuscaEmailscontato_4: TStringField;
    qryBuscaEmailscontato_5: TStringField;
    qryBuscaEmailscontato_6: TStringField;
    qryBuscaEmailscontato_7: TStringField;
    qryBuscaEmailscontato_8: TStringField;
    qryCategoriatipo_categoria: TStringField;
    cdsCategoriatipo_categoria: TStringField;
    qryCronogramaAlt: TSQLQuery;
    dspCronograma: TDataSetProvider;
    cdsCronogramaAlt: TClientDataSet;
    qryCronogramaAltcod_chamado: TIntegerField;
    qryCronogramaAltdt_prev_entrega: TDateField;
    qryCronogramaAlttempo_prev_alteracao: TFMTBCDField;
    qryCronogramaAltcod_cliente: TIntegerField;
    qryCronogramaAltnome_cliente: TStringField;
    qryCronogramaAltcod_modulo: TIntegerField;
    qryCronogramaAltdesc_modulo: TStringField;
    qryCronogramaAltnome_programa: TStringField;
    qryCronogramaAltdesc_alteracao_prevista: TStringField;
    qryCronogramaAltdesc_alteracao_efetivada: TStringField;
    qryCronogramaAltfinalizado: TStringField;
    qryCronogramaAltcod_usr_responsavel: TIntegerField;
    qryCronogramaAltnome_usr_responsavel: TStringField;
    cdsCronogramaAltcod_chamado: TIntegerField;
    cdsCronogramaAltdt_prev_entrega: TDateField;
    cdsCronogramaAlttempo_prev_alteracao: TFMTBCDField;
    cdsCronogramaAltcod_cliente: TIntegerField;
    cdsCronogramaAltnome_cliente: TStringField;
    cdsCronogramaAltcod_modulo: TIntegerField;
    cdsCronogramaAltdesc_modulo: TStringField;
    cdsCronogramaAltnome_programa: TStringField;
    cdsCronogramaAltdesc_alteracao_prevista: TStringField;
    cdsCronogramaAltdesc_alteracao_efetivada: TStringField;
    cdsCronogramaAltfinalizado: TStringField;
    cdsCronogramaAltcod_usr_responsavel: TIntegerField;
    cdsCronogramaAltnome_usr_responsavel: TStringField;
    qryCronogramaAltcod_categoria: TIntegerField;
    qryCronogramaAltdesc_categoria: TStringField;
    cdsCronogramaAltcod_categoria: TIntegerField;
    cdsCronogramaAltdesc_categoria: TStringField;
    qryChamadosgera_cronograma_alt: TStringField;
    cdsChamadosgera_cronograma_alt: TStringField;
    qryCronogramaAltdt_finalizacao: TDateField;
    qryCronogramaAltHr_finalizacao: TTimeField;
    qryCronogramaAlttempo_gasto: TFMTBCDField;
    cdsCronogramaAltdt_finalizacao: TDateField;
    cdsCronogramaAltHr_finalizacao: TTimeField;
    cdsCronogramaAlttempo_gasto: TFMTBCDField;
    qryCronogramaAltdata_solicitacao: TDateField;
    cdsCronogramaAltdata_solicitacao: TDateField;
    qryMovChamadogera_cronograma_alt: TStringField;
    cdsMovChamadogera_cronograma_alt: TStringField;
    qryRegAlteracao: TSQLQuery;
    dspRegistro: TDataSetProvider;
    cdsRegAlteracao: TClientDataSet;
    qryRegAlteracaocod_reg_alteracao: TIntegerField;
    qryRegAlteracaodesc_alteracao: TStringField;
    qryRegAlteracaodata_alteracao: TDateField;
    qryRegAlteracaodesc_programa: TStringField;
    qryRegAlteracaodesc_modulo_sistema: TStringField;
    qryRegAlteracaodesc_tela: TStringField;
    qryRegAlteracaocod_responsavel: TIntegerField;
    qryRegAlteracaonome_responsavel: TStringField;
    cdsRegAlteracaocod_reg_alteracao: TIntegerField;
    cdsRegAlteracaodesc_alteracao: TStringField;
    cdsRegAlteracaodata_alteracao: TDateField;
    cdsRegAlteracaodesc_programa: TStringField;
    cdsRegAlteracaodesc_modulo_sistema: TStringField;
    cdsRegAlteracaodesc_tela: TStringField;
    cdsRegAlteracaocod_responsavel: TIntegerField;
    cdsRegAlteracaonome_responsavel: TStringField;
    qryUsuariosreceber_reg_alteracao: TStringField;
    cdsUsuarioreceber_reg_alteracao: TStringField;
    qryClientesdt_ultima_atualizacao: TDateField;
    cdsClientesdt_ultima_atualizacao: TDateField;
    qryClientesobservacoes: TStringField;
    cdsClientesobservacoes: TStringField;
    qryMailfone_1: TStringField;
    qryMailfone_2: TStringField;
    qryMailfone_3: TStringField;
    qryMailfone_4: TStringField;
    qryMailfone_5: TStringField;
    qryMailfone_6: TStringField;
    qryMailfone_7: TStringField;
    qryMailfone_8: TStringField;
    cdsMailfone_1: TStringField;
    cdsMailfone_2: TStringField;
    cdsMailfone_3: TStringField;
    cdsMailfone_4: TStringField;
    cdsMailfone_5: TStringField;
    cdsMailfone_6: TStringField;
    cdsMailfone_7: TStringField;
    cdsMailfone_8: TStringField;
    qryitens_ckecklist: TSQLQuery;
    dspitens_ckecklist: TDataSetProvider;
    cdsitens_ckecklist: TClientDataSet;
    qryitens_ckecklistsequencia_item: TIntegerField;
    qryitens_ckecklistdescricao_item: TStringField;
    qryitens_ckecklistativo: TStringField;
    cdsitens_ckecklistsequencia_item: TIntegerField;
    cdsitens_ckecklistdescricao_item: TStringField;
    cdsitens_ckecklistativo: TStringField;
    qrycliente_checklist_implantacao: TSQLQuery;
    dspcliente_checklist_implantacao: TDataSetProvider;
    cdscliente_checklist_implantacao: TClientDataSet;
    qrycliente_checklist_implantacaocod_cliente: TIntegerField;
    qrycliente_checklist_implantacaosequencia_item: TIntegerField;
    qrycliente_checklist_implantacaodescricao_item: TStringField;
    qrycliente_checklist_implantacaoconcluido: TStringField;
    qrycliente_checklist_implantacaodata_conclusao: TDateField;
    qrycliente_checklist_implantacaousr_conclusao: TIntegerField;
    qrycliente_checklist_implantacaoobservacao: TStringField;
    cdscliente_checklist_implantacaocod_cliente: TIntegerField;
    cdscliente_checklist_implantacaosequencia_item: TIntegerField;
    cdscliente_checklist_implantacaodescricao_item: TStringField;
    cdscliente_checklist_implantacaoconcluido: TStringField;
    cdscliente_checklist_implantacaodata_conclusao: TDateField;
    cdscliente_checklist_implantacaousr_conclusao: TIntegerField;
    cdscliente_checklist_implantacaoobservacao: TStringField;
    qrycliente_checklist_impl_detal: TSQLQuery;
    dspcliente_checklist_impl_detal: TDataSetProvider;
    cdscliente_checklist_impl_detal: TClientDataSet;
    qrycliente_checklist_impl_detalcod_cliente: TIntegerField;
    qrycliente_checklist_impl_detalsequencia_item: TIntegerField;
    qrycliente_checklist_impl_detalsequencia_detalhamento: TIntegerField;
    qrycliente_checklist_impl_detaldescricao_item: TStringField;
    qrycliente_checklist_impl_detaldata_registro: TDateField;
    qrycliente_checklist_impl_detalusr_registro: TIntegerField;
    qrycliente_checklist_impl_detalobservacao: TStringField;
    cdscliente_checklist_impl_detalcod_cliente: TIntegerField;
    cdscliente_checklist_impl_detalsequencia_item: TIntegerField;
    cdscliente_checklist_impl_detalsequencia_detalhamento: TIntegerField;
    cdscliente_checklist_impl_detaldescricao_item: TStringField;
    cdscliente_checklist_impl_detaldata_registro: TDateField;
    cdscliente_checklist_impl_detalusr_registro: TIntegerField;
    cdscliente_checklist_impl_detalobservacao: TStringField;
    qryId_msg: TSQLQuery;
    dspId_msg: TDataSetProvider;
    cdsId_msg: TClientDataSet;
    qryId_msgid_msg: TStringField;
    cdsId_msgid_msg: TStringField;
    qryId_msgdata: TDateField;
    qryId_msgcod_chamado: TIntegerField;
    cdsId_msgdata: TDateField;
    cdsId_msgcod_chamado: TIntegerField;
    qryChamadoskm: TFMTBCDField;
    cdsChamadoskm: TFMTBCDField;
    qryDesenv: TSQLQuery;
    dspDesenv: TDataSetProvider;
    cdsDesenv: TClientDataSet;
    qryDesenvcod_desenvolvimento: TIntegerField;
    qryDesenvcod_tela: TIntegerField;
    qryDesenvcod_modulo: TIntegerField;
    qryDesenvnome_tela: TStringField;
    qryDesenvdata_alteracao: TDateField;
    qryDesenvtempo: TFMTBCDField;
    qryDesenvcod_categoria: TIntegerField;
    qryDesenvobservacao: TStringField;
    qryDesenvcod_usuario: TIntegerField;
    qryDesenvcod_cliente: TIntegerField;
    cdsDesenvcod_desenvolvimento: TIntegerField;
    cdsDesenvcod_tela: TIntegerField;
    cdsDesenvcod_modulo: TIntegerField;
    cdsDesenvnome_tela: TStringField;
    cdsDesenvdata_alteracao: TDateField;
    cdsDesenvtempo: TFMTBCDField;
    cdsDesenvcod_categoria: TIntegerField;
    cdsDesenvobservacao: TStringField;
    cdsDesenvcod_usuario: TIntegerField;
    cdsDesenvcod_cliente: TIntegerField;
    qryTelas: TSQLQuery;
    dspTelas: TDataSetProvider;
    cdsTelas: TClientDataSet;
    qryTelascod_modulo: TIntegerField;
    qryTelascod_tela: TIntegerField;
    qryTelasnome: TStringField;
    qryTelasdescricao: TStringField;
    qryTelasdescr_menu: TStringField;
    qryTelassubmenu: TStringField;
    qryTelasmenu: TStringField;
    cdsTelascod_modulo: TIntegerField;
    cdsTelascod_tela: TIntegerField;
    cdsTelasnome: TStringField;
    cdsTelasdescricao: TStringField;
    cdsTelasdescr_menu: TStringField;
    cdsTelassubmenu: TStringField;
    cdsTelasmenu: TStringField;
    qryDesenvnum_chamado: TIntegerField;
    qryDesenvdata_chamado: TDateField;
    cdsDesenvnum_chamado: TIntegerField;
    cdsDesenvdata_chamado: TDateField;
    qryDesenvtempo_cobranca: TFMTBCDField;
    cdsDesenvtempo_cobranca: TFMTBCDField;
    qryChamadoscaminho_arq: TStringField;
    cdsChamadoscaminho_arq: TStringField;
    qryClientesdistancia: TFMTBCDField;
    cdsClientesdistancia: TFMTBCDField;
    qryParametrosemail_cobranca: TStringField;
    cdsParametrosemail_cobranca: TStringField;
    qryMovChamadoemail_movimentacao: TStringField;
    cdsMovChamadoemail_movimentacao: TStringField;
    qryMovChamadoenvia_email: TStringField;
    cdsMovChamadoenvia_email: TStringField;
    qryCliente_usuario: TSQLQuery;
    dspCliente_usuario: TDataSetProvider;
    cdsCliente_usuario: TClientDataSet;
    qryCliente_usuariocod_usuario: TIntegerField;
    qryCliente_usuariocod_cliente: TIntegerField;
    qryCliente_usuarionome_cliente: TStringField;
    qryCliente_usuarionome_usuario: TStringField;
    qryCliente_usuariopermissao_suporte: TStringField;
    qryCliente_usuariopermissao_abrir_chamado: TStringField;
    qryCliente_usuarioativo: TStringField;
    qryCliente_usuarioemail: TStringField;
    cdsCliente_usuariocod_usuario: TIntegerField;
    cdsCliente_usuariocod_cliente: TIntegerField;
    cdsCliente_usuarionome_cliente: TStringField;
    cdsCliente_usuarionome_usuario: TStringField;
    cdsCliente_usuariopermissao_suporte: TStringField;
    cdsCliente_usuariopermissao_abrir_chamado: TStringField;
    cdsCliente_usuarioativo: TStringField;
    cdsCliente_usuarioemail: TStringField;
    qryChamadoscod_usuario_cli: TIntegerField;
    cdsChamadoscod_usuario_cli: TIntegerField;
    qryClientesemail_nfe: TStringField;
    cdsClientesemail_nfe: TStringField;
    qryChamadosemail_solicitante_outro: TStringField;
    cdsChamadosemail_solicitante_outro: TStringField;
    qryBloqueados: TSQLQuery;
    dspBloqueados: TDataSetProvider;
    cdsBloqueados: TClientDataSet;
    qryBloqueadostabela: TStringField;
    qryBloqueadoslogin_bloqueou: TStringField;
    qryBloqueadoschave1: TStringField;
    qryBloqueadoschave2: TStringField;
    qryBloqueadoschave3: TStringField;
    qryBloqueadoschave4: TStringField;
    qryBloqueadoschave5: TStringField;
    cdsBloqueadostabela: TStringField;
    cdsBloqueadoslogin_bloqueou: TStringField;
    cdsBloqueadoschave1: TStringField;
    cdsBloqueadoschave2: TStringField;
    cdsBloqueadoschave3: TStringField;
    cdsBloqueadoschave4: TStringField;
    cdsBloqueadoschave5: TStringField;
    qryChamadosdescricao_chamado: TStringField;
    cdsChamadosdescricao_chamado: TStringField;
    qryAgenda: TSQLQuery;
    dspAgenda: TDataSetProvider;
    cdsAgenda: TClientDataSet;
    qryAgendaseq_agenda: TIntegerField;
    qryAgendacod_usuario: TIntegerField;
    qryAgendanome_usuario: TStringField;
    qryAgendadata_saida: TDateField;
    qryAgendahora_saida: TTimeField;
    qryAgendaprev_data_retorno: TDateField;
    qryAgendaprev_hora_retorno: TTimeField;
    qryAgendaobservacao: TStringField;
    cdsAgendaseq_agenda: TIntegerField;
    cdsAgendacod_usuario: TIntegerField;
    cdsAgendanome_usuario: TStringField;
    cdsAgendadata_saida: TDateField;
    cdsAgendahora_saida: TTimeField;
    cdsAgendaprev_data_retorno: TDateField;
    cdsAgendaprev_hora_retorno: TTimeField;
    cdsAgendaobservacao: TStringField;
    qryAgendaativo: TBooleanField;
    cdsAgendaativo: TBooleanField;
    qryAgendacod_cliente: TIntegerField;
    cdsAgendacod_cliente: TIntegerField;
    qryAgendanome_cliente: TStringField;
    cdsAgendanome_cliente: TStringField;
    qryChamadosdata_ultima_movimentacao: TDateField;
    cdsChamadosdata_ultima_movimentacao: TDateField;
    qryCategoriaatualiza_sistema: TStringField;
    cdsCategoriaatualiza_sistema: TStringField;
    qryMovChamadoreabertura: TStringField;
    cdsMovChamadoreabertura: TStringField;
    qryClientesversao_bd: TStringField;
    cdsClientesversao_bd: TStringField;
    qryClientesversao_oracullos: TStringField;
    cdsClientesversao_oracullos: TStringField;
    qryClientesassinatura_bi: TStringField;
    cdsClientesassinatura_bi: TStringField;
    qryClientesversao_nfe: TStringField;
    cdsClientesversao_nfe: TStringField;
    qryClientesusa_mdfe: TStringField;
    qryClientesusa_cte: TStringField;
    qryClientesusa_nfse: TStringField;
    qryClientesusa_nfce: TStringField;
    cdsClientesusa_mdfe: TStringField;
    cdsClientesusa_cte: TStringField;
    cdsClientesusa_nfse: TStringField;
    cdsClientesusa_nfce: TStringField;
    qryClientesumovme_qtde_adquirida: TIntegerField;
    qryClientesumovme_qtde_em_uso: TIntegerField;
    qryClientesumovme_valor_unitario: TFMTBCDField;
    cdsClientesumovme_qtde_adquirida: TIntegerField;
    cdsClientesumovme_qtde_em_uso: TIntegerField;
    cdsClientesumovme_valor_unitario: TFMTBCDField;
    qryClientesacesso_remoto: TStringField;
    cdsClientesacesso_remoto: TStringField;
    qrycliente_respostas_pesquisa: TSQLQuery;
    dspcliente_respostas_pesquisa: TDataSetProvider;
    cdscliente_respostas_pesquisa: TClientDataSet;
    qrycliente_respostas_pesquisacod_cliente: TIntegerField;
    qrycliente_respostas_pesquisasequencia: TIntegerField;
    qrycliente_respostas_pesquisadescr_resposta: TStringField;
    qrycliente_respostas_pesquisausr_inclusao: TIntegerField;
    qrycliente_respostas_pesquisadata_inclusao: TDateField;
    qrycliente_respostas_pesquisahora_inclusao: TTimeField;
    qrycliente_respostas_pesquisadescr_pergunta: TStringField;
    cdscliente_respostas_pesquisacod_cliente: TIntegerField;
    cdscliente_respostas_pesquisasequencia: TIntegerField;
    cdscliente_respostas_pesquisadescr_resposta: TStringField;
    cdscliente_respostas_pesquisausr_inclusao: TIntegerField;
    cdscliente_respostas_pesquisadata_inclusao: TDateField;
    cdscliente_respostas_pesquisahora_inclusao: TTimeField;
    cdscliente_respostas_pesquisadescr_pergunta: TStringField;
    qrycliente_perguntas_pesquisa: TSQLQuery;
    dspcliente_perguntas_pesquisa: TDataSetProvider;
    cdscliente_perguntas_pesquisa: TClientDataSet;
    qrycliente_perguntas_pesquisasequencia: TIntegerField;
    qrycliente_perguntas_pesquisaativo: TStringField;
    qrycliente_perguntas_pesquisadescr_pergunta: TStringField;
    cdscliente_perguntas_pesquisasequencia: TIntegerField;
    cdscliente_perguntas_pesquisaativo: TStringField;
    cdscliente_perguntas_pesquisadescr_pergunta: TStringField;
    qrycliente_respostas_pesquisasequencia_resposta: TIntegerField;
    cdscliente_respostas_pesquisasequencia_resposta: TIntegerField;
    procedure cdsChamadosnivel_prioridadeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsMovChamadonivel_prioridadeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsStatusencerra_chamadoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsUsuariopermite_ver_todos_chmadosGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsUsuarioativoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsReportnecessita_nova_visitaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsClientesativoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsChamadoschamado_automaticoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure conpgBeforeConnect(Sender: TObject);
    procedure cdsCompromissosfinalizadoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsChamadosgera_compromissoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsMovChamadogera_compromissoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsChamadosreincidenciaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsCategoriaenvia_emailGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsCategoriatipo_categoriaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsChamadosgera_cronograma_altGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsAreaver_cronog_alteracaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsCronogramaAltfinalizadoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsMovChamadogera_cronograma_altGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsUsuarioreceber_reg_alteracaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdscliente_checklist_implantacaoconcluidoGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsCliente_usuariopermissao_suporteGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsCliente_usuariopermissao_abrir_chamadoGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsCliente_usuarioativoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsAgendaativoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsCategoriaatualiza_sistemaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsMovChamadoreaberturaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsClientesassinatura_biGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsClientesusa_mdfeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsClientesusa_cteGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsClientesusa_nfseGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsClientesusa_nfceGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdscliente_perguntas_pesquisaativoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
     function Conecta(nomeconexao : STring; arqconexao : TStringList) : boolean;
  end;

var
  dmPrincipal: TdmPrincipal;
  Caminho : String;

implementation

uses uPRINCIPAL, uRELCHAMADOS;

{$R *.dfm}

procedure TdmPrincipal.cdsChamadosnivel_prioridadeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = '1' then Text := '1 - BAIXA';
     if Sender.AsString = '2' then Text := '2 - MEDIA';
     if Sender.AsString = '3' then Text := '3 - ALTA';
end;

procedure TdmPrincipal.cdsMovChamadonivel_prioridadeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = '1' then Text := '1 - BAIXA';
     if Sender.AsString = '2' then Text := '2 - MEDIA';
     if Sender.AsString = '3' then Text := '3 - ALTA';
end;


procedure TdmPrincipal.cdsStatusencerra_chamadoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsUsuariopermite_ver_todos_chmadosGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsUsuarioativoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsReportnecessita_nova_visitaGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsClientesativoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsChamadoschamado_automaticoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

function TdmPrincipal.Conecta(nomeconexao: STring;
  arqconexao: TStringList): boolean;
var i : integer;
    ini : TIniFile;
begin
     Caminho:='c:\help_desk\' ;

     ini := tinifile.create(Caminho+'conexao.ini');
     try
          if dmPrincipal.conpg.Connected then
               dmPrincipal.conpg.Connected := false;
          dmPrincipal.conpg.Params.Clear;
          dmPrincipal.conpg.DriverName     := ini.ReadString(nomeconexao,'DriverName','DevartPostgreSQL');
          dmPrincipal.conpg.ConnectionName := nomeconexao;
          dmPrincipal.conpg.GetDriverFunc  := 'getSQLDriverPostgreSQL';
          dmPrincipal.conpg.LibraryName    := ini.ReadString('windows',nomeconexao+'LN','dbexppgsql.dll');
          dmPrincipal.conpg.VendorLib      := ini.ReadString('windows',nomeconexao+'VL','dbexppgsql.dll');

          for i := 0 to arqconexao.Count - 1 do
               dmPrincipal.conpg.Params.Add(arqconexao.Strings[i]);
          dmPrincipal.conpg.Params.Add('User_Name=super');
          dmPrincipal.conpg.Params.Add('Password=oseinf');

          dmPrincipal.conpg.LoginPrompt := false;
          try
               result := false;
          except
               MessageDlg('N?o foi poss?vel efetuar a Conex?o com: '+nomeconexao,
                         mtError, [mbOk], 0);
               result := true;

          end;
     finally end;

end;

procedure TdmPrincipal.DataModuleCreate(Sender: TObject);
var arquivo : TStringList;                                                           
    result,conseguiu_conectar : boolean;
i,conta_tentativas : integer;                             
begin
     dmPrincipal.conpg.Connected := false;
     if result_erro_conexao = false then
     begin
          try
               dmPrincipal.conpg.Connected := true;
          except
               conseguiu_conectar := false;
               conta_tentativas   := 0;
               while conseguiu_conectar = false do
               begin
                    conta_tentativas := conta_tentativas + 1;
                    try
                         dmPrincipal.conpg.connected := true;
                         if dmPrincipal.conpg.connected = true then
                         begin
                              conseguiu_conectar := true;
                              conta_tentativas   := 0;
                         end;
                    except
                    end;

                    if conta_tentativas = 100 then
                         Break;
               end;

               if (conseguiu_conectar = false) then
               begin
                    MessageDlg('N?o foi poss?vel efetuar a conex?o principal',
                              mtError, [mbOk], 0);
                    Abort();
               end;
          end;
     end;

end;

procedure TdmPrincipal.conpgBeforeConnect(Sender: TObject);
var arquivo : TStringList;
begin
     Caminho:='c:\help_desk\' ;

     if not FileExists(Caminho+'conexao.ini') then
     begin
          MessageDlg('N?o foi poss?vel localizar o arquivo '+Caminho+'conexao.ini'+
                     'Verifique',
                         mtError, [mbOk], 0);
          result_erro_conexao := true;
     end
     else
     begin
          result_erro_conexao  := false;
          conpg.connected := false;

          conpg.Params.Clear;
          arquivo := TStringList.Create;
          arquivo.LoadFromFile(Caminho+'conexao.ini');
          result_erro_conexao := conecta('help_desk',arquivo);
     end;

end;

procedure TdmPrincipal.cdsCompromissosfinalizadoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsChamadosgera_compromissoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsMovChamadogera_compromissoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsChamadosreincidenciaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsCategoriaenvia_emailGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsCategoriatipo_categoriaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sistema';
     if Sender.AsString = 'P' then Text := 'Processo';
     if Sender.AsString = 'J' then Text := 'Projeto';

end;

procedure TdmPrincipal.cdsChamadosgera_cronograma_altGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsAreaver_cronog_alteracaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsCronogramaAltfinalizadoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsMovChamadogera_cronograma_altGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsUsuarioreceber_reg_alteracaoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdscliente_checklist_implantacaoconcluidoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
     if Sender.AsString = 'P' then Text := 'Parcial';
     if Sender.AsString = 'A' then Text := 'N?o Aplica';
end;

procedure TdmPrincipal.cdsCliente_usuariopermissao_suporteGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsCliente_usuariopermissao_abrir_chamadoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsCliente_usuarioativoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsAgendaativoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsBoolean = true then Text := 'Sim';
     if Sender.AsBoolean = false then Text := 'N?o';
end;

procedure TdmPrincipal.cdsCategoriaatualiza_sistemaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsMovChamadoreaberturaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsClientesassinatura_biGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsClientesusa_mdfeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsClientesusa_cteGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsClientesusa_nfseGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdsClientesusa_nfceGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

procedure TdmPrincipal.cdscliente_perguntas_pesquisaativoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
     if Sender.AsString = 'S' then Text := 'Sim';
     if Sender.AsString = 'N' then Text := 'N?o';
end;

end.
