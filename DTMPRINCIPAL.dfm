object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 617
  Width = 910
  object conpg: TSQLConnection
    ConnectionName = 'Devart PostgreSQL'
    DriverName = 'DevartPostgreSQL'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'HostName=192.168.1.150'
      'DataBase=help_desk'
      'SchemaName='
      'DriverName=DevartPostgreSQL'
      'User_Name=super'
      'Password=oseinf'
      'FetchAll=True'
      'UseQuoteChar=False'
      'EnableBCD=True'
      'ServerCharSet=LATIN1')
    BeforeConnect = conpgBeforeConnect
    Left = 40
    Top = 24
  end
  object qryStatus: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from status_chamado')
    SQLConnection = conpg
    Left = 40
    Top = 88
    object qryStatuscod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object qryStatusdescricao_status: TStringField
      FieldName = 'descricao_status'
      Size = 100
    end
    object qryStatusencerra_chamado: TStringField
      FieldName = 'encerra_chamado'
      Size = 1
    end
  end
  object dspStatus: TDataSetProvider
    DataSet = qryStatus
    Left = 96
    Top = 88
  end
  object cdsStatus: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cod_status'
        DataType = ftInteger
      end
      item
        Name = 'descricao_status'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'encerra_chamado'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'COD_STATUS'
        Fields = 'COD_STATUS'
        Options = [ixPrimary]
      end>
    Params = <>
    ProviderName = 'dspStatus'
    StoreDefs = True
    Left = 152
    Top = 88
    object cdsStatuscod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object cdsStatusdescricao_status: TStringField
      FieldName = 'descricao_status'
      Size = 100
    end
    object cdsStatusencerra_chamado: TStringField
      FieldName = 'encerra_chamado'
      OnGetText = cdsStatusencerra_chamadoGetText
      Size = 1
    end
  end
  object qryArea: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from area_usuario')
    SQLConnection = conpg
    Left = 48
    Top = 152
    object qryAreacod_area: TIntegerField
      FieldName = 'cod_area'
    end
    object qryAreadescricao_area: TStringField
      FieldName = 'descricao_area'
      Size = 30
    end
  end
  object dspArea: TDataSetProvider
    DataSet = qryArea
    Left = 96
    Top = 152
  end
  object cdsArea: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cod_area'
        DataType = ftInteger
      end
      item
        Name = 'descricao_area'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ver_cronog_alteracao'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'COD_AREA'
        Fields = 'COD_AREA'
        Options = [ixPrimary]
      end>
    Params = <>
    ProviderName = 'dspArea'
    StoreDefs = True
    Left = 152
    Top = 152
    object cdsAreacod_area: TIntegerField
      FieldName = 'cod_area'
    end
    object cdsAreadescricao_area: TStringField
      FieldName = 'descricao_area'
      Size = 30
    end
  end
  object qryCategoria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from categoria_chamado')
    SQLConnection = conpg
    Left = 32
    Top = 208
    object qryCategoriacod_categoria: TIntegerField
      FieldName = 'cod_categoria'
    end
    object qryCategoriadescricao_categoria: TStringField
      FieldName = 'descricao_categoria'
      Size = 30
    end
    object qryCategoriaenvia_email: TStringField
      FieldName = 'envia_email'
      Size = 1
    end
    object qryCategoriatipo_categoria: TStringField
      FieldName = 'tipo_categoria'
      Size = 1
    end
    object qryCategoriaatualiza_sistema: TStringField
      FieldName = 'atualiza_sistema'
      Size = 1
    end
  end
  object dspCategoria: TDataSetProvider
    DataSet = qryCategoria
    Left = 104
    Top = 208
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cod_categoria'
        DataType = ftInteger
      end
      item
        Name = 'descricao_categoria'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'envia_email'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'tipo_categoria'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'atualiza_sistema'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'COD_CATEGORIA'
        Fields = 'COD_CATEGORIA'
        Options = [ixPrimary]
      end>
    Params = <>
    ProviderName = 'dspCategoria'
    StoreDefs = True
    Left = 176
    Top = 208
    object cdsCategoriacod_categoria: TIntegerField
      FieldName = 'cod_categoria'
    end
    object cdsCategoriadescricao_categoria: TStringField
      FieldName = 'descricao_categoria'
      Size = 30
    end
    object cdsCategoriaenvia_email: TStringField
      FieldName = 'envia_email'
      OnGetText = cdsCategoriaenvia_emailGetText
      Size = 1
    end
    object cdsCategoriatipo_categoria: TStringField
      FieldName = 'tipo_categoria'
      OnGetText = cdsCategoriatipo_categoriaGetText
      Size = 1
    end
    object cdsCategoriaatualiza_sistema: TStringField
      FieldName = 'atualiza_sistema'
      OnGetText = cdsCategoriaatualiza_sistemaGetText
      Size = 1
    end
  end
  object qryBaseConhecimento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from base_conhecimento')
    SQLConnection = conpg
    Left = 40
    Top = 272
    object qryBaseConhecimentocod_solucao: TIntegerField
      FieldName = 'cod_solucao'
    end
    object qryBaseConhecimentodesc_solucao: TStringField
      FieldName = 'desc_solucao'
      Size = 2000
    end
    object qryBaseConhecimentodesc_problema: TStringField
      FieldName = 'desc_problema'
      Size = 1000
    end
    object qryBaseConhecimentopalavra_chave: TStringField
      FieldName = 'palavra_chave'
      Size = 100
    end
  end
  object dspBase: TDataSetProvider
    DataSet = qryBaseConhecimento
    Left = 114
    Top = 267
  end
  object cdsBaseConhecimento: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cod_solucao'
        DataType = ftInteger
      end
      item
        Name = 'desc_solucao'
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'desc_problema'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'palavra_chave'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspBase'
    StoreDefs = True
    Left = 178
    Top = 272
    object cdsBaseConhecimentocod_solucao: TIntegerField
      FieldName = 'cod_solucao'
    end
    object cdsBaseConhecimentodesc_solucao: TStringField
      FieldName = 'desc_solucao'
      Size = 2000
    end
    object cdsBaseConhecimentodesc_problema: TStringField
      FieldName = 'desc_problema'
      Size = 1000
    end
    object cdsBaseConhecimentopalavra_chave: TStringField
      FieldName = 'palavra_chave'
      Size = 100
    end
  end
  object qryUsuarios: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from usuario')
    SQLConnection = conpg
    Left = 40
    Top = 336
    object qryUsuarioscod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object qryUsuarioslogin: TStringField
      FieldName = 'login'
    end
    object qryUsuarioscod_area: TIntegerField
      FieldName = 'cod_area'
    end
    object qryUsuariosdefinicao_usuario: TStringField
      FieldName = 'definicao_usuario'
    end
    object qryUsuariosmail: TStringField
      FieldName = 'mail'
      Size = 60
    end
    object qryUsuariospermite_ver_todos_chmados: TStringField
      FieldName = 'permite_ver_todos_chmados'
      Size = 1
    end
    object qryUsuariosativo: TStringField
      FieldName = 'ativo'
      Size = 1
    end
    object qryUsuariosnome_usuario: TStringField
      FieldName = 'nome_usuario'
      Size = 60
    end
    object qryUsuarioshost_mail: TStringField
      FieldName = 'host_mail'
      Size = 60
    end
    object qryUsuariossenha_conta: TStringField
      FieldName = 'senha_conta'
      Size = 60
    end
    object qryUsuariosusuario_conta: TStringField
      FieldName = 'usuario_conta'
      Size = 60
    end
    object qryUsuariosporta_serv_saida: TStringField
      FieldName = 'porta_serv_saida'
      Size = 5
    end
    object qryUsuariossenha: TStringField
      FieldName = 'senha'
      Size = 60
    end
    object qryUsuariosreceber_reg_alteracao: TStringField
      FieldName = 'receber_reg_alteracao'
      Size = 1
    end
  end
  object dspUsuario: TDataSetProvider
    DataSet = qryUsuarios
    Left = 104
    Top = 336
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cod_usuario'
        DataType = ftInteger
      end
      item
        Name = 'login'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_area'
        DataType = ftInteger
      end
      item
        Name = 'definicao_usuario'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'mail'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'permite_ver_todos_chmados'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ativo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'nome_usuario'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'host_mail'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'senha_conta'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'usuario_conta'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'porta_serv_saida'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'senha'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'receber_reg_alteracao'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'COD_USUARIO'
        Fields = 'COD_USUARIO'
        Options = [ixPrimary]
      end>
    Params = <>
    ProviderName = 'dspUsuario'
    StoreDefs = True
    Left = 168
    Top = 336
    object cdsUsuariocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object cdsUsuariologin: TStringField
      FieldName = 'login'
    end
    object cdsUsuariocod_area: TIntegerField
      FieldName = 'cod_area'
    end
    object cdsUsuariodefinicao_usuario: TStringField
      FieldName = 'definicao_usuario'
    end
    object cdsUsuariomail: TStringField
      FieldName = 'mail'
      Size = 60
    end
    object cdsUsuariopermite_ver_todos_chmados: TStringField
      FieldName = 'permite_ver_todos_chmados'
      OnGetText = cdsUsuariopermite_ver_todos_chmadosGetText
      Size = 1
    end
    object cdsUsuarioativo: TStringField
      FieldName = 'ativo'
      OnGetText = cdsUsuarioativoGetText
      Size = 1
    end
    object cdsUsuarionome_usuario: TStringField
      FieldName = 'nome_usuario'
      Size = 60
    end
    object cdsUsuariohost_mail: TStringField
      FieldName = 'host_mail'
      Size = 60
    end
    object cdsUsuariosenha_conta: TStringField
      FieldName = 'senha_conta'
      Size = 60
    end
    object cdsUsuariousuario_conta: TStringField
      FieldName = 'usuario_conta'
      Size = 60
    end
    object cdsUsuarioporta_serv_saida: TStringField
      FieldName = 'porta_serv_saida'
      Size = 5
    end
    object cdsUsuariosenha: TStringField
      FieldName = 'senha'
      Size = 60
    end
    object cdsUsuarioreceber_reg_alteracao: TStringField
      FieldName = 'receber_reg_alteracao'
      OnGetText = cdsUsuarioreceber_reg_alteracaoGetText
      Size = 1
    end
  end
  object qryReport: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from report_visita')
    SQLConnection = conpg
    Left = 336
    Top = 88
    object qryReportcod_report: TIntegerField
      FieldName = 'cod_report'
    end
    object qryReportcod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qryReporttarefa_executada: TStringField
      FieldName = 'tarefa_executada'
      Size = 1000
    end
    object qryReportdata_visita: TDateField
      FieldName = 'data_visita'
    end
    object qryReportnecessita_nova_visita: TStringField
      FieldName = 'necessita_nova_visita'
      Size = 1
    end
    object qryReportmotivo_nova_visita: TStringField
      FieldName = 'motivo_nova_visita'
      Size = 1000
    end
    object qryReportcod_usuario_visita: TIntegerField
      FieldName = 'cod_usuario_visita'
    end
    object qryReporttempo_gasto: TFMTBCDField
      FieldName = 'tempo_gasto'
      Precision = 15
      Size = 2
    end
    object qryReportnome_usuario: TStringField
      FieldName = 'nome_usuario'
      Size = 60
    end
    object qryReportnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object qryReportresultados: TStringField
      FieldName = 'resultados'
      Size = 1000
    end
    object qryReportcod_compromisso: TIntegerField
      FieldName = 'cod_compromisso'
    end
    object qryReportcod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object qryReportdata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object qryReporthora_ini: TTimeField
      FieldName = 'hora_ini'
    end
    object qryReporthora_fim: TTimeField
      FieldName = 'hora_fim'
    end
    object qryReportcaminho_arq: TStringField
      FieldName = 'caminho_arq'
      Size = 200
    end
    object qryReportdetalhamento_motivo: TStringField
      FieldName = 'detalhamento_motivo'
      Size = 1000
    end
    object qryReportcontato: TStringField
      FieldName = 'contato'
      Size = 50
    end
    object qryReportmotivo_treinamento: TStringField
      FieldName = 'motivo_treinamento'
      Size = 1
    end
    object qryReportmotivo_duvidas_cliente: TStringField
      FieldName = 'motivo_duvidas_cliente'
      Size = 1
    end
    object qryReportmotivo_levantamento_dados: TStringField
      FieldName = 'motivo_levantamento_dados'
      Size = 1
    end
    object qryReportmotivo_outros: TStringField
      FieldName = 'motivo_outros'
      Size = 1
    end
    object qryReportmotivo_analise_oper: TStringField
      FieldName = 'motivo_analise_oper'
      Size = 1
    end
    object qryReportmotivo_config_sistema: TStringField
      FieldName = 'motivo_config_sistema'
      Size = 1
    end
    object qryReportmotivo_analise_erro: TStringField
      FieldName = 'motivo_analise_erro'
      Size = 1
    end
  end
  object dspReport: TDataSetProvider
    DataSet = qryReport
    Left = 408
    Top = 88
  end
  object cdsReport: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cod_report'
        DataType = ftInteger
      end
      item
        Name = 'cod_cliente'
        DataType = ftInteger
      end
      item
        Name = 'tarefa_executada'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'data_visita'
        DataType = ftDate
      end
      item
        Name = 'necessita_nova_visita'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'motivo_nova_visita'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'cod_usuario_visita'
        DataType = ftInteger
      end
      item
        Name = 'tempo_gasto'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'nome_usuario'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nome_cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'resultados'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'cod_compromisso'
        DataType = ftInteger
      end
      item
        Name = 'cod_chamado'
        DataType = ftInteger
      end
      item
        Name = 'data_chamado'
        DataType = ftDate
      end
      item
        Name = 'hora_ini'
        DataType = ftTime
      end
      item
        Name = 'hora_fim'
        DataType = ftTime
      end
      item
        Name = 'caminho_arq'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'detalhamento_motivo'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'contato'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'motivo_treinamento'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'motivo_duvidas_cliente'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'motivo_levantamento_dados'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'motivo_outros'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'motivo_analise_oper'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'motivo_config_sistema'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'motivo_analise_erro'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspReport'
    StoreDefs = True
    Left = 472
    Top = 88
    object cdsReportcod_report: TIntegerField
      FieldName = 'cod_report'
    end
    object cdsReportcod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object cdsReporttarefa_executada: TStringField
      FieldName = 'tarefa_executada'
      Size = 1000
    end
    object cdsReportdata_visita: TDateField
      FieldName = 'data_visita'
    end
    object cdsReportnecessita_nova_visita: TStringField
      FieldName = 'necessita_nova_visita'
      OnGetText = cdsReportnecessita_nova_visitaGetText
      Size = 1
    end
    object cdsReportmotivo_nova_visita: TStringField
      FieldName = 'motivo_nova_visita'
      Size = 1000
    end
    object cdsReportcod_usuario_visita: TIntegerField
      FieldName = 'cod_usuario_visita'
    end
    object cdsReporttempo_gasto: TFMTBCDField
      FieldName = 'tempo_gasto'
      Precision = 15
      Size = 2
    end
    object cdsReportnome_usuario: TStringField
      FieldName = 'nome_usuario'
      Size = 60
    end
    object cdsReportnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object cdsReportresultados: TStringField
      FieldName = 'resultados'
      Size = 1000
    end
    object cdsReportcod_compromisso: TIntegerField
      FieldName = 'cod_compromisso'
    end
    object cdsReportcod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object cdsReportdata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object cdsReporthora_ini: TTimeField
      FieldName = 'hora_ini'
    end
    object cdsReporthora_fim: TTimeField
      FieldName = 'hora_fim'
    end
    object cdsReportcaminho_arq: TStringField
      FieldName = 'caminho_arq'
      Size = 200
    end
    object cdsReportdetalhamento_motivo: TStringField
      FieldName = 'detalhamento_motivo'
      Size = 1000
    end
    object cdsReportcontato: TStringField
      FieldName = 'contato'
      Size = 50
    end
    object cdsReportmotivo_treinamento: TStringField
      FieldName = 'motivo_treinamento'
      Size = 1
    end
    object cdsReportmotivo_duvidas_cliente: TStringField
      FieldName = 'motivo_duvidas_cliente'
      Size = 1
    end
    object cdsReportmotivo_levantamento_dados: TStringField
      FieldName = 'motivo_levantamento_dados'
      Size = 1
    end
    object cdsReportmotivo_outros: TStringField
      FieldName = 'motivo_outros'
      Size = 1
    end
    object cdsReportmotivo_analise_oper: TStringField
      FieldName = 'motivo_analise_oper'
      Size = 1
    end
    object cdsReportmotivo_config_sistema: TStringField
      FieldName = 'motivo_config_sistema'
      Size = 1
    end
    object cdsReportmotivo_analise_erro: TStringField
      FieldName = 'motivo_analise_erro'
      Size = 1
    end
  end
  object qryClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cliente')
    SQLConnection = conpg
    Left = 336
    Top = 144
    object qryClientescod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qryClientesnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object qryClientesnome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Size = 60
    end
    object qryClientesendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object qryClientesbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object qryClientesfone: TStringField
      FieldName = 'fone'
    end
    object qryClientesativo: TStringField
      FieldName = 'ativo'
      Size = 1
    end
    object qryClientesnome_cidade: TStringField
      FieldName = 'nome_cidade'
      Size = 40
    end
    object qryClientesuf: TStringField
      FieldName = 'uf'
      Size = 3
    end
    object qryClientesdominio: TStringField
      FieldName = 'dominio'
      Size = 60
    end
    object qryClientesarq_cliente: TStringField
      FieldName = 'arq_cliente'
      Size = 200
    end
    object qryClientesmail: TStringField
      FieldName = 'mail'
      Size = 100
    end
    object qryClientesdt_ultima_atualizacao: TDateField
      FieldName = 'dt_ultima_atualizacao'
    end
    object qryClientesobservacoes: TStringField
      FieldName = 'observacoes'
      Size = 1000
    end
    object qryClientesdistancia: TFMTBCDField
      FieldName = 'distancia'
      Precision = 15
      Size = 2
    end
    object qryClientesemail_nfe: TStringField
      FieldName = 'email_nfe'
      Size = 200
    end
    object qryClientesversao_bd: TStringField
      FieldName = 'versao_bd'
      Size = 1
    end
    object qryClientesversao_oracullos: TStringField
      FieldName = 'versao_oracullos'
    end
    object qryClientesassinatura_bi: TStringField
      FieldName = 'assinatura_bi'
      Size = 1
    end
    object qryClientesversao_nfe: TStringField
      FieldName = 'versao_nfe'
      Size = 5
    end
    object qryClientesusa_mdfe: TStringField
      FieldName = 'usa_mdfe'
      Size = 1
    end
    object qryClientesusa_cte: TStringField
      FieldName = 'usa_cte'
      Size = 1
    end
    object qryClientesusa_nfse: TStringField
      FieldName = 'usa_nfse'
      Size = 1
    end
    object qryClientesusa_nfce: TStringField
      FieldName = 'usa_nfce'
      Size = 1
    end
    object qryClientesumovme_qtde_adquirida: TIntegerField
      FieldName = 'umovme_qtde_adquirida'
    end
    object qryClientesumovme_qtde_em_uso: TIntegerField
      FieldName = 'umovme_qtde_em_uso'
    end
    object qryClientesumovme_valor_unitario: TFMTBCDField
      FieldName = 'umovme_valor_unitario'
      Precision = 15
      Size = 2
    end
    object qryClientesacesso_remoto: TStringField
      FieldName = 'acesso_remoto'
      Size = 3000
    end
  end
  object dspClientes: TDataSetProvider
    DataSet = qryClientes
    Left = 408
    Top = 144
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cod_cliente'
        DataType = ftInteger
      end
      item
        Name = 'nome_cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nome_fantasia'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'endereco'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'bairro'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'fone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ativo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'nome_cidade'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'uf'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'dominio'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'arq_cliente'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'mail'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'dt_ultima_atualizacao'
        DataType = ftDate
      end
      item
        Name = 'observacoes'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'distancia'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'email_nfe'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'versao_bd'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'versao_oracullos'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'assinatura_bi'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'versao_nfe'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'usa_mdfe'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'usa_cte'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'usa_nfse'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'usa_nfce'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'umovme_qtde_adquirida'
        DataType = ftInteger
      end
      item
        Name = 'umovme_qtde_em_uso'
        DataType = ftInteger
      end
      item
        Name = 'umovme_valor_unitario'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'acesso_remoto'
        DataType = ftString
        Size = 3000
      end>
    IndexDefs = <
      item
        Name = 'COD_CLIENTE'
        Fields = 'COD_CLIENTE'
        Options = [ixPrimary]
      end>
    Params = <>
    ProviderName = 'dspClientes'
    StoreDefs = True
    Left = 480
    Top = 144
    object cdsClientescod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object cdsClientesnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object cdsClientesnome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Size = 60
    end
    object cdsClientesendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object cdsClientesbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object cdsClientesfone: TStringField
      FieldName = 'fone'
    end
    object cdsClientesativo: TStringField
      FieldName = 'ativo'
      OnGetText = cdsClientesativoGetText
      Size = 1
    end
    object cdsClientesnome_cidade: TStringField
      FieldName = 'nome_cidade'
      Size = 40
    end
    object cdsClientesuf: TStringField
      FieldName = 'uf'
      Size = 3
    end
    object cdsClientesdominio: TStringField
      FieldName = 'dominio'
      Size = 60
    end
    object cdsClientesarq_cliente: TStringField
      FieldName = 'arq_cliente'
      Size = 200
    end
    object cdsClientesmail: TStringField
      FieldName = 'mail'
      Size = 100
    end
    object cdsClientesdt_ultima_atualizacao: TDateField
      FieldName = 'dt_ultima_atualizacao'
    end
    object cdsClientesobservacoes: TStringField
      FieldName = 'observacoes'
      Size = 1000
    end
    object cdsClientesdistancia: TFMTBCDField
      FieldName = 'distancia'
      Precision = 15
      Size = 2
    end
    object cdsClientesemail_nfe: TStringField
      FieldName = 'email_nfe'
      Size = 200
    end
    object cdsClientesversao_bd: TStringField
      FieldName = 'versao_bd'
      Size = 1
    end
    object cdsClientesversao_oracullos: TStringField
      FieldName = 'versao_oracullos'
    end
    object cdsClientesassinatura_bi: TStringField
      FieldName = 'assinatura_bi'
      OnGetText = cdsClientesassinatura_biGetText
      Size = 1
    end
    object cdsClientesversao_nfe: TStringField
      FieldName = 'versao_nfe'
      Size = 5
    end
    object cdsClientesusa_mdfe: TStringField
      FieldName = 'usa_mdfe'
      OnGetText = cdsClientesusa_mdfeGetText
      Size = 1
    end
    object cdsClientesusa_cte: TStringField
      FieldName = 'usa_cte'
      OnGetText = cdsClientesusa_cteGetText
      Size = 1
    end
    object cdsClientesusa_nfse: TStringField
      FieldName = 'usa_nfse'
      OnGetText = cdsClientesusa_nfseGetText
      Size = 1
    end
    object cdsClientesusa_nfce: TStringField
      FieldName = 'usa_nfce'
      OnGetText = cdsClientesusa_nfceGetText
      Size = 1
    end
    object cdsClientesumovme_qtde_adquirida: TIntegerField
      FieldName = 'umovme_qtde_adquirida'
    end
    object cdsClientesumovme_qtde_em_uso: TIntegerField
      FieldName = 'umovme_qtde_em_uso'
    end
    object cdsClientesumovme_valor_unitario: TFMTBCDField
      FieldName = 'umovme_valor_unitario'
      Precision = 15
      Size = 2
    end
    object cdsClientesacesso_remoto: TStringField
      FieldName = 'acesso_remoto'
      Size = 3000
    end
  end
  object qryTemp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conpg
    Left = 328
    Top = 16
  end
  object qryChamados: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from chamado')
    SQLConnection = conpg
    Left = 344
    Top = 208
    object qryChamadoscod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object qryChamadoscod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qryChamadoscod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object qryChamadoscod_categoria: TIntegerField
      FieldName = 'cod_categoria'
    end
    object qryChamadosnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object qryChamadosdesc_status: TStringField
      FieldName = 'desc_status'
      Size = 60
    end
    object qryChamadosdesc_categoria: TStringField
      FieldName = 'desc_categoria'
      Size = 60
    end
    object qryChamadosdata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object qryChamadoshora_chamado: TTimeField
      FieldName = 'hora_chamado'
    end
    object qryChamadosprazo_fim_chamdo: TDateField
      FieldName = 'prazo_fim_chamdo'
    end
    object qryChamadoschamado_automatico: TStringField
      FieldName = 'chamado_automatico'
      Size = 1
    end
    object qryChamadosnivel_prioridade: TStringField
      FieldName = 'nivel_prioridade'
      Size = 1
    end
    object qryChamadoscod_usuario_resp: TIntegerField
      FieldName = 'cod_usuario_resp'
    end
    object qryChamadosnome_usuario_resp: TStringField
      FieldName = 'nome_usuario_resp'
      Size = 60
    end
    object qryChamadosnome_usuario_abriu: TStringField
      FieldName = 'nome_usuario_abriu'
      Size = 60
    end
    object qryChamadoscod_usuario_abriu: TIntegerField
      FieldName = 'cod_usuario_abriu'
    end
    object qryChamadosfuncionario_emp: TStringField
      FieldName = 'funcionario_emp'
      Size = 60
    end
    object qryChamadosorigem_chamado: TStringField
      FieldName = 'origem_chamado'
    end
    object qryChamadostempo_gasto: TFMTBCDField
      FieldName = 'tempo_gasto'
      Precision = 15
      Size = 2
    end
    object qryChamadosdata_final: TDateField
      FieldName = 'data_final'
    end
    object qryChamadoshora_final: TTimeField
      FieldName = 'hora_final'
    end
    object qryChamadosgera_compromisso: TStringField
      FieldName = 'gera_compromisso'
      Size = 1
    end
    object qryChamadostempo_cobranca: TFMTBCDField
      FieldName = 'tempo_cobranca'
      Precision = 15
      Size = 2
    end
    object qryChamadosreincidencia: TStringField
      FieldName = 'reincidencia'
      Size = 1
    end
    object qryChamadoshora_gravacao: TTimeField
      FieldName = 'hora_gravacao'
    end
    object qryChamadosdata_gravacao: TDateField
      FieldName = 'data_gravacao'
    end
    object qryChamadossolicitacao: TStringField
      FieldName = 'solicitacao'
      Size = 2000
    end
    object qryChamadosproc_adotado: TStringField
      FieldName = 'proc_adotado'
      Size = 2000
    end
    object qryChamadosemail_solicitante: TStringField
      FieldName = 'email_solicitante'
      Size = 100
    end
    object qryChamadosgera_cronograma_alt: TStringField
      FieldName = 'gera_cronograma_alt'
      Size = 1
    end
    object qryChamadoskm: TFMTBCDField
      FieldName = 'km'
      Precision = 15
      Size = 2
    end
    object qryChamadoscaminho_arq: TStringField
      FieldName = 'caminho_arq'
      Size = 1000
    end
    object qryChamadoscod_usuario_cli: TIntegerField
      FieldName = 'cod_usuario_cli'
    end
    object qryChamadosemail_solicitante_outro: TStringField
      FieldName = 'email_solicitante_outro'
      Size = 200
    end
    object qryChamadosdescricao_chamado: TStringField
      FieldName = 'descricao_chamado'
      Size = 3000
    end
    object qryChamadosdata_ultima_movimentacao: TDateField
      FieldName = 'data_ultima_movimentacao'
    end
  end
  object dspChamados: TDataSetProvider
    DataSet = qryChamados
    Left = 424
    Top = 208
  end
  object cdsChamados: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cod_chamado'
        DataType = ftInteger
      end
      item
        Name = 'cod_cliente'
        DataType = ftInteger
      end
      item
        Name = 'cod_status'
        DataType = ftInteger
      end
      item
        Name = 'cod_categoria'
        DataType = ftInteger
      end
      item
        Name = 'nome_cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'desc_status'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'desc_categoria'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'data_chamado'
        DataType = ftDate
      end
      item
        Name = 'hora_chamado'
        DataType = ftTime
      end
      item
        Name = 'prazo_fim_chamdo'
        DataType = ftDate
      end
      item
        Name = 'chamado_automatico'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'nivel_prioridade'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cod_usuario_resp'
        DataType = ftInteger
      end
      item
        Name = 'nome_usuario_resp'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nome_usuario_abriu'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'cod_usuario_abriu'
        DataType = ftInteger
      end
      item
        Name = 'funcionario_emp'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'origem_chamado'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tempo_gasto'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'data_final'
        DataType = ftDate
      end
      item
        Name = 'hora_final'
        DataType = ftTime
      end
      item
        Name = 'gera_compromisso'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'tempo_cobranca'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'reincidencia'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'hora_gravacao'
        DataType = ftTime
      end
      item
        Name = 'data_gravacao'
        DataType = ftDate
      end
      item
        Name = 'solicitacao'
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'proc_adotado'
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'email_solicitante'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'gera_cronograma_alt'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'km'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'caminho_arq'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'cod_usuario_cli'
        DataType = ftInteger
      end
      item
        Name = 'email_solicitante_outro'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'descricao_chamado'
        DataType = ftString
        Size = 3000
      end
      item
        Name = 'data_ultima_movimentacao'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'CHAMADO'
        Fields = 'COD_CHAMADO;DATA_CHAMADO'
        Options = [ixPrimary]
      end
      item
        Name = 'COD_CHAMADO'
        Fields = 'COD_CHAMADO'
        Options = [ixPrimary]
      end
      item
        Name = 'DATA_CHAMADO'
        Fields = 'DATA_CHAMADO'
        Options = [ixPrimary]
      end>
    Params = <>
    ProviderName = 'dspChamados'
    StoreDefs = True
    Left = 484
    Top = 208
    object cdsChamadoscod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object cdsChamadoscod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object cdsChamadoscod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object cdsChamadoscod_categoria: TIntegerField
      FieldName = 'cod_categoria'
    end
    object cdsChamadosnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object cdsChamadosdesc_status: TStringField
      FieldName = 'desc_status'
      Size = 60
    end
    object cdsChamadosdesc_categoria: TStringField
      FieldName = 'desc_categoria'
      Size = 60
    end
    object cdsChamadosdata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object cdsChamadoshora_chamado: TTimeField
      FieldName = 'hora_chamado'
    end
    object cdsChamadosprazo_fim_chamdo: TDateField
      FieldName = 'prazo_fim_chamdo'
    end
    object cdsChamadoschamado_automatico: TStringField
      FieldName = 'chamado_automatico'
      OnGetText = cdsChamadoschamado_automaticoGetText
      Size = 1
    end
    object cdsChamadosnivel_prioridade: TStringField
      FieldName = 'nivel_prioridade'
      OnGetText = cdsChamadosnivel_prioridadeGetText
      Size = 1
    end
    object cdsChamadoscod_usuario_resp: TIntegerField
      FieldName = 'cod_usuario_resp'
    end
    object cdsChamadosnome_usuario_resp: TStringField
      FieldName = 'nome_usuario_resp'
      Size = 60
    end
    object cdsChamadosnome_usuario_abriu: TStringField
      FieldName = 'nome_usuario_abriu'
      Size = 60
    end
    object cdsChamadoscod_usuario_abriu: TIntegerField
      FieldName = 'cod_usuario_abriu'
    end
    object cdsChamadosfuncionario_emp: TStringField
      FieldName = 'funcionario_emp'
      Size = 60
    end
    object cdsChamadosorigem_chamado: TStringField
      FieldName = 'origem_chamado'
    end
    object cdsChamadostempo_gasto: TFMTBCDField
      FieldName = 'tempo_gasto'
      Precision = 15
      Size = 2
    end
    object cdsChamadosdata_final: TDateField
      FieldName = 'data_final'
    end
    object cdsChamadoshora_final: TTimeField
      FieldName = 'hora_final'
    end
    object cdsChamadosgera_compromisso: TStringField
      FieldName = 'gera_compromisso'
      OnGetText = cdsChamadosgera_compromissoGetText
      Size = 1
    end
    object cdsChamadostempo_cobranca: TFMTBCDField
      FieldName = 'tempo_cobranca'
      Precision = 15
      Size = 2
    end
    object cdsChamadosreincidencia: TStringField
      FieldName = 'reincidencia'
      OnGetText = cdsChamadosreincidenciaGetText
      Size = 1
    end
    object cdsChamadoshora_gravacao: TTimeField
      FieldName = 'hora_gravacao'
    end
    object cdsChamadosdata_gravacao: TDateField
      FieldName = 'data_gravacao'
    end
    object cdsChamadossolicitacao: TStringField
      FieldName = 'solicitacao'
      Size = 2000
    end
    object cdsChamadosproc_adotado: TStringField
      FieldName = 'proc_adotado'
      Size = 2000
    end
    object cdsChamadosemail_solicitante: TStringField
      FieldName = 'email_solicitante'
      Size = 100
    end
    object cdsChamadosgera_cronograma_alt: TStringField
      FieldName = 'gera_cronograma_alt'
      OnGetText = cdsChamadosgera_cronograma_altGetText
      Size = 1
    end
    object cdsChamadoskm: TFMTBCDField
      FieldName = 'km'
      Precision = 15
      Size = 2
    end
    object cdsChamadoscaminho_arq: TStringField
      FieldName = 'caminho_arq'
      Size = 1000
    end
    object cdsChamadoscod_usuario_cli: TIntegerField
      FieldName = 'cod_usuario_cli'
    end
    object cdsChamadosemail_solicitante_outro: TStringField
      FieldName = 'email_solicitante_outro'
      Size = 200
    end
    object cdsChamadosdescricao_chamado: TStringField
      FieldName = 'descricao_chamado'
      Size = 3000
    end
    object cdsChamadosdata_ultima_movimentacao: TDateField
      FieldName = 'data_ultima_movimentacao'
    end
  end
  object qryMovChamado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from movimento_chamado where cod_movimento = -1')
    SQLConnection = conpg
    Left = 344
    Top = 272
    object qryMovChamadocod_movimento: TIntegerField
      FieldName = 'cod_movimento'
    end
    object qryMovChamadocod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object qryMovChamadocod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object qryMovChamadodesc_status: TStringField
      FieldName = 'desc_status'
      Size = 60
    end
    object qryMovChamadocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object qryMovChamadonome_usuario_resp: TStringField
      FieldName = 'nome_usuario_resp'
      Size = 60
    end
    object qryMovChamadonivel_prioridade: TStringField
      FieldName = 'nivel_prioridade'
      Size = 1
    end
    object qryMovChamadodata_movimento: TDateField
      FieldName = 'data_movimento'
    end
    object qryMovChamadotempo_gasto: TFMTBCDField
      FieldName = 'tempo_gasto'
      Precision = 15
      Size = 2
    end
    object qryMovChamadoobservacao: TStringField
      FieldName = 'observacao'
      Size = 1000
    end
    object qryMovChamadocod_usuario_mov: TIntegerField
      FieldName = 'cod_usuario_mov'
    end
    object qryMovChamadonome_usuario_mov: TStringField
      FieldName = 'nome_usuario_mov'
      Size = 60
    end
    object qryMovChamadodata_fim: TDateField
      FieldName = 'data_fim'
    end
    object qryMovChamadohora_inic: TTimeField
      FieldName = 'hora_inic'
    end
    object qryMovChamadohora_fim: TTimeField
      FieldName = 'hora_fim'
    end
    object qryMovChamadodata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object qryMovChamadogera_compromisso: TStringField
      FieldName = 'gera_compromisso'
      Size = 1
    end
    object qryMovChamadodata_gravacao: TDateField
      FieldName = 'data_gravacao'
    end
    object qryMovChamadohora_gravacao: TTimeField
      FieldName = 'hora_gravacao'
    end
    object qryMovChamadogera_cronograma_alt: TStringField
      FieldName = 'gera_cronograma_alt'
      Size = 1
    end
    object qryMovChamadoemail_movimentacao: TStringField
      FieldName = 'email_movimentacao'
      Size = 2000
    end
    object qryMovChamadoenvia_email: TStringField
      FieldName = 'envia_email'
      Size = 1
    end
    object qryMovChamadoreabertura: TStringField
      FieldName = 'reabertura'
      Size = 1
    end
  end
  object dspMovimento: TDataSetProvider
    DataSet = qryMovChamado
    Left = 424
    Top = 272
  end
  object cdsMovChamado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovimento'
    Left = 491
    Top = 272
    object cdsMovChamadocod_movimento: TIntegerField
      FieldName = 'cod_movimento'
    end
    object cdsMovChamadocod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object cdsMovChamadocod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object cdsMovChamadodesc_status: TStringField
      FieldName = 'desc_status'
      Size = 60
    end
    object cdsMovChamadocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object cdsMovChamadonome_usuario_resp: TStringField
      FieldName = 'nome_usuario_resp'
      Size = 60
    end
    object cdsMovChamadonivel_prioridade: TStringField
      FieldName = 'nivel_prioridade'
      OnGetText = cdsMovChamadonivel_prioridadeGetText
      Size = 1
    end
    object cdsMovChamadodata_movimento: TDateField
      FieldName = 'data_movimento'
    end
    object cdsMovChamadotempo_gasto: TFMTBCDField
      FieldName = 'tempo_gasto'
      Precision = 15
      Size = 2
    end
    object cdsMovChamadoobservacao: TStringField
      FieldName = 'observacao'
      Size = 1000
    end
    object cdsMovChamadocod_usuario_mov: TIntegerField
      FieldName = 'cod_usuario_mov'
    end
    object cdsMovChamadonome_usuario_mov: TStringField
      FieldName = 'nome_usuario_mov'
      Size = 60
    end
    object cdsMovChamadodata_fim: TDateField
      FieldName = 'data_fim'
    end
    object cdsMovChamadohora_inic: TTimeField
      FieldName = 'hora_inic'
    end
    object cdsMovChamadohora_fim: TTimeField
      FieldName = 'hora_fim'
    end
    object cdsMovChamadodata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object cdsMovChamadogera_compromisso: TStringField
      FieldName = 'gera_compromisso'
      OnGetText = cdsMovChamadogera_compromissoGetText
      Size = 1
    end
    object cdsMovChamadodata_gravacao: TDateField
      FieldName = 'data_gravacao'
    end
    object cdsMovChamadohora_gravacao: TTimeField
      FieldName = 'hora_gravacao'
    end
    object cdsMovChamadogera_cronograma_alt: TStringField
      FieldName = 'gera_cronograma_alt'
      OnGetText = cdsMovChamadogera_cronograma_altGetText
      Size = 1
    end
    object cdsMovChamadoemail_movimentacao: TStringField
      FieldName = 'email_movimentacao'
      Size = 2000
    end
    object cdsMovChamadoenvia_email: TStringField
      FieldName = 'envia_email'
      Size = 1
    end
    object cdsMovChamadoreabertura: TStringField
      FieldName = 'reabertura'
      OnGetText = cdsMovChamadoreaberturaGetText
      Size = 1
    end
  end
  object qryMail: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from email_cliente')
    SQLConnection = conpg
    Left = 368
    Top = 336
    object qryMailcod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qryMailemail_1: TStringField
      FieldName = 'email_1'
      Size = 60
    end
    object qryMailemail_2: TStringField
      FieldName = 'email_2'
      Size = 60
    end
    object qryMailemail_3: TStringField
      FieldName = 'email_3'
      Size = 60
    end
    object qryMailemail_4: TStringField
      FieldName = 'email_4'
      Size = 60
    end
    object qryMailemail_5: TStringField
      FieldName = 'email_5'
      Size = 60
    end
    object qryMailnome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object qryMailemail_6: TStringField
      FieldName = 'email_6'
      Size = 60
    end
    object qryMailemail_7: TStringField
      FieldName = 'email_7'
      Size = 60
    end
    object qryMailemail_8: TStringField
      FieldName = 'email_8'
      Size = 60
    end
    object qryMailcontato_1: TStringField
      FieldName = 'contato_1'
    end
    object qryMailcontato_2: TStringField
      FieldName = 'contato_2'
    end
    object qryMailcontato_3: TStringField
      FieldName = 'contato_3'
    end
    object qryMailcontato_4: TStringField
      FieldName = 'contato_4'
    end
    object qryMailcontato_5: TStringField
      FieldName = 'contato_5'
    end
    object qryMailcontato_6: TStringField
      FieldName = 'contato_6'
    end
    object qryMailcontato_7: TStringField
      FieldName = 'contato_7'
    end
    object qryMailcontato_8: TStringField
      FieldName = 'contato_8'
    end
    object qryMailfone_1: TStringField
      FieldName = 'fone_1'
    end
    object qryMailfone_2: TStringField
      FieldName = 'fone_2'
    end
    object qryMailfone_3: TStringField
      FieldName = 'fone_3'
    end
    object qryMailfone_4: TStringField
      FieldName = 'fone_4'
    end
    object qryMailfone_5: TStringField
      FieldName = 'fone_5'
    end
    object qryMailfone_6: TStringField
      FieldName = 'fone_6'
    end
    object qryMailfone_7: TStringField
      FieldName = 'fone_7'
    end
    object qryMailfone_8: TStringField
      FieldName = 'fone_8'
    end
  end
  object dspMail: TDataSetProvider
    DataSet = qryMail
    Left = 416
    Top = 336
  end
  object cdsMail: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMail'
    Left = 472
    Top = 336
    object cdsMailcod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object cdsMailemail_1: TStringField
      FieldName = 'email_1'
      Size = 60
    end
    object cdsMailemail_2: TStringField
      FieldName = 'email_2'
      Size = 60
    end
    object cdsMailemail_3: TStringField
      FieldName = 'email_3'
      Size = 60
    end
    object cdsMailemail_4: TStringField
      FieldName = 'email_4'
      Size = 60
    end
    object cdsMailemail_5: TStringField
      FieldName = 'email_5'
      Size = 60
    end
    object cdsMailnome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object cdsMailemail_6: TStringField
      FieldName = 'email_6'
      Size = 60
    end
    object cdsMailemail_7: TStringField
      FieldName = 'email_7'
      Size = 60
    end
    object cdsMailemail_8: TStringField
      FieldName = 'email_8'
      Size = 60
    end
    object cdsMailcontato_1: TStringField
      FieldName = 'contato_1'
    end
    object cdsMailcontato_2: TStringField
      FieldName = 'contato_2'
    end
    object cdsMailcontato_3: TStringField
      FieldName = 'contato_3'
    end
    object cdsMailcontato_4: TStringField
      FieldName = 'contato_4'
    end
    object cdsMailcontato_5: TStringField
      FieldName = 'contato_5'
    end
    object cdsMailcontato_6: TStringField
      FieldName = 'contato_6'
    end
    object cdsMailcontato_7: TStringField
      FieldName = 'contato_7'
    end
    object cdsMailcontato_8: TStringField
      FieldName = 'contato_8'
    end
    object cdsMailfone_1: TStringField
      FieldName = 'fone_1'
    end
    object cdsMailfone_2: TStringField
      FieldName = 'fone_2'
    end
    object cdsMailfone_3: TStringField
      FieldName = 'fone_3'
    end
    object cdsMailfone_4: TStringField
      FieldName = 'fone_4'
    end
    object cdsMailfone_5: TStringField
      FieldName = 'fone_5'
    end
    object cdsMailfone_6: TStringField
      FieldName = 'fone_6'
    end
    object cdsMailfone_7: TStringField
      FieldName = 'fone_7'
    end
    object cdsMailfone_8: TStringField
      FieldName = 'fone_8'
    end
  end
  object qryCompromissos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from compromissos_cliente')
    SQLConnection = conpg
    Left = 47
    Top = 400
    object qryCompromissoscod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qryCompromissosnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object qryCompromissossolicitante: TStringField
      FieldName = 'solicitante'
      Size = 60
    end
    object qryCompromissoscod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object qryCompromissosnome_usuario: TStringField
      FieldName = 'nome_usuario'
      Size = 60
    end
    object qryCompromissosdata: TDateField
      FieldName = 'data'
    end
    object qryCompromissoshora: TTimeField
      FieldName = 'hora'
    end
    object qryCompromissoslocal: TStringField
      FieldName = 'local'
      Size = 100
    end
    object qryCompromissosobservacao: TStringField
      FieldName = 'observacao'
      Size = 1000
    end
    object qryCompromissoscod_compromisso: TIntegerField
      FieldName = 'cod_compromisso'
    end
    object qryCompromissosfinalizado: TStringField
      FieldName = 'finalizado'
      Size = 1
    end
    object qryCompromissoscod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object qryCompromissosdata_chamado: TDateField
      FieldName = 'data_chamado'
    end
  end
  object dspCompromisso: TDataSetProvider
    DataSet = qryCompromissos
    Left = 111
    Top = 392
  end
  object cdsCompromissos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCompromisso'
    Left = 168
    Top = 400
    object cdsCompromissoscod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object cdsCompromissosnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object cdsCompromissossolicitante: TStringField
      FieldName = 'solicitante'
      Size = 60
    end
    object cdsCompromissoscod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object cdsCompromissosnome_usuario: TStringField
      FieldName = 'nome_usuario'
      Size = 60
    end
    object cdsCompromissosdata: TDateField
      FieldName = 'data'
    end
    object cdsCompromissoshora: TTimeField
      FieldName = 'hora'
    end
    object cdsCompromissoslocal: TStringField
      FieldName = 'local'
      Size = 100
    end
    object cdsCompromissosobservacao: TStringField
      FieldName = 'observacao'
      Size = 1000
    end
    object cdsCompromissoscod_compromisso: TIntegerField
      FieldName = 'cod_compromisso'
    end
    object cdsCompromissosfinalizado: TStringField
      FieldName = 'finalizado'
      OnGetText = cdsCompromissosfinalizadoGetText
      Size = 1
    end
    object cdsCompromissoscod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object cdsCompromissosdata_chamado: TDateField
      FieldName = 'data_chamado'
    end
  end
  object qryParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from parametros_gerais')
    SQLConnection = conpg
    Left = 368
    Top = 400
    object qryParametrosporta_serv_entrada: TStringField
      FieldName = 'porta_serv_entrada'
      Size = 5
    end
    object qryParametrosserv_entrada_email: TStringField
      FieldName = 'serv_entrada_email'
      Size = 60
    end
    object qryParametrosusuario: TStringField
      FieldName = 'usuario'
      Size = 60
    end
    object qryParametrossenha: TStringField
      FieldName = 'senha'
      Size = 60
    end
    object qryParametroscod_cli_padrao: TIntegerField
      FieldName = 'cod_cli_padrao'
    end
    object qryParametrosnome_cli_padrao: TStringField
      FieldName = 'nome_cli_padrao'
      Size = 100
    end
    object qryParametroscod_categoria_padrao: TIntegerField
      FieldName = 'cod_categoria_padrao'
    end
    object qryParametrosdesc_categoria_padrao: TStringField
      FieldName = 'desc_categoria_padrao'
      Size = 60
    end
    object qryParametroscod_status_padrao: TIntegerField
      FieldName = 'cod_status_padrao'
    end
    object qryParametrosdesc_status_padrao: TStringField
      FieldName = 'desc_status_padrao'
      Size = 60
    end
    object qryParametrosprioridade: TStringField
      FieldName = 'prioridade'
      Size = 1
    end
    object qryParametrosorigem_chamado: TStringField
      FieldName = 'origem_chamado'
      Size = 60
    end
    object qryParametrosparametro: TIntegerField
      FieldName = 'parametro'
    end
    object qryParametrosultimo_chamado: TIntegerField
      FieldName = 'ultimo_chamado'
    end
    object qryParametrosano_chamado: TIntegerField
      FieldName = 'ano_chamado'
    end
    object qryParametrosporta_serv_saida: TStringField
      FieldName = 'porta_serv_saida'
      Size = 5
    end
    object qryParametrosserv_saida_email: TStringField
      FieldName = 'serv_saida_email'
      Size = 60
    end
    object qryParametrosusuario_saida: TStringField
      FieldName = 'usuario_saida'
      Size = 60
    end
    object qryParametrossenha_saida: TStringField
      FieldName = 'senha_saida'
      Size = 60
    end
    object qryParametrosemail_envio: TStringField
      FieldName = 'email_envio'
      Size = 60
    end
    object qryParametrosemail_cobranca: TStringField
      FieldName = 'email_cobranca'
      Size = 200
    end
  end
  object dspParametros: TDataSetProvider
    DataSet = qryParametros
    Left = 440
    Top = 400
  end
  object cdsParametros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametros'
    Left = 497
    Top = 400
    object cdsParametrosporta_serv_entrada: TStringField
      FieldName = 'porta_serv_entrada'
      Size = 5
    end
    object cdsParametrosserv_entrada_email: TStringField
      FieldName = 'serv_entrada_email'
      Size = 60
    end
    object cdsParametrosusuario: TStringField
      FieldName = 'usuario'
      Size = 60
    end
    object cdsParametrossenha: TStringField
      FieldName = 'senha'
      Size = 60
    end
    object cdsParametroscod_cli_padrao: TIntegerField
      FieldName = 'cod_cli_padrao'
    end
    object cdsParametrosnome_cli_padrao: TStringField
      FieldName = 'nome_cli_padrao'
      Size = 100
    end
    object cdsParametroscod_categoria_padrao: TIntegerField
      FieldName = 'cod_categoria_padrao'
    end
    object cdsParametrosdesc_categoria_padrao: TStringField
      FieldName = 'desc_categoria_padrao'
      Size = 60
    end
    object cdsParametroscod_status_padrao: TIntegerField
      FieldName = 'cod_status_padrao'
    end
    object cdsParametrosdesc_status_padrao: TStringField
      FieldName = 'desc_status_padrao'
      Size = 60
    end
    object cdsParametrosprioridade: TStringField
      FieldName = 'prioridade'
      Size = 1
    end
    object cdsParametrosorigem_chamado: TStringField
      FieldName = 'origem_chamado'
      Size = 60
    end
    object cdsParametrosparametro: TIntegerField
      FieldName = 'parametro'
    end
    object cdsParametrosultimo_chamado: TIntegerField
      FieldName = 'ultimo_chamado'
    end
    object cdsParametrosano_chamado: TIntegerField
      FieldName = 'ano_chamado'
    end
    object cdsParametrosporta_serv_saida: TStringField
      FieldName = 'porta_serv_saida'
      Size = 5
    end
    object cdsParametrosserv_saida_email: TStringField
      FieldName = 'serv_saida_email'
      Size = 60
    end
    object cdsParametrosusuario_saida: TStringField
      FieldName = 'usuario_saida'
      Size = 60
    end
    object cdsParametrossenha_saida: TStringField
      FieldName = 'senha_saida'
      Size = 60
    end
    object cdsParametrosemail_envio: TStringField
      FieldName = 'email_envio'
      Size = 60
    end
    object cdsParametrosemail_cobranca: TStringField
      FieldName = 'email_cobranca'
      Size = 200
    end
  end
  object qryModulo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from modulos_atendimento')
    SQLConnection = conpg
    Left = 368
    Top = 456
    object qryModulocod_modulo: TIntegerField
      FieldName = 'cod_modulo'
    end
    object qryModulodesc_modulo: TStringField
      FieldName = 'desc_modulo'
      Size = 60
    end
  end
  object dspModulo: TDataSetProvider
    DataSet = qryModulo
    Left = 424
    Top = 456
  end
  object cdsModulo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModulo'
    Left = 488
    Top = 456
    object cdsModulocod_modulo: TIntegerField
      FieldName = 'cod_modulo'
    end
    object cdsModulodesc_modulo: TStringField
      FieldName = 'desc_modulo'
      Size = 60
    end
  end
  object qryDetalheModulo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from detalhe_modulo_atendimento')
    SQLConnection = conpg
    Left = 72
    Top = 456
    object qryDetalheModulocod_report: TIntegerField
      FieldName = 'cod_report'
    end
    object qryDetalheModulocod_modulo: TIntegerField
      FieldName = 'cod_modulo'
    end
    object qryDetalheModulonome_modulo: TStringField
      FieldName = 'nome_modulo'
      Size = 60
    end
    object qryDetalheModulodetalhamento_modulo: TStringField
      FieldName = 'detalhamento_modulo'
      Size = 1000
    end
    object qryDetalheModulocod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object qryDetalheModulodata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object qryDetalheModulocod_compromisso: TIntegerField
      FieldName = 'cod_compromisso'
    end
  end
  object dspDetalhe: TDataSetProvider
    DataSet = qryDetalheModulo
    Left = 160
    Top = 456
  end
  object cdsDetalheModulo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDetalhe'
    Left = 240
    Top = 456
    object cdsDetalheModulocod_report: TIntegerField
      FieldName = 'cod_report'
    end
    object cdsDetalheModulocod_modulo: TIntegerField
      FieldName = 'cod_modulo'
    end
    object cdsDetalheModulonome_modulo: TStringField
      FieldName = 'nome_modulo'
      Size = 60
    end
    object cdsDetalheModulodetalhamento_modulo: TStringField
      FieldName = 'detalhamento_modulo'
      Size = 1000
    end
    object cdsDetalheModulocod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object cdsDetalheModulodata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object cdsDetalheModulocod_compromisso: TIntegerField
      FieldName = 'cod_compromisso'
    end
  end
  object qryBuscaEmails: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select c.mail, e.* from email_cliente e, cliente c '
      'where e.cod_cliente = c.cod_cliente')
    SQLConnection = conpg
    Left = 256
    Top = 16
    object qryBuscaEmailscod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qryBuscaEmailsemail_1: TStringField
      FieldName = 'email_1'
      Size = 60
    end
    object qryBuscaEmailsemail_2: TStringField
      FieldName = 'email_2'
      Size = 60
    end
    object qryBuscaEmailsemail_3: TStringField
      FieldName = 'email_3'
      Size = 60
    end
    object qryBuscaEmailsemail_4: TStringField
      FieldName = 'email_4'
      Size = 60
    end
    object qryBuscaEmailsemail_5: TStringField
      FieldName = 'email_5'
      Size = 60
    end
    object qryBuscaEmailsnome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object qryBuscaEmailsemail_6: TStringField
      FieldName = 'email_6'
      Size = 60
    end
    object qryBuscaEmailsemail_7: TStringField
      FieldName = 'email_7'
      Size = 60
    end
    object qryBuscaEmailsemail_8: TStringField
      FieldName = 'email_8'
      Size = 60
    end
    object qryBuscaEmailscontato_1: TStringField
      FieldName = 'contato_1'
    end
    object qryBuscaEmailscontato_2: TStringField
      FieldName = 'contato_2'
    end
    object qryBuscaEmailscontato_3: TStringField
      FieldName = 'contato_3'
    end
    object qryBuscaEmailscontato_4: TStringField
      FieldName = 'contato_4'
    end
    object qryBuscaEmailscontato_5: TStringField
      FieldName = 'contato_5'
    end
    object qryBuscaEmailscontato_6: TStringField
      FieldName = 'contato_6'
    end
    object qryBuscaEmailscontato_7: TStringField
      FieldName = 'contato_7'
    end
    object qryBuscaEmailscontato_8: TStringField
      FieldName = 'contato_8'
    end
  end
  object qryCronogramaAlt: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cronograma_alteracao')
    SQLConnection = conpg
    Left = 598
    Top = 120
    object qryCronogramaAltcod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object qryCronogramaAltdt_prev_entrega: TDateField
      FieldName = 'dt_prev_entrega'
    end
    object qryCronogramaAlttempo_prev_alteracao: TFMTBCDField
      FieldName = 'tempo_prev_alteracao'
      Precision = 15
      Size = 2
    end
    object qryCronogramaAltcod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qryCronogramaAltnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object qryCronogramaAltcod_modulo: TIntegerField
      FieldName = 'cod_modulo'
    end
    object qryCronogramaAltdesc_modulo: TStringField
      FieldName = 'desc_modulo'
      Size = 60
    end
    object qryCronogramaAltnome_programa: TStringField
      FieldName = 'nome_programa'
      Size = 100
    end
    object qryCronogramaAltdesc_alteracao_prevista: TStringField
      FieldName = 'desc_alteracao_prevista'
      Size = 1000
    end
    object qryCronogramaAltdesc_alteracao_efetivada: TStringField
      FieldName = 'desc_alteracao_efetivada'
      Size = 1000
    end
    object qryCronogramaAltfinalizado: TStringField
      FieldName = 'finalizado'
      Size = 1
    end
    object qryCronogramaAltcod_usr_responsavel: TIntegerField
      FieldName = 'cod_usr_responsavel'
    end
    object qryCronogramaAltnome_usr_responsavel: TStringField
      FieldName = 'nome_usr_responsavel'
      Size = 60
    end
    object qryCronogramaAltcod_categoria: TIntegerField
      FieldName = 'cod_categoria'
    end
    object qryCronogramaAltdesc_categoria: TStringField
      FieldName = 'desc_categoria'
      Size = 60
    end
    object qryCronogramaAltdt_finalizacao: TDateField
      FieldName = 'dt_finalizacao'
    end
    object qryCronogramaAltHr_finalizacao: TTimeField
      FieldName = 'Hr_finalizacao'
    end
    object qryCronogramaAlttempo_gasto: TFMTBCDField
      FieldName = 'tempo_gasto'
      Precision = 15
      Size = 2
    end
    object qryCronogramaAltdata_solicitacao: TDateField
      FieldName = 'data_solicitacao'
    end
  end
  object dspCronograma: TDataSetProvider
    DataSet = qryCronogramaAlt
    Left = 662
    Top = 120
  end
  object cdsCronogramaAlt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCronograma'
    Left = 742
    Top = 120
    object cdsCronogramaAltcod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object cdsCronogramaAltdt_prev_entrega: TDateField
      FieldName = 'dt_prev_entrega'
    end
    object cdsCronogramaAlttempo_prev_alteracao: TFMTBCDField
      FieldName = 'tempo_prev_alteracao'
      Precision = 15
      Size = 2
    end
    object cdsCronogramaAltcod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object cdsCronogramaAltnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object cdsCronogramaAltcod_modulo: TIntegerField
      FieldName = 'cod_modulo'
    end
    object cdsCronogramaAltdesc_modulo: TStringField
      FieldName = 'desc_modulo'
      Size = 60
    end
    object cdsCronogramaAltnome_programa: TStringField
      FieldName = 'nome_programa'
      Size = 100
    end
    object cdsCronogramaAltdesc_alteracao_prevista: TStringField
      FieldName = 'desc_alteracao_prevista'
      Size = 1000
    end
    object cdsCronogramaAltdesc_alteracao_efetivada: TStringField
      FieldName = 'desc_alteracao_efetivada'
      Size = 1000
    end
    object cdsCronogramaAltfinalizado: TStringField
      FieldName = 'finalizado'
      OnGetText = cdsCronogramaAltfinalizadoGetText
      Size = 1
    end
    object cdsCronogramaAltcod_usr_responsavel: TIntegerField
      FieldName = 'cod_usr_responsavel'
    end
    object cdsCronogramaAltnome_usr_responsavel: TStringField
      FieldName = 'nome_usr_responsavel'
      Size = 60
    end
    object cdsCronogramaAltcod_categoria: TIntegerField
      FieldName = 'cod_categoria'
    end
    object cdsCronogramaAltdesc_categoria: TStringField
      FieldName = 'desc_categoria'
      Size = 60
    end
    object cdsCronogramaAltdt_finalizacao: TDateField
      FieldName = 'dt_finalizacao'
    end
    object cdsCronogramaAltHr_finalizacao: TTimeField
      FieldName = 'Hr_finalizacao'
    end
    object cdsCronogramaAlttempo_gasto: TFMTBCDField
      FieldName = 'tempo_gasto'
      Precision = 15
      Size = 2
    end
    object cdsCronogramaAltdata_solicitacao: TDateField
      FieldName = 'data_solicitacao'
    end
  end
  object qryRegAlteracao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from registro_alteracao')
    SQLConnection = conpg
    Left = 616
    Top = 176
    object qryRegAlteracaocod_reg_alteracao: TIntegerField
      FieldName = 'cod_reg_alteracao'
    end
    object qryRegAlteracaodesc_alteracao: TStringField
      FieldName = 'desc_alteracao'
      Size = 2000
    end
    object qryRegAlteracaodata_alteracao: TDateField
      FieldName = 'data_alteracao'
    end
    object qryRegAlteracaodesc_programa: TStringField
      FieldName = 'desc_programa'
      Size = 60
    end
    object qryRegAlteracaodesc_modulo_sistema: TStringField
      FieldName = 'desc_modulo_sistema'
      Size = 60
    end
    object qryRegAlteracaodesc_tela: TStringField
      FieldName = 'desc_tela'
      Size = 60
    end
    object qryRegAlteracaocod_responsavel: TIntegerField
      FieldName = 'cod_responsavel'
    end
    object qryRegAlteracaonome_responsavel: TStringField
      FieldName = 'nome_responsavel'
      Size = 60
    end
  end
  object dspRegistro: TDataSetProvider
    DataSet = qryRegAlteracao
    Left = 688
    Top = 176
  end
  object cdsRegAlteracao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRegistro'
    Left = 752
    Top = 176
    object cdsRegAlteracaocod_reg_alteracao: TIntegerField
      FieldName = 'cod_reg_alteracao'
    end
    object cdsRegAlteracaodesc_alteracao: TStringField
      FieldName = 'desc_alteracao'
      Size = 2000
    end
    object cdsRegAlteracaodata_alteracao: TDateField
      FieldName = 'data_alteracao'
    end
    object cdsRegAlteracaodesc_programa: TStringField
      FieldName = 'desc_programa'
      Size = 60
    end
    object cdsRegAlteracaodesc_modulo_sistema: TStringField
      FieldName = 'desc_modulo_sistema'
      Size = 60
    end
    object cdsRegAlteracaodesc_tela: TStringField
      FieldName = 'desc_tela'
      Size = 60
    end
    object cdsRegAlteracaocod_responsavel: TIntegerField
      FieldName = 'cod_responsavel'
    end
    object cdsRegAlteracaonome_responsavel: TStringField
      FieldName = 'nome_responsavel'
      Size = 60
    end
  end
  object qryitens_ckecklist: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from itens_ckecklist')
    SQLConnection = conpg
    Left = 616
    Top = 232
    object qryitens_ckecklistsequencia_item: TIntegerField
      FieldName = 'sequencia_item'
    end
    object qryitens_ckecklistdescricao_item: TStringField
      FieldName = 'descricao_item'
      Size = 100
    end
    object qryitens_ckecklistativo: TStringField
      FieldName = 'ativo'
      Size = 1
    end
  end
  object dspitens_ckecklist: TDataSetProvider
    DataSet = qryitens_ckecklist
    Left = 688
    Top = 232
  end
  object cdsitens_ckecklist: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspitens_ckecklist'
    Left = 752
    Top = 232
    object cdsitens_ckecklistsequencia_item: TIntegerField
      DisplayLabel = 'Seq.Item'
      FieldName = 'sequencia_item'
    end
    object cdsitens_ckecklistdescricao_item: TStringField
      DisplayLabel = 'Descri'#231#227'o Item'
      FieldName = 'descricao_item'
      Size = 100
    end
    object cdsitens_ckecklistativo: TStringField
      DefaultExpression = #39'S'#39
      DisplayLabel = 'Ativo'
      FieldName = 'ativo'
      OnGetText = cdsCronogramaAltfinalizadoGetText
      Size = 1
    end
  end
  object qrycliente_checklist_implantacao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cliente_checklist_implantacao')
    SQLConnection = conpg
    Left = 616
    Top = 280
    object qrycliente_checklist_implantacaocod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qrycliente_checklist_implantacaosequencia_item: TIntegerField
      FieldName = 'sequencia_item'
    end
    object qrycliente_checklist_implantacaodescricao_item: TStringField
      FieldName = 'descricao_item'
      Size = 100
    end
    object qrycliente_checklist_implantacaoconcluido: TStringField
      FieldName = 'concluido'
      Size = 1
    end
    object qrycliente_checklist_implantacaodata_conclusao: TDateField
      FieldName = 'data_conclusao'
    end
    object qrycliente_checklist_implantacaousr_conclusao: TIntegerField
      FieldName = 'usr_conclusao'
    end
    object qrycliente_checklist_implantacaoobservacao: TStringField
      FieldName = 'observacao'
      Size = 1000
    end
  end
  object dspcliente_checklist_implantacao: TDataSetProvider
    DataSet = qrycliente_checklist_implantacao
    Left = 688
    Top = 280
  end
  object cdscliente_checklist_implantacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcliente_checklist_implantacao'
    Left = 752
    Top = 280
    object cdscliente_checklist_implantacaocod_cliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
    end
    object cdscliente_checklist_implantacaosequencia_item: TIntegerField
      DisplayLabel = 'Seq.Item'
      FieldName = 'sequencia_item'
    end
    object cdscliente_checklist_implantacaodescricao_item: TStringField
      DisplayLabel = 'Descri'#231#227'o Item'
      FieldName = 'descricao_item'
      Size = 100
    end
    object cdscliente_checklist_implantacaoconcluido: TStringField
      DefaultExpression = #39'N'#39
      DisplayLabel = 'Conclu'#237'do'
      FieldName = 'concluido'
      OnGetText = cdscliente_checklist_implantacaoconcluidoGetText
      Size = 1
    end
    object cdscliente_checklist_implantacaodata_conclusao: TDateField
      DisplayLabel = 'Dt.Conclus'#227'o'
      FieldName = 'data_conclusao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdscliente_checklist_implantacaousr_conclusao: TIntegerField
      DisplayLabel = 'Usr.Conclus'#227'o'
      FieldName = 'usr_conclusao'
    end
    object cdscliente_checklist_implantacaoobservacao: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'observacao'
      Size = 1000
    end
  end
  object qrycliente_checklist_impl_detal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cliente_checklist_impl_detal')
    SQLConnection = conpg
    Left = 616
    Top = 328
    object qrycliente_checklist_impl_detalcod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qrycliente_checklist_impl_detalsequencia_item: TIntegerField
      FieldName = 'sequencia_item'
    end
    object qrycliente_checklist_impl_detalsequencia_detalhamento: TIntegerField
      FieldName = 'sequencia_detalhamento'
    end
    object qrycliente_checklist_impl_detaldescricao_item: TStringField
      FieldName = 'descricao_item'
      Size = 100
    end
    object qrycliente_checklist_impl_detaldata_registro: TDateField
      FieldName = 'data_registro'
    end
    object qrycliente_checklist_impl_detalusr_registro: TIntegerField
      FieldName = 'usr_registro'
    end
    object qrycliente_checklist_impl_detalobservacao: TStringField
      FieldName = 'observacao'
      Size = 1000
    end
  end
  object dspcliente_checklist_impl_detal: TDataSetProvider
    DataSet = qrycliente_checklist_impl_detal
    Left = 688
    Top = 328
  end
  object cdscliente_checklist_impl_detal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcliente_checklist_impl_detal'
    Left = 752
    Top = 328
    object cdscliente_checklist_impl_detalcod_cliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
    end
    object cdscliente_checklist_impl_detalsequencia_item: TIntegerField
      DisplayLabel = 'Seq.Item'
      FieldName = 'sequencia_item'
    end
    object cdscliente_checklist_impl_detalsequencia_detalhamento: TIntegerField
      DisplayLabel = 'Seq.Detalhamento'
      FieldName = 'sequencia_detalhamento'
    end
    object cdscliente_checklist_impl_detaldescricao_item: TStringField
      DisplayLabel = 'Descri'#231#227'o Item'
      FieldName = 'descricao_item'
      Size = 100
    end
    object cdscliente_checklist_impl_detaldata_registro: TDateField
      DisplayLabel = 'Dt.Registro'
      FieldName = 'data_registro'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdscliente_checklist_impl_detalusr_registro: TIntegerField
      DisplayLabel = 'Usr.Registro'
      FieldName = 'usr_registro'
    end
    object cdscliente_checklist_impl_detalobservacao: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'observacao'
      Size = 1000
    end
  end
  object qryId_msg: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from chamado_id_msg')
    SQLConnection = conpg
    Left = 616
    Top = 400
    object qryId_msgid_msg: TStringField
      FieldName = 'id_msg'
      Size = 2000
    end
    object qryId_msgdata: TDateField
      FieldName = 'data'
    end
    object qryId_msgcod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
  end
  object dspId_msg: TDataSetProvider
    DataSet = qryId_msg
    Left = 680
    Top = 400
  end
  object cdsId_msg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspId_msg'
    Left = 744
    Top = 400
    object cdsId_msgid_msg: TStringField
      FieldName = 'id_msg'
      Size = 2000
    end
    object cdsId_msgdata: TDateField
      FieldName = 'data'
    end
    object cdsId_msgcod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
  end
  object qryDesenv: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from desenvolvimento')
    SQLConnection = conpg
    Left = 616
    Top = 464
    object qryDesenvcod_desenvolvimento: TIntegerField
      FieldName = 'cod_desenvolvimento'
    end
    object qryDesenvcod_tela: TIntegerField
      FieldName = 'cod_tela'
    end
    object qryDesenvcod_modulo: TIntegerField
      FieldName = 'cod_modulo'
    end
    object qryDesenvnome_tela: TStringField
      FieldName = 'nome_tela'
      Size = 200
    end
    object qryDesenvdata_alteracao: TDateField
      FieldName = 'data_alteracao'
    end
    object qryDesenvtempo: TFMTBCDField
      FieldName = 'tempo'
      Precision = 15
      Size = 2
    end
    object qryDesenvcod_categoria: TIntegerField
      FieldName = 'cod_categoria'
    end
    object qryDesenvobservacao: TStringField
      FieldName = 'observacao'
      Size = 2000
    end
    object qryDesenvcod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object qryDesenvcod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qryDesenvnum_chamado: TIntegerField
      FieldName = 'num_chamado'
    end
    object qryDesenvdata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object qryDesenvtempo_cobranca: TFMTBCDField
      FieldName = 'tempo_cobranca'
      Precision = 15
      Size = 2
    end
  end
  object dspDesenv: TDataSetProvider
    DataSet = qryDesenv
    Left = 672
    Top = 464
  end
  object cdsDesenv: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDesenv'
    Left = 736
    Top = 464
    object cdsDesenvcod_desenvolvimento: TIntegerField
      FieldName = 'cod_desenvolvimento'
    end
    object cdsDesenvcod_tela: TIntegerField
      FieldName = 'cod_tela'
    end
    object cdsDesenvcod_modulo: TIntegerField
      FieldName = 'cod_modulo'
    end
    object cdsDesenvnome_tela: TStringField
      FieldName = 'nome_tela'
      Size = 200
    end
    object cdsDesenvdata_alteracao: TDateField
      FieldName = 'data_alteracao'
    end
    object cdsDesenvtempo: TFMTBCDField
      FieldName = 'tempo'
      Precision = 15
      Size = 2
    end
    object cdsDesenvcod_categoria: TIntegerField
      FieldName = 'cod_categoria'
    end
    object cdsDesenvobservacao: TStringField
      FieldName = 'observacao'
      Size = 2000
    end
    object cdsDesenvcod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object cdsDesenvcod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object cdsDesenvnum_chamado: TIntegerField
      FieldName = 'num_chamado'
    end
    object cdsDesenvdata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object cdsDesenvtempo_cobranca: TFMTBCDField
      FieldName = 'tempo_cobranca'
      Precision = 15
      Size = 2
    end
  end
  object qryTelas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from telas')
    SQLConnection = conpg
    Left = 608
    Top = 520
    object qryTelascod_modulo: TIntegerField
      FieldName = 'cod_modulo'
    end
    object qryTelascod_tela: TIntegerField
      FieldName = 'cod_tela'
    end
    object qryTelasnome: TStringField
      FieldName = 'nome'
      Size = 40
    end
    object qryTelasdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
    object qryTelasdescr_menu: TStringField
      FieldName = 'descr_menu'
      Size = 50
    end
    object qryTelassubmenu: TStringField
      FieldName = 'submenu'
      Size = 50
    end
    object qryTelasmenu: TStringField
      FieldName = 'menu'
      Size = 60
    end
  end
  object dspTelas: TDataSetProvider
    DataSet = qryTelas
    Left = 672
    Top = 520
  end
  object cdsTelas: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'COD_TELA'
        Fields = 'COD_TELA'
        Options = [ixPrimary]
      end>
    Params = <>
    ProviderName = 'dspTelas'
    StoreDefs = True
    Left = 736
    Top = 520
    object cdsTelascod_modulo: TIntegerField
      FieldName = 'cod_modulo'
    end
    object cdsTelascod_tela: TIntegerField
      FieldName = 'cod_tela'
    end
    object cdsTelasnome: TStringField
      FieldName = 'nome'
      Size = 40
    end
    object cdsTelasdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
    object cdsTelasdescr_menu: TStringField
      FieldName = 'descr_menu'
      Size = 50
    end
    object cdsTelassubmenu: TStringField
      FieldName = 'submenu'
      Size = 50
    end
    object cdsTelasmenu: TStringField
      FieldName = 'menu'
      Size = 60
    end
  end
  object qryCliente_usuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cliente_usuario')
    SQLConnection = conpg
    Left = 368
    Top = 512
    object qryCliente_usuariocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object qryCliente_usuariocod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qryCliente_usuarionome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object qryCliente_usuarionome_usuario: TStringField
      FieldName = 'nome_usuario'
      Size = 60
    end
    object qryCliente_usuariopermissao_suporte: TStringField
      FieldName = 'permissao_suporte'
      Size = 1
    end
    object qryCliente_usuariopermissao_abrir_chamado: TStringField
      FieldName = 'permissao_abrir_chamado'
      Size = 1
    end
    object qryCliente_usuarioativo: TStringField
      FieldName = 'ativo'
      Size = 1
    end
    object qryCliente_usuarioemail: TStringField
      FieldName = 'email'
      Size = 200
    end
  end
  object dspCliente_usuario: TDataSetProvider
    DataSet = qryCliente_usuario
    Left = 432
    Top = 512
  end
  object cdsCliente_usuario: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'COD_USUARIO'
        Fields = 'COD_USUARIO'
        Options = [ixPrimary]
      end>
    Params = <>
    ProviderName = 'dspCliente_usuario'
    StoreDefs = True
    Left = 504
    Top = 512
    object cdsCliente_usuariocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object cdsCliente_usuariocod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object cdsCliente_usuarionome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object cdsCliente_usuarionome_usuario: TStringField
      FieldName = 'nome_usuario'
      Size = 60
    end
    object cdsCliente_usuariopermissao_suporte: TStringField
      FieldName = 'permissao_suporte'
      OnGetText = cdsCliente_usuariopermissao_suporteGetText
      Size = 1
    end
    object cdsCliente_usuariopermissao_abrir_chamado: TStringField
      FieldName = 'permissao_abrir_chamado'
      OnGetText = cdsCliente_usuariopermissao_abrir_chamadoGetText
      Size = 1
    end
    object cdsCliente_usuarioativo: TStringField
      FieldName = 'ativo'
      OnGetText = cdsCliente_usuarioativoGetText
      Size = 1
    end
    object cdsCliente_usuarioemail: TStringField
      FieldName = 'email'
      Size = 200
    end
  end
  object qryBloqueados: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from bloqueados')
    SQLConnection = conpg
    Left = 72
    Top = 520
    object qryBloqueadostabela: TStringField
      FieldName = 'tabela'
      Size = 100
    end
    object qryBloqueadoslogin_bloqueou: TStringField
      FieldName = 'login_bloqueou'
      Size = 50
    end
    object qryBloqueadoschave1: TStringField
      FieldName = 'chave1'
    end
    object qryBloqueadoschave2: TStringField
      FieldName = 'chave2'
    end
    object qryBloqueadoschave3: TStringField
      FieldName = 'chave3'
    end
    object qryBloqueadoschave4: TStringField
      FieldName = 'chave4'
    end
    object qryBloqueadoschave5: TStringField
      FieldName = 'chave5'
    end
  end
  object dspBloqueados: TDataSetProvider
    DataSet = qryBloqueados
    Left = 144
    Top = 520
  end
  object cdsBloqueados: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'tabela'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'login_bloqueou'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'chave1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'chave2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'chave3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'chave4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'chave5'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspBloqueados'
    StoreDefs = True
    Left = 208
    Top = 520
    object cdsBloqueadostabela: TStringField
      FieldName = 'tabela'
      Size = 100
    end
    object cdsBloqueadoslogin_bloqueou: TStringField
      FieldName = 'login_bloqueou'
      Size = 50
    end
    object cdsBloqueadoschave1: TStringField
      FieldName = 'chave1'
    end
    object cdsBloqueadoschave2: TStringField
      FieldName = 'chave2'
    end
    object cdsBloqueadoschave3: TStringField
      FieldName = 'chave3'
    end
    object cdsBloqueadoschave4: TStringField
      FieldName = 'chave4'
    end
    object cdsBloqueadoschave5: TStringField
      FieldName = 'chave5'
    end
  end
  object qryAgenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from agenda')
    SQLConnection = conpg
    Left = 448
    Top = 24
    object qryAgendaseq_agenda: TIntegerField
      FieldName = 'seq_agenda'
    end
    object qryAgendacod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object qryAgendanome_usuario: TStringField
      FieldName = 'nome_usuario'
      Size = 60
    end
    object qryAgendadata_saida: TDateField
      FieldName = 'data_saida'
    end
    object qryAgendahora_saida: TTimeField
      FieldName = 'hora_saida'
    end
    object qryAgendaprev_data_retorno: TDateField
      FieldName = 'prev_data_retorno'
    end
    object qryAgendaprev_hora_retorno: TTimeField
      FieldName = 'prev_hora_retorno'
    end
    object qryAgendaobservacao: TStringField
      FieldName = 'observacao'
      Size = 3000
    end
    object qryAgendaativo: TBooleanField
      FieldName = 'ativo'
    end
    object qryAgendacod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qryAgendanome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 100
    end
  end
  object dspAgenda: TDataSetProvider
    DataSet = qryAgenda
    Left = 504
    Top = 24
  end
  object cdsAgenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgenda'
    Left = 560
    Top = 24
    object cdsAgendaseq_agenda: TIntegerField
      FieldName = 'seq_agenda'
    end
    object cdsAgendacod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object cdsAgendanome_usuario: TStringField
      FieldName = 'nome_usuario'
      Size = 60
    end
    object cdsAgendadata_saida: TDateField
      FieldName = 'data_saida'
    end
    object cdsAgendahora_saida: TTimeField
      FieldName = 'hora_saida'
    end
    object cdsAgendaprev_data_retorno: TDateField
      FieldName = 'prev_data_retorno'
    end
    object cdsAgendaprev_hora_retorno: TTimeField
      FieldName = 'prev_hora_retorno'
    end
    object cdsAgendaobservacao: TStringField
      FieldName = 'observacao'
      Size = 3000
    end
    object cdsAgendaativo: TBooleanField
      FieldName = 'ativo'
    end
    object cdsAgendacod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object cdsAgendanome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 100
    end
  end
  object qrycliente_respostas_pesquisa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cliente_respostas_pesquisa')
    SQLConnection = conpg
    Left = 664
    Top = 16
    object qrycliente_respostas_pesquisacod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qrycliente_respostas_pesquisasequencia: TIntegerField
      FieldName = 'sequencia'
    end
    object qrycliente_respostas_pesquisadescr_resposta: TStringField
      FieldName = 'descr_resposta'
      Size = 3000
    end
    object qrycliente_respostas_pesquisausr_inclusao: TIntegerField
      FieldName = 'usr_inclusao'
    end
    object qrycliente_respostas_pesquisadata_inclusao: TDateField
      FieldName = 'data_inclusao'
    end
    object qrycliente_respostas_pesquisahora_inclusao: TTimeField
      FieldName = 'hora_inclusao'
    end
    object qrycliente_respostas_pesquisadescr_pergunta: TStringField
      FieldName = 'descr_pergunta'
      Size = 1000
    end
    object qrycliente_respostas_pesquisasequencia_resposta: TIntegerField
      FieldName = 'sequencia_resposta'
    end
  end
  object dspcliente_respostas_pesquisa: TDataSetProvider
    DataSet = qrycliente_respostas_pesquisa
    Left = 728
    Top = 16
  end
  object cdscliente_respostas_pesquisa: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cod_cliente'
        DataType = ftInteger
      end
      item
        Name = 'sequencia'
        DataType = ftInteger
      end
      item
        Name = 'descr_resposta'
        DataType = ftString
        Size = 3000
      end
      item
        Name = 'usr_inclusao'
        DataType = ftInteger
      end
      item
        Name = 'data_inclusao'
        DataType = ftDate
      end
      item
        Name = 'hora_inclusao'
        DataType = ftTime
      end
      item
        Name = 'descr_pergunta'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'sequencia_resposta'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'COD_STATUS'
        Fields = 'COD_STATUS'
        Options = [ixPrimary]
      end>
    Params = <>
    ProviderName = 'dspcliente_respostas_pesquisa'
    StoreDefs = True
    Left = 784
    Top = 16
    object cdscliente_respostas_pesquisacod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object cdscliente_respostas_pesquisasequencia: TIntegerField
      FieldName = 'sequencia'
    end
    object cdscliente_respostas_pesquisadescr_resposta: TStringField
      FieldName = 'descr_resposta'
      Size = 3000
    end
    object cdscliente_respostas_pesquisausr_inclusao: TIntegerField
      FieldName = 'usr_inclusao'
    end
    object cdscliente_respostas_pesquisadata_inclusao: TDateField
      FieldName = 'data_inclusao'
    end
    object cdscliente_respostas_pesquisahora_inclusao: TTimeField
      FieldName = 'hora_inclusao'
    end
    object cdscliente_respostas_pesquisadescr_pergunta: TStringField
      FieldName = 'descr_pergunta'
      Size = 1000
    end
    object cdscliente_respostas_pesquisasequencia_resposta: TIntegerField
      FieldName = 'sequencia_resposta'
    end
  end
  object qrycliente_perguntas_pesquisa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cliente_perguntas_pesquisa')
    SQLConnection = conpg
    Left = 664
    Top = 64
    object qrycliente_perguntas_pesquisasequencia: TIntegerField
      FieldName = 'sequencia'
    end
    object qrycliente_perguntas_pesquisaativo: TStringField
      FieldName = 'ativo'
      Size = 1
    end
    object qrycliente_perguntas_pesquisadescr_pergunta: TStringField
      FieldName = 'descr_pergunta'
      Size = 1000
    end
  end
  object dspcliente_perguntas_pesquisa: TDataSetProvider
    DataSet = qrycliente_perguntas_pesquisa
    Left = 728
    Top = 64
  end
  object cdscliente_perguntas_pesquisa: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'sequencia'
        DataType = ftInteger
      end
      item
        Name = 'ativo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'descr_pergunta'
        DataType = ftString
        Size = 1000
      end>
    IndexDefs = <
      item
        Name = 'COD_STATUS'
        Fields = 'COD_STATUS'
        Options = [ixPrimary]
      end>
    Params = <>
    ProviderName = 'dspcliente_perguntas_pesquisa'
    StoreDefs = True
    Left = 784
    Top = 64
    object cdscliente_perguntas_pesquisasequencia: TIntegerField
      FieldName = 'sequencia'
    end
    object cdscliente_perguntas_pesquisaativo: TStringField
      DefaultExpression = #39'S'#39
      FieldName = 'ativo'
      OnGetText = cdscliente_perguntas_pesquisaativoGetText
      Size = 1
    end
    object cdscliente_perguntas_pesquisadescr_pergunta: TStringField
      FieldName = 'descr_pergunta'
      Size = 1000
    end
  end
end
