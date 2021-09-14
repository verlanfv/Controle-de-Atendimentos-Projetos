object frmRelChamados: TfrmRelChamados
  Left = 485
  Top = 139
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Chamados'
  ClientHeight = 640
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 614
    Height = 640
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 116
      Top = 176
      Width = 37
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 84
      Top = 26
      Width = 69
      Height = 13
      Caption = 'Cliente Inic.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 358
      Top = 26
      Width = 60
      Height = 13
      Caption = 'Cliente fim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 98
      Top = 207
      Width = 55
      Height = 13
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 52
      Top = 80
      Width = 101
      Height = 13
      Caption = 'Resp. pelo Cham.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 365
      Top = 80
      Width = 54
      Height = 13
      Caption = 'Resp. fim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 98
      Top = 145
      Width = 55
      Height = 13
      Caption = 'Dt. In'#237'cio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 366
      Top = 140
      Width = 38
      Height = 13
      Caption = 'Dt. fim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 37
      Top = 110
      Width = 116
      Height = 13
      Caption = 'Usu'#225'rio Abriu Cham.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 322
      Top = 112
      Width = 97
      Height = 13
      Caption = 'Usu'#225'rio Abriu fim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 60
      Top = 301
      Width = 93
      Height = 13
      Caption = 'N'#237'vel Prioridade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 57
      Top = 327
      Width = 96
      Height = 13
      Caption = 'Origem Chamado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 60
      Top = 384
      Width = 76
      Height = 13
      Caption = 'Ordenar por :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 353
      Top = 456
      Width = 22
      Height = 24
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 127
      Top = 350
      Width = 26
      Height = 13
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 574
      Width = 612
      Height = 65
      Align = alBottom
      BorderStyle = bsSingle
      TabOrder = 21
    end
    object btnGerar: TBitBtn
      Left = 41
      Top = 583
      Width = 97
      Height = 49
      Cursor = crHandPoint
      Caption = '&Gerar'
      TabOrder = 22
      OnClick = btnGerarClick
      Glyph.Data = {
        36050000424D3605000000000000360000002800000015000000140000000100
        18000000000000050000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A9A29A8A76698A6449956C4F956C
        4F978A88C4CBCCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C084461CCB7539ED8B4FFA8659F99759F997
        59ED8B4FB8632AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0B15A2CFA8659F99759FEAC6CFFC887FFC47EF3AD
        71F3AD71FEAC6CF99759975D38C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0B15A2CFA8659F9946BFECF90D2AE90A69996C2C4C4CED9
        DCC5CDD3B4A69AB3835AF99759956C4FC0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C084461CFA8659F9946BFED797B8A78CC0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0A89488E7884AA69996C0C0C0C0C0C0008A766988512D
        948477866758D6793AF99759FECF90B8A78CC0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0A69996B3835AC0C0C0C0C0C000A9A29AD76E31
        F57535D76E31FA8659FDA565F3AD71C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0978A88C0C0C0C0C0C000C0C0C0A85A25
        F99759F99759F99759FDA565E7884A956C4FB4B0ADC0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0B4B0AD866758C0C0C0C0C0C000C0C0C0866758
        FA8659F99759F99759F9946BF9946BF99759EA9457AD734EC0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0795A4CB06837ED8B4FB4A69AC0C0C000C0C0C0B6B4B4
        D76E31F9946BF9946BFDA565FFC47EFFC887B8A78CBCC3C4C0C0C0C0C0C0C0C0
        C0BCC3C4795A4CB15A2CF9946BFFC887FFC47EAD734EC0C0C000C0C0C0C0C0C0
        975D38C0C0C0FEB777FFC887CC956EB6B4B4C0C0C0C0C0C0C0C0C0C0C0C08667
        58B15A2CEA9457FFC47EFFC887FFC887FFC887ED8B4FC0C0C000C0C0C0C0C0C0
        948477C0C0C0D3A478B7AAA7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A158
        4FF99759FFC47EFFC887FFC887FFC887FECF90FEB777A8948800C0C0C0C0C0C0
        C5CDD3A69996C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0CBD3D4A97972EA9457FECF90FECF90FED797FECF90CC794700C0C0C0C0C0C0
        C2C4C4A68878C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C08E8A8CCC7947FECF90FFE5A5FFC887FFC47EFEAC6C00C0C0C0C0C0C0
        C0C0C0B15A2CA69996C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0B4BABB9A5323FEB777FED797F3B28CC0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0D76E31948477C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0978A
        889A5323F3AD71FED797FFE5A5A68878C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0A1584FF57535B15A2C977670A9A29AA9A29A8A766988512DCC79
        47FEB777FED797FFE5A5CC956EC0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0A1584FFA8659F99759E7884AD88449EA9457FEB777FECF
        90FED797FED797CC956EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0948477CC7947FDA565FEB777FFC887FFC887FFC8
        87F3AD71A68878C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B49490B49490B8A78CB6B4
        B4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
    end
    object btnSair: TBitBtn
      Left = 144
      Top = 583
      Width = 97
      Height = 49
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 23
      OnClick = btnSairClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0005B70005B70005B7FF00FFFF00FFFF00FF0005B70005B70005
        B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0005B70005B70005B7FF00FFFF00FFFF00FFFF00FF
        0005B70005B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B70005B7FF00FFFF00FFFF
        00FFFF00FFFF00FF0005B70005B70005B70005B70005B7FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B70005B7FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B70005B700
        05B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B7
        0005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006
        F60005B70005B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF0005B700
        05B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0005B70005B70005B70005B7FF00FFFF00FF0005
        B70005B70005B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B7
        0005B70005B70005B70005B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0005B70005B70006F60005B70006F60005B70005B7FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B70006F60005B7FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70006F60005B70005
        B70006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70006F6
        0005B70006F60006F60006F60005B70006F6FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F600
        06F60006F60005B70006F6FF00FFFF00FF0006F60006F60006F60006F6FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0006F60006F60005B70006F60006F6FF00FFFF00FFFF00FFFF00FF0006F600
        06F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0006F60006F60006F60006F60006F6FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0006F60006F60006F60006F60006F6FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F6FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F60006F60006F6FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0006F6FF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F60006
        F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F6
        0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object edtCliIni: TEdit
      Left = 158
      Top = 18
      Width = 59
      Height = 21
      TabOrder = 0
      Text = '0'
      OnDblClick = edtCliIniDblClick
    end
    object edtCliFim: TEdit
      Left = 425
      Top = 18
      Width = 73
      Height = 21
      TabOrder = 1
      Text = '99999'
      OnDblClick = edtCliFimDblClick
    end
    object cbxStatus: TComboBox
      Left = 158
      Top = 168
      Width = 209
      Height = 21
      CharCase = ecUpperCase
      DropDownCount = 10
      ItemHeight = 13
      TabOrder = 9
      OnChange = cbxStatusChange
      OnExit = cbxStatusExit
    end
    object cbxCategoria: TComboBox
      Left = 158
      Top = 199
      Width = 209
      Height = 21
      CharCase = ecUpperCase
      DropDownCount = 10
      ItemHeight = 13
      TabOrder = 10
    end
    object edtRespIni: TEdit
      Left = 158
      Top = 72
      Width = 59
      Height = 21
      TabOrder = 3
      Text = '0'
      OnDblClick = edtRespIniDblClick
    end
    object edtRespFim: TEdit
      Left = 425
      Top = 72
      Width = 73
      Height = 21
      TabOrder = 4
      Text = '99999'
      OnDblClick = edtRespFimDblClick
    end
    object edtDataIni: TDateTimePicker
      Left = 158
      Top = 137
      Width = 89
      Height = 21
      Date = 41116.000000000000000000
      Time = 41116.000000000000000000
      TabOrder = 7
    end
    object edtDatafim: TDateTimePicker
      Left = 409
      Top = 137
      Width = 89
      Height = 21
      Date = 41116.000000000000000000
      Time = 41116.000000000000000000
      TabOrder = 8
    end
    object edtUsuarioAbriuInic: TEdit
      Left = 158
      Top = 104
      Width = 59
      Height = 21
      TabOrder = 5
      Text = '0'
      OnDblClick = edtUsuarioAbriuInicDblClick
    end
    object edtUsuarioAbriuFim: TEdit
      Left = 425
      Top = 104
      Width = 73
      Height = 21
      TabOrder = 6
      Text = '99999'
      OnDblClick = edtUsuarioAbriuFimDblClick
    end
    object cbxPrioridade: TComboBox
      Left = 158
      Top = 293
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 15
      Text = 'TODOS'
      Items.Strings = (
        '1 - BAIXA'
        '2 - MEDIA'
        '3 - ALTA'
        'TODOS')
    end
    object RadioGroup1: TRadioGroup
      Left = 91
      Top = 230
      Width = 409
      Height = 55
      Caption = 'Prazo dos Chamados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object rdEstourado: TRadioButton
      Left = 120
      Top = 255
      Width = 113
      Height = 17
      Caption = 'Prazo Estourado'
      TabOrder = 12
    end
    object rdDentro: TRadioButton
      Left = 264
      Top = 255
      Width = 113
      Height = 17
      Caption = 'Dentro do Prazo'
      TabOrder = 13
    end
    object rdTodos: TRadioButton
      Left = 416
      Top = 255
      Width = 57
      Height = 17
      Caption = 'Todos'
      Checked = True
      TabOrder = 14
      TabStop = True
    end
    object cbxOrigem: TComboBox
      Left = 158
      Top = 319
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      ItemIndex = 5
      TabOrder = 16
      Text = 'TODOS'
      Items.Strings = (
        'MSN'
        'TELEFONE'
        'E-MAIL'
        'SKYPE'
        'INTERNO'
        'TODOS')
    end
    object Panel3: TPanel
      Left = 59
      Top = 398
      Width = 288
      Height = 139
      BorderStyle = bsSingle
      TabOrder = 17
      object lblcod_chamado: TLabel
        Left = 32
        Top = 8
        Width = 68
        Height = 13
        Cursor = crHandPoint
        Caption = 'cod_chamado'
        OnClick = lblcod_chamadoClick
      end
      object lblcod_cliente: TLabel
        Left = 32
        Top = 26
        Width = 55
        Height = 13
        Caption = 'cod_cliente'
        OnClick = lblcod_clienteClick
      end
      object lblcod_status: TLabel
        Left = 32
        Top = 46
        Width = 52
        Height = 13
        Caption = 'cod_status'
        OnClick = lblcod_statusClick
      end
      object lblcod_categoria: TLabel
        Left = 32
        Top = 66
        Width = 68
        Height = 13
        Caption = 'cod_categoria'
        OnClick = lblcod_categoriaClick
      end
      object lbldata_chamado: TLabel
        Left = 32
        Top = 85
        Width = 71
        Height = 13
        Caption = 'data_chamado'
        OnClick = lbldata_chamadoClick
      end
      object Label15: TLabel
        Left = 32
        Top = 104
        Width = 89
        Height = 13
        Caption = 'prazo_fim_chamdo'
        OnClick = Label15Click
      end
      object lblchamado_automatico: TLabel
        Left = 160
        Top = 8
        Width = 102
        Height = 13
        Caption = 'chamado_automatico'
        OnClick = lblchamado_automaticoClick
      end
      object lblnivel_prioridade: TLabel
        Left = 160
        Top = 26
        Width = 74
        Height = 13
        Caption = 'nivel_prioridade'
        OnClick = lblnivel_prioridadeClick
      end
      object lblcod_usuario_resp: TLabel
        Left = 160
        Top = 46
        Width = 84
        Height = 13
        Caption = 'cod_usuario_resp'
        OnClick = lblcod_usuario_respClick
      end
      object lblcod_usuario_abriu: TLabel
        Left = 160
        Top = 66
        Width = 87
        Height = 13
        Caption = 'cod_usuario_abriu'
        OnClick = lblcod_usuario_abriuClick
      end
      object lblorigem_chamado: TLabel
        Left = 160
        Top = 85
        Width = 81
        Height = 13
        Caption = 'origem_chamado'
        OnClick = lblorigem_chamadoClick
      end
      object lbldata_final: TLabel
        Left = 160
        Top = 104
        Width = 46
        Height = 13
        Caption = 'data_final'
        OnClick = lbldata_finalClick
      end
    end
    object ListBox1: TListBox
      Left = 416
      Top = 400
      Width = 177
      Height = 3
      ItemHeight = 13
      Items.Strings = (
        'grgrgr'
        'grgrgrscsacas')
      TabOrder = 18
    end
    object lstOrdem: TListBox
      Left = 382
      Top = 398
      Width = 177
      Height = 139
      ItemHeight = 13
      TabOrder = 19
    end
    object btnLimpar: TBitBtn
      Left = 440
      Top = 543
      Width = 75
      Height = 25
      Caption = 'Limpar Lista'
      TabOrder = 20
      OnClick = btnLimparClick
    end
    object chxNenhumResp: TCheckBox
      Left = 158
      Top = 48
      Width = 203
      Height = 17
      Caption = 'Nenhum respons'#225'vel atribu'#237'do'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = chxNenhumRespClick
    end
    object rdTpRel: TRadioGroup
      Left = 158
      Top = 344
      Width = 363
      Height = 40
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Sint'#233'tico'
        'Anal'#237'tico'
        'Report Visita')
      TabOrder = 24
      OnClick = rdTpRelClick
    end
  end
  object dsRelChamado: TDataSource
    DataSet = cdsRelChamado
    Left = 552
    Top = 192
  end
  object qryRelChamado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select c.* from chamado c')
    SQLConnection = dmPrincipal.conpg
    Left = 456
    Top = 192
    object qryRelChamadocod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object qryRelChamadocod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qryRelChamadocod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object qryRelChamadocod_categoria: TIntegerField
      FieldName = 'cod_categoria'
    end
    object qryRelChamadonome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object qryRelChamadodesc_status: TStringField
      FieldName = 'desc_status'
      Size = 60
    end
    object qryRelChamadodesc_categoria: TStringField
      FieldName = 'desc_categoria'
      Size = 60
    end
    object qryRelChamadodata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object qryRelChamadohora_chamado: TTimeField
      FieldName = 'hora_chamado'
    end
    object qryRelChamadoprazo_fim_chamdo: TDateField
      FieldName = 'prazo_fim_chamdo'
    end
    object qryRelChamadochamado_automatico: TStringField
      FieldName = 'chamado_automatico'
      Size = 1
    end
    object qryRelChamadonivel_prioridade: TStringField
      FieldName = 'nivel_prioridade'
      Size = 1
    end
    object qryRelChamadodescricao_chamado: TStringField
      FieldName = 'descricao_chamado'
      Size = 2000
    end
    object qryRelChamadocaminho_arq: TStringField
      FieldName = 'caminho_arq'
      Size = 200
    end
    object qryRelChamadocod_usuario_resp: TIntegerField
      FieldName = 'cod_usuario_resp'
    end
    object qryRelChamadonome_usuario_resp: TStringField
      FieldName = 'nome_usuario_resp'
      Size = 60
    end
    object qryRelChamadonome_usuario_abriu: TStringField
      FieldName = 'nome_usuario_abriu'
      Size = 60
    end
    object qryRelChamadocod_usuario_abriu: TIntegerField
      FieldName = 'cod_usuario_abriu'
    end
    object qryRelChamadofuncionario_emp: TStringField
      FieldName = 'funcionario_emp'
      Size = 60
    end
    object qryRelChamadoorigem_chamado: TStringField
      FieldName = 'origem_chamado'
    end
    object qryRelChamadotempo_gasto: TFMTBCDField
      FieldName = 'tempo_gasto'
      Precision = 15
      Size = 2
    end
    object qryRelChamadodata_final: TDateField
      FieldName = 'data_final'
    end
    object qryRelChamadohora_final: TTimeField
      FieldName = 'hora_final'
    end
    object qryRelChamadogera_compromisso: TStringField
      FieldName = 'gera_compromisso'
      Size = 1
    end
    object qryRelChamadotempo_cobranca: TFMTBCDField
      FieldName = 'tempo_cobranca'
      Precision = 15
      Size = 2
    end
    object qryRelChamadoreincidencia: TStringField
      FieldName = 'reincidencia'
      Size = 1
    end
    object qryRelChamadohora_gravacao: TTimeField
      FieldName = 'hora_gravacao'
    end
    object qryRelChamadodata_gravacao: TDateField
      FieldName = 'data_gravacao'
    end
    object qryRelChamadosolicitacao: TStringField
      FieldName = 'solicitacao'
      Size = 2000
    end
    object qryRelChamadoproc_adotado: TStringField
      FieldName = 'proc_adotado'
      Size = 2000
    end
    object qryRelChamadoemail_solicitante: TStringField
      FieldName = 'email_solicitante'
      Size = 100
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsRelChamado
    UserName = 'DBPipeline1'
    Left = 584
    Top = 192
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_chamado'
      FieldName = 'cod_chamado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_cliente'
      FieldName = 'cod_cliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_status'
      FieldName = 'cod_status'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_categoria'
      FieldName = 'cod_categoria'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'nome_cliente'
      FieldName = 'nome_cliente'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'desc_status'
      FieldName = 'desc_status'
      FieldLength = 60
      DisplayWidth = 60
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'desc_categoria'
      FieldName = 'desc_categoria'
      FieldLength = 60
      DisplayWidth = 60
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'data_chamado'
      FieldName = 'data_chamado'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'hora_chamado'
      FieldName = 'hora_chamado'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'prazo_fim_chamdo'
      FieldName = 'prazo_fim_chamdo'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'chamado_automatico'
      FieldName = 'chamado_automatico'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'nivel_prioridade'
      FieldName = 'nivel_prioridade'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'descricao_chamado'
      FieldName = 'descricao_chamado'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'caminho_arq'
      FieldName = 'caminho_arq'
      FieldLength = 200
      DisplayWidth = 200
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_usuario_resp'
      FieldName = 'cod_usuario_resp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'nome_usuario_resp'
      FieldName = 'nome_usuario_resp'
      FieldLength = 60
      DisplayWidth = 60
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'nome_usuario_abriu'
      FieldName = 'nome_usuario_abriu'
      FieldLength = 60
      DisplayWidth = 60
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_usuario_abriu'
      FieldName = 'cod_usuario_abriu'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'funcionario_emp'
      FieldName = 'funcionario_emp'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'origem_chamado'
      FieldName = 'origem_chamado'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'tempo_gasto'
      FieldName = 'tempo_gasto'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'data_final'
      FieldName = 'data_final'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'hora_final'
      FieldName = 'hora_final'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'gera_compromisso'
      FieldName = 'gera_compromisso'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object ppDBPipeline1ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'tempo_cobranca'
      FieldName = 'tempo_cobranca'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'reincidencia'
      FieldName = 'reincidencia'
      FieldLength = 1
      DisplayWidth = 1
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'hora_gravacao'
      FieldName = 'hora_gravacao'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 26
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'data_gravacao'
      FieldName = 'data_gravacao'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 27
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'solicitacao'
      FieldName = 'solicitacao'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 28
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'proc_adotado'
      FieldName = 'proc_adotado'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 29
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'email_solicitante'
      FieldName = 'email_solicitante'
      FieldLength = 100
      DisplayWidth = 100
      Position = 30
    end
  end
  object dspRel: TDataSetProvider
    DataSet = qryRelChamado
    Left = 488
    Top = 192
  end
  object cdsRelChamado: TClientDataSet
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
        Name = 'descricao_chamado'
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'caminho_arq'
        DataType = ftString
        Size = 200
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
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspRel'
    StoreDefs = True
    Left = 520
    Top = 192
    object cdsRelChamadocod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object cdsRelChamadocod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object cdsRelChamadocod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object cdsRelChamadocod_categoria: TIntegerField
      FieldName = 'cod_categoria'
    end
    object cdsRelChamadonome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object cdsRelChamadodesc_status: TStringField
      FieldName = 'desc_status'
      Size = 60
    end
    object cdsRelChamadodesc_categoria: TStringField
      FieldName = 'desc_categoria'
      Size = 60
    end
    object cdsRelChamadodata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object cdsRelChamadohora_chamado: TTimeField
      FieldName = 'hora_chamado'
    end
    object cdsRelChamadoprazo_fim_chamdo: TDateField
      FieldName = 'prazo_fim_chamdo'
    end
    object cdsRelChamadochamado_automatico: TStringField
      FieldName = 'chamado_automatico'
      Size = 1
    end
    object cdsRelChamadonivel_prioridade: TStringField
      FieldName = 'nivel_prioridade'
      Size = 1
    end
    object cdsRelChamadodescricao_chamado: TStringField
      FieldName = 'descricao_chamado'
      Size = 2000
    end
    object cdsRelChamadocaminho_arq: TStringField
      FieldName = 'caminho_arq'
      Size = 200
    end
    object cdsRelChamadocod_usuario_resp: TIntegerField
      FieldName = 'cod_usuario_resp'
    end
    object cdsRelChamadonome_usuario_resp: TStringField
      FieldName = 'nome_usuario_resp'
      Size = 60
    end
    object cdsRelChamadonome_usuario_abriu: TStringField
      FieldName = 'nome_usuario_abriu'
      Size = 60
    end
    object cdsRelChamadocod_usuario_abriu: TIntegerField
      FieldName = 'cod_usuario_abriu'
    end
    object cdsRelChamadofuncionario_emp: TStringField
      FieldName = 'funcionario_emp'
      Size = 60
    end
    object cdsRelChamadoorigem_chamado: TStringField
      FieldName = 'origem_chamado'
    end
    object cdsRelChamadotempo_gasto: TFMTBCDField
      FieldName = 'tempo_gasto'
      Precision = 15
      Size = 2
    end
    object cdsRelChamadodata_final: TDateField
      FieldName = 'data_final'
    end
    object cdsRelChamadohora_final: TTimeField
      FieldName = 'hora_final'
    end
    object cdsRelChamadogera_compromisso: TStringField
      FieldName = 'gera_compromisso'
      Size = 1
    end
    object cdsRelChamadotempo_cobranca: TFMTBCDField
      FieldName = 'tempo_cobranca'
      Precision = 15
      Size = 2
    end
    object cdsRelChamadoreincidencia: TStringField
      FieldName = 'reincidencia'
      Size = 1
    end
    object cdsRelChamadohora_gravacao: TTimeField
      FieldName = 'hora_gravacao'
    end
    object cdsRelChamadodata_gravacao: TDateField
      FieldName = 'data_gravacao'
    end
    object cdsRelChamadosolicitacao: TStringField
      FieldName = 'solicitacao'
      Size = 2000
    end
    object cdsRelChamadoproc_adotado: TStringField
      FieldName = 'proc_adotado'
      Size = 2000
    end
    object cdsRelChamadoemail_solicitante: TStringField
      FieldName = 'email_solicitante'
      Size = 100
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 512
    Top = 240
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cham.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 4233
        mmTop = 32808
        mmWidth = 8678
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 16669
        mmTop = 32544
        mmWidth = 10626
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Resp.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 33602
        mmTop = 32544
        mmWidth = 8678
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usr.Abriu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 45508
        mmTop = 32544
        mmWidth = 14266
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 71438
        mmTop = 32544
        mmWidth = 9737
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt.Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 179388
        mmTop = 32544
        mmWidth = 12573
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt.Fim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 215900
        mmTop = 32544
        mmWidth = 9906
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hr.Ini.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 198967
        mmTop = 32544
        mmWidth = 8848
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hr.Fim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 232040
        mmTop = 32544
        mmWidth = 9906
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tempo(Hr)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 266436
        mmTop = 32544
        mmWidth = 15833
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Prior.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 154517
        mmTop = 32544
        mmWidth = 8128
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 98690
        mmTop = 32544
        mmWidth = 14690
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Origem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 139436
        mmTop = 32544
        mmWidth = 11134
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 37306
        mmWidth = 284428
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt.Prazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 247386
        mmTop = 32544
        mmWidth = 12912
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Auto?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 167936
        mmTop = 32544
        mmWidth = 9144
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 265
        mmTop = 32015
        mmWidth = 284163
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 0
        mmTop = 32015
        mmWidth = 1588
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 283369
        mmTop = 32279
        mmWidth = 1058
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 15610
        mmTop = 32015
        mmWidth = 1323
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 31750
        mmTop = 32015
        mmWidth = 1058
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 44450
        mmTop = 32015
        mmWidth = 1323
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 64558
        mmTop = 32015
        mmWidth = 1323
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 97367
        mmTop = 32015
        mmWidth = 1588
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 138113
        mmTop = 32015
        mmWidth = 1588
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 166688
        mmTop = 32015
        mmWidth = 1588
        BandType = 0
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 153723
        mmTop = 32015
        mmWidth = 1588
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 178330
        mmTop = 32015
        mmWidth = 1588
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 198173
        mmTop = 32015
        mmWidth = 1588
        BandType = 0
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 213255
        mmTop = 32015
        mmWidth = 1588
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 230982
        mmTop = 32015
        mmWidth = 1588
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 245798
        mmTop = 32015
        mmWidth = 1588
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 265378
        mmTop = 32015
        mmWidth = 1588
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 26988
        mmLeft = 0
        mmTop = 1058
        mmWidth = 284428
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 27781
        mmWidth = 284428
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Chamados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 114565
        mmTop = 6879
        mmWidth = 60061
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Prioridade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 3969
        mmTop = 28046
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '1-BAIXA,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 23548
        mmTop = 28575
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '2-MEDIA,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 35190
        mmTop = 28575
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '3-ALTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 48419
        mmTop = 28575
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label22'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 138176
        mmTop = 19844
        mmWidth = 11896
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label24'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 119592
        mmTop = 14023
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'at'#233
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 140494
        mmTop = 14023
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label26'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 150284
        mmTop = 14023
        mmWidth = 17198
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 264520
        mmTop = 23283
        mmWidth = 16002
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 272786
        mmTop = 2646
        mmWidth = 5821
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 279136
        mmTop = 2646
        mmWidth = 1588
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000157
          000000850806000000EFB0BB88000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
          00BDE649444154785EED9D05981D55D6B53BEE4A94B8BB1120B8BBBB0F3EB8BB
          0EEE0383BB3B0CEE4E700F4E482021EEEECAFED7BBABF6EDCAA593EE84D8FC5F
          F793936B75EB569DAAB3CE3A6B5B8195FEADB41E9832658A95A4ADB4032AFDA1
          D21E28ED8115D603052B6CCFA53BFE4B0F940458D9A6F4AFB4074A7BE07FBF07
          4AC175255EC352705D899D5DFA53A53DB08A7BA0145C57E2052829B816B5DD84
          B1BFFEAD239DAF6F2FFCD36CC102FDF737FEFEFCF34F8BB670E142A32D58B0C0
          DBBC79F36CF6ECD93667CE1C7F9F3F1EE7CE9DEBEFF1C836F3E7CFF7EDE3FB4B
          3A9CF8ADD826BEC76B3E8BDFE679517F711C712CFC3EC7C171F25D8E85C676B1
          8FEC39AEACE71C53F44FF65CB2E7C87172FC348EBDA863FB1B97B6C45F9D3973
          BACD9A3543C7C175F63B4BC7C23DC0B59DEB8DE77CC6FB4BD70AEFAFECF965AF
          7FF4535C5BB68BFB307BDFD15FABF2AF145C5762EFAF2A70D5AD6FDC668E3F09
          E695F82F803006F57C0DA839B3671A8F73E7CCD24E05921A48BE633D4F7E40A0
          CBE04A1BDBFEC9406320B28D5A7C9F7DC5F6BCCF360B3438633FF11EDBCFD680
          E6FD590C6E359EF3FD797367FBF7F83D8E89C673067500008FB4DC7EF5DDB9FA
          5E8001DBF23C4022B6E33520410BD000388A6A457D1EDFCD825051FBF6BE04A4
          D23E5AE43C02C0D2BEA17F3867EF9B4C9F734CEC63C68C69B9C92D26A198C8F2
          27A1A200ACD89B837ED5EFFB31A4D73DAEA31FBFDEE37A718D788CFB20EE81C5
          3D66EF99FCE74C26FC711FC639716F02B4714E3366CCC84DF27CC604BA2AFF4A
          C17525F6FEAA0257C754FDE7E09A12BC7CD64337C4AC1F377230826C1731E819
          DC00DDD429937C008D183ED4860E196C837E1F68DF7FD7CF06FCFA8BFDF8C377
          F66DBFAFEDA71FBFB75F7EFED1BEFBF61B7FAFFF2F3FD9EFBF0DB0D1A346D884
          F1636DD2C4F13990CC816C3A381984EC3F0BB6E3C68EB66143FFC8FD16FBA7B1
          FF2F3EFFD43EFBF4633F86C1837E4BC02705758E7BC6F4A90E0853264FF46366
          DB7EDF7C65BFF6FFD98F29F6C57172CC1C2BEFFDFCD30FBE0D8FBCB7B8C679B3
          5DB4D82EBBAFD81FEF4563BF3CE791F388F3E1F56F037FF53672C4303FE65123
          87DBB4A993BDEFE917C02BFA8DD78092831AD7888987892D65F5713D17C7F24B
          3E149209943653403E76CC28EFF3689CCBC001FDBD1F781E7D973DE7A29E2FA9
          6FE913F613D7887BEB87EFBFB5F1E3C6789F70DE31F9C63D9ADC37ABEEAF145C
          5762DFAF0A7075A208B082AB3C26042037FB6797DDB1348E25161BB19CCF3286
          60898029C0F4DEBB6FDB3D77DF69D7FFFB5ABBF082F3EC88C30FB5BDF7DAC3B6
          DE6A0BDB78A30D6CD34D36B20DD6EF635B6CBEA9EDB0FDB6B6FF7EFBD849271E
          6F8F3CFCA0BDFACA4BF6EE3B6FF9200D8613837611F60ACB4C19E9A38F3C6497
          5F76891D78C07EB6ED365BD9669B6E6CEBF559C77AAFD5D3D65DA7B7FFC68927
          1C67D75C7DA50FBA2C93065C274F9A609F7FF6893DF7EC7FFD38FE71D001B6F3
          4E3BD89E7BEC66BBEEB293EDB5E7EEFE7CF7DD76B13D76DFD5DF8BE7BCCFE78B
          6B9C77F6B3EC7E78BEDBAE3BFB3EA3F11E8DD7F19C6D389E9D76DCDEFBEA9F47
          1E6E679E719A5D71F9A5DEC70F3E709F7DD0F73D9FC0989838A7608BD99541B0
          5807DE54BA89EB9B2FB504132CE950E0DAF05BB05526AAB7DF7AC34E39F9443F
          66AE09D7807E3860FF7D6D9FBDF7F4FB217B8E71AEF98FC5F52DFB601BAEC776
          DB6EEDD7E682F3CFF57B08B0E65C3936AE71AC044A7A4E2B62BB52705D11BDBA
          987DAE0A709D3787E52CC240C24C635915032ABB5C84B1CE9C3953CBCA193679
          F2E49C26CA601C376E9C0D1F3EDC2EBBE85F76FED967D9F65B6F659B6CB0BEF5
          E9BD96ADD5BD9BF5EED1DD5BDB962DAC51BD35AC41DD3AD6AE554BEBD2A1BD35
          69D8C05A376FE6AD4D8BE6D6B16D1BDB68BD3EB6D9461BDAA61B6E60FBEEB987
          9D7BE61976C72D37DB1FBF0DB4A91327681610E0CE9EE5CF674F9F669F7CD0D7
          AEBDF20A5BBB670FEBD5ADABB568B2A6EF9FC756CD9A7A6BBE66636BD6B891FF
          46E7F6EDECF5D75EC9B1D700F08913C6D9C30F3D60BBECBCA33559B391356BBA
          A6B568DED45AB76A614D9B34B6562D9B5BFB766DFCB16D9B56FEBC43FBB6BE0D
          AFD96E718DEFB46CD1CC1BDBF0BA79B326B9FD77EAD8DE3A77EAE0FB63BFD1DA
          B56D6D2D9B36F163EED1A5B39FC39A0DEAFBF9D1A7DD3A75F4473EE3718B4D36
          B69DB6DBD60E3E607F3BEFDC33EDB65B6F140BFF508CFA871CB03009220FCC41
          2249F56FAE79565B8E6B9F7DAF24C3212703A5CC15C0E39C393FFAB371A306B9
          D79C639BD62DBDEF785C525B52DFD267FC46F63A70BDD6EAD5C327EFC30E3DB8
          1050D17FD17D4B996B492EE7FF1FDBAC6C709D3F7781CD9D8D0144CBE3746065
          8D370CAA30928461079D0A809D3E7DBA8D1D3BD6FD723FFFFC737BE38D37EC89
          279EB05D76D8DE41B17E9DDA56B36A15AB56A9A2AD51ABA635AE5FCF41B46ECD
          1A56BD7225AB5DBD9A830480C7730097C6F7D81EF068B8465DDF1E600430F6DF
          7B2FBBEFAE3BEDCD575FB11FFA7D6383070EF0F6DE5B6FDA4DD7FFDB76D8666B
          AB53A3BA7FBF5EED5A56A34AE5DC7E78CD67FC566C73D595973B9B0930806DC1
          6AAEBBF66A07B91AD5AB5A83FA6B58DD3AB5AC56CDEAFE1A60E075CD1AD56C8D
          BAB56DCDC60D1D20D98ECF786F718DEFD5A95DD3BF5FBF5E5DDF8EFDD6AE55C3
          EAAD51C71A36A8E7FBE331F6C7EB460DEB5BD346FA1DF5158FF41193137D43E3
          7CE2DC38773E63A2EAD9B58B5607EB89F5EE6217FDEB3CAD206EF70905490419
          210C4DF9E019936C18F7E29E28F128CBC82DD3A74DB13EEBAEEDE7CD39471FD1
          079C7FF449F4C792FA6F499FD1877CCE35E2B7E277AA57ABE280DEAB67779708
          9029C20E9030FA55F757CA5C5762DFAF6C7075CF004963109739F3124B7D58F5
          63C0C5EBD059478C18E1607ACC31C7D88E3BEE68DDBB77B7366DDA58C3860DAD
          65CB960280860E6CED5BB74859625307B8260DEB3930B468D2C81B80993C5FD3
          D92CDF01806980078F802F0DD606B0F01E20C273BE0743851D37AE5FD7B769DD
          BC49EE37D9B66D4B98B018A5F6CF677C87E38BFDC28E6170A145B28C458FBCF6
          9AABAC439BD63E280178802A982FFBA2B568BEA61F67AD9A02E014CC1AD4AF93
          9C973E2BEA91F75A3615FBD523C7C53173EC4C2A4D1BD5F7DF818D366B9A9C37
          FB8165F33EDB463F3049D1071C1B7D088836AA57C7F7C3FE799FFDAFD920D96F
          93351BF8EFB46E05B35B5332496F974998445E7AF1791B360CA04DFEC24382E7
          3189CE9A35CB27D9F82B5E934D641A800C590236C92A804903D07376AEFE6502
          E13C61F03E493179886D2EEE91FD24FD9AFF483FF11B0DC4F65B791FD0879D3A
          B6D57EEB7BAB5EAD92A4A0CBEDA30FDFD3B1CDD0C207BD3531AEADAABF52705D
          893DBF32C175FEDC0458035C67CF9D63F317CA22BE5016F5F902592DBB67CD91
          B55CEFC16AF9FCA75F7EB6175F7EC9FE75F145D673AD5ED6424050512CB4B140
          AB0E035DCBB2666BC2B2D41AC354D51AADE1837CCD86751DD89A376960ED5A36
          B5A6FAAC59A37AD652E0B02600B386D8581D310E8104AF79CE366D004CEDAF79
          E306D64A83A64EF52AFE19AFF99CD6B85E6D6BDD6C4D6B2FF0E0FDE61A4C7CAF
          85065B1B004ACF79649B561A74FC26C7D2A7774F9DBF0C3CD3264B6298E16DEA
          C47176C3B55759A7B6AD049AB572BFCB7EF93EFB6AAB81DCA5631BAB5F5B6CA9
          7635AB57ABBA35D139B66CD628F98DE68D8B7C4CBEBFA6FF7EEB668D7D5F6B0A
          901BEA7778BF639B967E3E6D5B49C2D0EFD1979C337D42FFF01B756B544D3E53
          9FF03EE7BC56F72E56B75655EFF746F56BFBB9356E50C7AF01C744E3BC5B3465
          6269E0D7A3A1F687767BC9C5FFB2679F79DA860F1B62D3A64D5B441662824553
          CF4A454B725F0AADD697DCDC3B926D268F1FE780C804C4E44A43DE68DBBCB9AF
          645AAEC984974C96AD9A2413C8621FD57FDEBF453CD2A7ED5A6BF2D03976682D
          C9467DC87568DFA6B935AC57CBFBE5987F1E6AAFBEF4ACCD9949200EDE2AE11D
          B2120779E6A74AC17525F6FBCA02D72CB0220D2C9C2F7F5081A9BC01D3663655
          3A66802A60CBEBC38E38DC3A8B2555D752B49A186443B18EAED25379045C6B69
          69062038A00A4C19E03C32C8793F6E78C0AF53DB960E2C352A971770D44AC151
          1AA4067F3B314EC0AD7D2B699429F80264000CE0C200EB20665CBB5A65BDAEA2
          6D1A3A60F308A0B2FF0460013231EA4CCB7EDEA34B4707D43FE7010433A4DD4E
          B1E993C6DB0DD75CE9FB07E43916008EDF6C26A6D5424BF4B62DA47F8A21356D
          A8F3D43900EE8BFBBDEC6FB716E8456BAB7D761048B7D1F9D13AF9B936B44A65
          0BFC9CD61023E691FE295F506015CB145895F265AC7AA5F27E3C2DB42F009363
          0138AA542CE3FDDCA1AD560CEAEB96CD1AE87933FF1C2067DF4C664C783ED9A9
          C126D138D1329F7CE231FBFAEBAF73BEC12105C05E431EC2AD89BF2CD8668747
          0E5C05AC422E9B3B93C96A82AF3660E08068F78E1DAD7AC58A56BF562D6BD7A2
          85B5D76AA743AB56FE1C505D52E35E585CE3BA729E3CC6393391FB44A5470076
          8F5D77B0C71EBECF66CF98ACE39BA3154BEA2AB612C778F6A74AC1752576FCCA
          00570C58B405F3B47493DE3A639A7C520158F455B1B8057F268EE861BCE2F49F
          79E619BBE4924BAC51A346D6B469537F6CA1C1D0AC9996B1EDDA59E3C68D6D4D
          3190FA021F67AC02571A831C26D1BA85185BCB26CEB20004064134067CFDDAD5
          732C1440839155AD503665748083A4030111404783DDC1E20018400870633F01
          AA4D1AD4D5E762D21A68BC1F2D3E8FC74EED5ADB8431239DBD2E9C2BFFD79962
          6E6AF7DE71AB6DB7E566CE9261A5304CC09681CDEFC6BE01AC84092700CE3965
          7F2FFF39BF0B20678F35F6C167EC8BBED85C3AE989C71C69575F76915D73F9C5
          DE6EBCEE6A3BEFCCD3EC9003F6F5498789A64ECD2A3E81D1CF3CD2CFDDBBB4B7
          066BD474C0E51AC4B1D1173EB1A8CF429A41EF44FAC0108441680F79265C71C5
          65AEA787E1129085D1F2579C1C9073DF93C43465C2789B376BA633D8BD76DBD5
          258BD0D279DE5AF711AC1590E5B185EEA1E2C015B6BEB896BDB65C075E73FE71
          EF31C96FB85E6FBBF3B61B6DEEACA90EAE8934502A0BAC44885B753FB532C015
          500D700554E7CCD20D262757375C2DD0724EE01ACED523478EB4FEFDFBDB0517
          5C60BBEFBEBB952D5B56002A46288DB553A74E0EB475EAD4F106B8369716E64B
          5096C51AE8349EC7D2941B9E019EC8026BF863D70EB2BC0B5458EAD3BAB497F5
          5D400670F2D8A373075F2E03AA801BCFF9CC99A4061BEC148657AF563507127E
          03F0E27700417E270B68BC1F8083263B68C02F0200052A08604DE74FFBF0DDB7
          ECC273CE7490E737608A807EC8020DEAD410F0D7F4FDC09268FC5680FCE200D6
          07BCB68B6384B127D2888C567ACEFB75AA57B6DD76DCD6EEBCE53F3A8E37ADEF
          DBAFFB63BF2F3EB5B75F7BD91EBEEF6EDB67F75D6CD30DFA58B5CAE51C5499B8
          5812C764C67BB0355AF67C7D2270CD37595AA381622CC32007D0F694D167871D
          B6B3D75E7BCD060C18909B64274C9077460AAEDC1B59EF82A298AB1B089195A6
          09C4F478E3BFAF736D151D3CD1E35B599D6A3262D6ADEBF20040CB2300BBA4B6
          2470E53CB9CE71BEF42B133DF71F133CE0DAB15D4BBBE1BA2B75A975BD171064
          9106B7ACA2215FCA5C5762C7AF0C7065A20E292009862272CA3C1AA9309AC76C
          E2C489F6FCF3CFDB95575E69B56BCB2A2EF0C468554B4CA3AE0645FBF6EDDD80
          C52380DBB66D5BEBDAB5B30F721A033E9669B17CE63101C064E91FBA69B78EED
          DCE054A34A4537427516C09E7FF61976E2B14789F5EC2C230F4BCA442FACA665
          31CFD90680E820B0053030E8B0D4653F6E2C4A25822C6B65E001300032808891
          E7E7EFFB8961299A0B70554322183F7A848D1832C80ED8674FEB2D3D93A538C0
          0FB8D20041E480588A324900B6006330C4253DF2FB1C0740CB23DFE7380145B4
          D37F1EFE0FFBA8EFDBF6E77CB9490104D207D182912D00FFFE3F7E67CF3CF998
          F7553DC9252CF5E923981A1A304BE1EC35C84E3AF4B94B0A29C0D26F58D79106
          B0B8635DC7BA7FC3F5D7190119E11BBA70BEB477EE9525FC15FAC72E74FFD685
          D2E9FFC4502A067BD83F0E72B7BA8A65CB38B82205346D2043DB1A9228EAC950
          29B06DA6FB6B498DE38EE6FA7DA63101C644E89A3AE7E986D3355D3B8FC67DE5
          93E8FC52E6BA12A16DD5FFD4CA00571F2030D5B972C19A23676F07D7242C1547
          7D9CCF71A2C7791EF7956A552BBB0F224B472CB934FC2EB1F4A2D931205952F2
          DCDD87B444A7013E8069B2DC4D34CB609B0C1096D72C6F01882A92001878C71F
          7D947DF0EE3BEECB8A3164E6D42936638AF431B19FDF7FED6FAFBCF0BC1DB8EF
          3EB6E5A69BB80104AB388619F6C1200264DCD82180C5B80318BB512D65B0C112
          017DC0B59634DB375E7F59E72D6BB8DA9CD95A0E4F9D94D361A74F9E6043070D
          B4A38F3854C7B79E0F50066C4800B065F6D9A57D6B07C97CD921FF35C70420B8
          055FC7151306CF39562689BA35ABD971471D617DDF7953E72D6B3640A0C70892
          00A874B00E58AFBFFC829D70CC3FFDFCEB488BE6D878CEBEE817F6C775A0451F
          84FC80D4C171F01D7E93490AC353D78E1DD42F18C7749CBAD6B86DE5023832A1
          B44948DFA263260BAE1C2F9E17448AB9CB9740F6C76FFBD9D38F3FE6FA2B5E11
          61E0E211906D2EB969890D43DE625A18F9005824135FDD603044C649FBBA66D5
          4AB6B7583F1328E0EACCF5EFA5D2F85BA0512C73FD3B8050FADD92E56F5D967E
          2AEAAA7B1E8079C4EF8B0B095867CF4C425523728790D3179E7FD68E3DE628AB
          54B17CE21693FA70E22A0380861FA6BBC3A40EF5B8D7D01C24528D3396E389C1
          27B176F3885E0AD87696DE898E0A60D5172B3CE9B863EDBBAFBF1298E8F8640C
          A13120B38F7C06F05E75D9A51E2C90B87135B3AA15CBF920C24005A0D0000BF6
          0B330BC007600260592E0248F7DF779740606A6A394EC00C809D3261AC832C6C
          F6877E5FD925179E67DD2551B827442A698414D1A373FB44E3CBC81071FED9C7
          708D8231D357B8ABD100018E17F6497F0098EFBCF16AC2AE724090E665501F78
          BFD04F02DD07EFBDCBB6DB6A73FF1EE7DDB36B2767B39C377DE396734D24B16C
          8E63047CF84E30FD049493E004FA954726CE3B6EBFD523AD3C17439A17C09DEF
          9700AEE1A04FF872B8A4C062992499188E966194EB878F2EBFE56E7762ADC5C9
          02AEB52FAEE17686B14E7D8B4EEE2C3665AD7C87D50CFDB2CB0EDBBA7708AB15
          37689582EB8A03A16501AEFF85EF2C0E5C73C943D20895488482E1E18A4B2ED6
          CCBE9BBBC8C026C2B7D27D2E3508C2BF12AB6FD14DDFD14D9DDF12F7A8C4758A
          41CD23EE38EC134BF21EBBEC6C0F3D78BF0FE218C80C4A980F7EA8B924306922
          16D8D4FBEFBDE34B59003F74432603808B8114ECD0196CC6D89533EC488F045C
          CF39FBF41C73750387D80C2E3A0C3C7F941ECB607CFEBF4FBA4C515B462E2689
          306E318879CE79C5792EF6316F299B352E8591A9A6F4E3E38F3BCAFABE2F5940
          C7434B4020892AF2F8F8F439804788F1ED37DFE4C1114C26CE5653A061126B85
          0B5BDAB82EA17B6797D8F13C2CF1712C5C63FC8877DF7927BF0E9197C0A5024D
          D2B470CD8AC003CFD295E63408C61BF91B5C8BD5A470CC9147D806EBAEE3EE59
          B10209706DD568F1BAABB3D32530D7E877AE89036DEA1501C8BA1FACDEDB6CA3
          F593094B1313AB152689E20C757F8B9E2EE1CBA5CCB584D5015637C04D403449
          99178F493A3F25EF48194880178305D6B8DF5E7B8A9D75CA4545A18D31C01227
          7774BA248474718D41BA24700DBD8F9B1F708DE8AC138E39DA5E7EE98545128D
          704C9160834199CD6C85733A7E99DDBB75F1A89C8868C2F29D040B48CF4C97DA
          0CC6589E6775508C3D00D929271F9F0357F77B14B8163A982BDB95BC08686FBC
          F2A29D71CA890E60AB025C01A8C83896CB3426902551C9734F3F955AE3E56FEB
          C11A09E0BB6F7009C135EBE2E4D2071AA62655AE3BE1C8248921C289882BAEC5
          9C59D2E82529714F65734EB8349066204B0C5B4996B35C5E03812BFAEB867DD6
          CD812B93360D605D9EE01A6E67806BC8251BACDB3B0157AD484AC1750581DB7C
          DD04B315A134533E9ED9C67BF398CD34E3AC6E80B934C793DCF0BA87747E1823
          0055322091B0C353EDCDC5504284CA7CE96213C47EFE6315E54F8971011FD370
          5E678086F53EFC2B8B623DF15E6BC903D15A494AC8B6607718323AB5934EAB01
          4588EC6D37DD685F7DF1A50FD6902D601439238ACE038D181983C6FB5CA07F1C
          78902F5DD17A099F045CF1DB4CC245137D33DB8A02D7C3954826D83C8FD9B488
          3C8FB4896FBDF9BA9D75E6E90E084B02D725F54DFEF1C4EB608A3C2E8EB92629
          0D1337B9C8E1CA04048BFFE8FDF77CE28B4930DC9A8A025726BF00DC424F8242
          FF5167BB6943B20064E9CBBB6EBBD5FA7DF9452E21CB8C691801FF943B5F1264
          107AAB7B12A4609A05D7780EC89258859C1344B8450001324480EB6241B608E6
          9FEBC3D4D8B5087B4DB56DC0358CA24847AC4698307D4550CA5C974D1620BA73
          D88C05F6D1D8B9F6E41FB3EC8AEFA7DAF19F4DB67DDE9F605BBF39CED67F75AC
          F57C718CF578414D8FDDF5B8EECB636DF3D7C7D9EEEF4EB07F7E32C92EEC37D5
          EE1D38C3DE1E39DB064C959B9276BA3420B7AAB6653582DB159E01805636DFA8
          EB601986F6EE3B6FF8CDD7B1756B372CB0A4EAA99B10B727F42BC0046354F896
          2E0E4000D2E2C0D5976B02700C1A8001F1FFEFBEF986FD3168703209084401CE
          F06288E7BC862D31A879E4FD5B6FBEC5BA74EEE86E44A107E76482A296E0A9AF
          A7FB7B220BC84ABEA7928A44D2E67C700508B2E07AC6E9A7FA6FAD1A704DB257
          454BC291177A6A46408F70D208D3CD69977805F8049730D85855E45EE7822B8A
          06D7300AC100B7D96273BBFBF6DB8CC436E42598354393335E2629B846662D4F
          D29DE695CDCA021162CC676443C370865B16E08AFCE42BA394B9FE1D70CD7913
          64E4032608EE6F56313CE275814FB3AF504AC1B564E03A4BC007003EFCFB4C3B
          E6D3490E948D9F1A65951F1E6105F70EB382BB865AC1DD6AF7E839AFA3DD973E
          8F47DE679BBBD3EFE879F987865BFD27465A5701F0011F4CB41B7F9E6E9F8F9F
          6BD30460AB0A4097F4BB30567C58F16975804A1343CF956BCF3CB9F8889FDB74
          45AA60B85943008AE5BE797DC566376BEECC959B94B04C1EC3B73409292D7487
          C97FCE406E9361AEAD356068C15E7116475BC322CC604A92B5D4B7D123473968
          C6008DBCA2D9D4864C16F13A128AFCF2CB2FF6EEBBEFBA8B58243A89CC5518D8
          60B2598DAE506F4CC015E31CBE9DB8A101B091383B32E67B22EC34C1F49B6FBC
          E6A9FD3CF9C81234D76561AE59068BA68BB6FBE17B6FE7FC6E1D983CC823C907
          99EB170103FD3671EC388155277771F25C0CEA670F2B75505D3CB86625039E67
          23C878CEB9A05BC2A831066DBEF1069E9D0C23A31BB560A8A97B56A2B926D50F
          F8F344E3E4924D3D0CD81E601E337AA41B4A61AA1E4CA0BC09913FA238702D8A
          F937D50441CBEF77D7C1330DF61A61BFDF7FF365123CC2CAAD145C170FAEB053
          400E86B9D16BE3AC3A400A28028E01A280E6FDC3ADE081BFD1EED377037C53E0
          2DAF7D02B6470BC85F1E2E5625405B5D8016D68AB40AC802AE0006E9E5E6CC55
          0CBD1CA867CF9966AFBEF6829D71EA0949A8AA00A3495DF9A136D4E024B98696
          D7DDE562D58114797ADD5C0EE76D0556F94BFDFCD7C5812BC08A1103505DB301
          D1424D6DCCA8D136737A92253E0C23D98C5C0C56062DE1972411893231441291
          FA70830D36F0C00622C51C50D500CE240948A134902F0B34D1E7E44398261D11
          3048124727124A5421081079E3F5570DE64AF6AA5506AEBAD9237B9997AF9141
          0906396DCA54EBD4A1A383AB1B2205AC443B1507AE597D3C1F68791DF91C3C04
          59204B5F923E92E82BB457077DFC5FD3D23EA4AE8C043F24E2CEE68C650530E4
          8F419EB01C2987490AAD1C70451EF2DC0279CC359FC12E0BB8C25AC37088B193
          49E295179E7517BB52705D8CE63A64FA3CBBF9E7A9B6FECBA3ACD283B0CC9491
          FE5D105D5A004E1971197DAFFDB3A3EDCCAFA6D8571388745AB59A6D806A309D
          A47ED5CC84A5FD39D7860E1B64F7DE73BBADB74ECF24E9078610DDF080681B81
          0E800A9802AE3CF29A561CB86665812C6BE57B2C5701579681F5EBD475706DDB
          B2958D1C3EC20122D21A02A0806B7EDD28062E114211E3CEF60CEC830F3ED8D6
          5B6F3D075718AB675BD231231164D94B0416842C00B8D6D3394F10A3A2EE137D
          E396700C68A93E1D49B9D15C61AEAB0A5C5DE649E23D0A63FDB52467529A3461
          A27568A75CB0A907468493BAF6BA04E6DA42D73CDF009905D924E18D92A9085C
          D15FD15ED19CBFFCF413AF2E006022E3C47520CB5A726DE4E921AF862CB86284
          C428F6FC73CFB89B5FA458E45E80C566BD0516C7601707AEF9BAAB1B5653A35C
          80AB27B311B8E2D38BFBDA809F7F48FC5C4B996B2173FD76FC6CFB67DF31D6F0
          C1C15670CB402BB8FD772DF70789A5FE216639440C5540BBB400B93CB607D41D
          688759D50747D8766F8FB7978691556AD5806CD4E36329493A1612AF0836524F
          81F9F6F8630FD97EFBEE6995CA1524CEE4F83DCA121EC60CF4557C0623D434DC
          8D8A93058A62400EACA9AB128F2C0319A40C2C1CCAB1FC4F9F3ACD590F833340
          960901A0A585D124BB2C8EE5F1E38F3F6EFBEEBBB722C994492BF5CDC50FD793
          3213C0A0305CCF0895FAE03A83D56BC0B78E34D45F549A65625A4EC61DDE5339
          20EA40210D00AEE79C7DA66BAE68C64C12E8D38082B344183993C7128C2EC519
          B4F81C59E0F8A38FB40F3F7837E71696D4FB2A2CB6481FB90788808D4969DAA4
          896ED1A72F732E7469BCFE5FA59B447F65126CA9899416201BDE1C39DD52E7C4
          B9715E2435E79A55AD58C193927FFCE1470E4C1818131920B96E49E834798093
          2284BE1A48BD07FABEFFAE5D73C5E5EE8D826FAB0711C8B8E913AE8E97E784C2
          8666CCEB268AFEE3B5CB49C5F4AD7B86A4411A5C77DCAFC27324C095E08A2B2F
          BDC83EFDF0FDC582EBCA72CD5A6D5CB1FA8D9D6507BD39DCAADCFE8B15DCF093
          15DCACC7DB7FB5823B04B077FE265013C8DE0DC80A7401D9FBC4649707682ECB
          3E007898B46404A40A07590D8E952919388B90C3364C875CAD3C7790557DA551
          32826CB2F1FAD6B54B07772DE2264CC25193E421B84A01B46B689667091C832E
          7FF01505B445816BD6C890A4FB4B34B724076B33D7E142738D419A9508482282
          1410EF6513783398070F1E6C975E7AB1278E21E821021DF083F528AD34890CE7
          169154BCC7B63595ACFACB2F3FB71132D22C5291343566850B18E07AF65967E4
          C095010FC8AE1C704D4AE964CFDF2716C9024C4A13C78E71831646C23010717C
          CE60F334F2B83E250157E2FD0138F6837707D78B44E73B6FBF9D3DF6C8A37ECD
          08468963E3BA20D584F134262AB457FA91D486471D7E98EF0370F5BCB64AFEC3
          B1F23B3CA74F439BA76F79CEFB1EB955427045C2E0BAA3B306B846282CEC95C9
          EBB5979ECF0511AC2C30F58ECAFCAD7270FD63EA5C3BF61DB1C19B7FB0826BFB
          59C17FBE17B0FE28D62A80BD45007BABDA6DFD05B20304B229D0DE0DD00A64EF
          056457219B0598A5CF9611ABDDE6CDF1F685B4E19505B0806BE4629DAED46F31
          0086AA78DF175F7CE68993BDA52182497214455D65C095F47E18B500D5923057
          06F292C03562BF93A4D589959846F67F96B7A1B76633DF474ED1587A86B12BD8
          6DE8B077DD758792C97448DCB0C45E4316703623E395278F4913BB78F82A6C56
          ECB6862A0ABCAB3A5F8307FF9EABE29A785328A94D1AD4C0730C5AB862B9B780
          186B3EB806DB2A0E00E2F360595963D6E2996B02AE913025F728BD13801B3B72
          84032B004BDF7A52ED609D2500D79006F2274F402D3255617C62DFAC3A60B1FF
          BE56B907C628020B97B9B40617AB8BA95315ED9656C38DE8AC88022450046026
          6C392A2BC0540156FA0F30274B16EF01ACF17EBC2E69DF46041CEC15504D1292
          27116BEC63BFBD76F7A010D75CDDD8BB6A02095619B8CE95C074C77763ADC51D
          02D3CB3FB7826BBEB282EB05AE377C2B80FDCE0A6ED4FB37097001DA9B7F2E04
          5967B300ADD8AC836CCA661D68C52657856C806420235B15791C1CFFF9641B3B
          7BC10A07594F1BA870C360AF0C0032CE53988F4CF0843E12A114D14C0CACC8D8
          E44BF734CA259B89684992407C56527085B5305031667895585C7B32EC2C0B24
          D93224B13C0654237B176CE9C30FFB1A005BB95205379474ECA05488E8C61A50
          91D084505C424161E8B5AA57CA3157BEF78D229D00038C7EEE35905649F512DD
          02D760AE042D00AE800E833FD85548038B8B20CA82E9221E0C796CAC685940C7
          9302187D144C2B98EB8431A31D5CA99090ABDC90C6E92F89B9B6D244440B70CD
          DF3674506792BA5651E3AC72F972B6C76EBB3B7B0D700A4927092A880CFF89C4
          822C402297CBB4BA88E38BC0814E324402E2F4291200795D01DA9007A25FFDB1
          18E61ABECD91A721A94C91484318B2025CF175BDE9FA6B55C071AC7B3BC4449D
          CF607329144363CBA79E7FF3F52A01D7FE1366DAAECF888D5EF2B180F55301AB
          C0F5DA2FD504B0D701B2DF14826C0E68539085CDDEB618C9C0D92CDAEC52822C
          E09875D3425BE5356D6964033C0E2417749387C15BF29B5D912CD6D99FEEFC24
          0976F2F7C5175F7815CE0AE5CBA6654694A99DA4D069B864A4E2FB8BF686CF60
          AACB1607B025910582B94604102E3A30D760675997AC580A679DD4A31E3D5A6C
          30D95F9570E635D587AA5AA5925BA259F2230B3079908A8F1CA7911300765EAF
          4E754F46534D59A02EB9E4227B4FE1B41E1546D917012B6C2B982BE04005D1F3
          CE3D3BA9CF2420083615E0CAEB922C5D9795B9E6BBA9F92493CA0258EF61AD59
          CD956371705C02730D702D0C2A5874FBD041D957F8D1B2E2A852A1BC6DBFED76
          76D92597E662F3A31C5002FE890F2E201B462D821DCE3FEF9C5CF41FCC156908
          70256136E9079104E847126AF31E201B605B123D3B12B4D0C7006B36810F5A6B
          F8BA02B6575F7E898C7223DCDB215CFB6242CF82EA8A04D8950EAECFF61F672D
          6EFCCC0A2E78CF0A2EFDD00AAE10C05EF9899A40F66A18EC176A025A40F6DF02
          59075AE4823C368B6C1092418ECD4A36B80B469BD1669DC9A62019008A5E7A97
          98AE5A597C5CB50DAC1337AF6A6A55D5AA3F34C2AA08582BB0ECC77FF6CE647B
          D75A015FF6FBE0625CBFF49D4AFAECBC6FA67A74D88A0059BF29B8D1D55C6F15
          F3B9EAAAABBC8431868948D187E12A92A9900A2F49A5975A5BF332BF1707ACC5
          C9021192C9B235F214F09CD47601AE01A6EE8CAE7308A7F9EC4D1E6E5AE13580
          263B46D6EB9F553E9908AD70C562D9EFA19C92043060E5FBB9B22DB2C069A79D
          62AFBEFA720E5C31C6641DE1015A4A84030E1414045C43070C4D7269C1751117
          B1D41F7349B240FE849305D7A20C5AE199B124702D8CA44B8C5C7FD996B22BF8
          CB0A5CB37A2E12C1169B6D6EC71E7D8C33BFB84EE18615E0CA0A203C303EFDE4
          232F554EC26CF6C5CA05DD957E8C2A04FC0EECF5B0030FB44DE4FD015BE57326
          0937222E2573457385CD862CE0136D1A5CF0AFF3CEF66AB811C2CBBDB4D2C175
          450CFCA2F6B95003E9E2F7075BF90BDFB182F3DEB6828B01D7BE6A1F58C16529
          C806D05E25F00568B36CD68136950D900C68E8B4AECD4A364097A501B468B380
          2C5E0677483AB84DCFEF1C6CD504AEAD1528B0EECBE36CD77727D9D19F4CB573
          BE9A6E177D3BD3AEF8618E5DFED35CBBAAFF5CFBF780F976DDC0F976F9AFF3EC
          5F3FCDB1D3FBCDB2033E996E9BBD35C5BA3C3BCE1A087801E5823B04B6772686
          ADBF305C58AC3C0B76785B69EDA62F7F9900BE1A9A2B062D58DE86EB6F9014C0
          F3442C49AE4B8095E82B0C5761F0C91AA082C5028C2561AF4B62AE917333DC6F
          C25B802823B4C3AC453C062A4C28F223E44728F13EC09AFC2D7463DDBEFBECE5
          B207EE3EA442F4C1A53CA95E1141A906913E48760D93E573BC054E38E1387B51
          85FAC28508B7AC707E471EC02083A5FB82F3CFF5AAAF45816B498D2E45014461
          A294C5790BE07F9B780B641F615DF41BE08AC1095920BC05B2515A59D0CC1AB4
          8A03D7A816C0BEF0A165C541236CB55B97AEB6F38E4AE842DACA74D95CE8EFCA
          7B30C2045C71D97AFAA927FCDA500D18608D63E53700571A7D08B8DE79F3CD76
          D03EFB387B056079CF531296D0A0954DE1186915C3C015608B51EBD5575E70CD
          18E61A3912427609296A8532D79501AE9367CFB7839F16189EF9AA159CFB8615
          5C2870FD97DA45EF26207BC9FB85207B7900ADD86C80ECD562B339A0FD7A31DA
          6C80AC2403C0F6C65FACEC4DFDADFEFD836C931746D9117D27DAA5DF4CB31B7E
          9C65370940EFFB6D813D3AD4EC85F1661F29A17A7F79988C949D83EC947A6913
          450927ABB198C51985F7466835241CB697279A5D3B70A11DFAD10C05198CB30A
          F78F12D0A6D161480CC168792ED64BF8EDD7F28D5D9E7D4D3DAC794A92214F50
          1BA765E3F0E1C3ADA122B0DC599B0A9A45445A1566AF5F7C145671EC7549E01A
          DF8D2AA69100C64B1EA7062D6EEE2C6B8D819B05D6601889EF6EF8BD264B7A34
          E52D36DFD40D4FA444640988BE4AA0049307A56600D8DA352ABB2E0B733DEEB8
          639418FC595FC24E57B55274D74532390928DE7EEB0D970570808FE56B68AED9
          7479250180C569AE806C4468E567C5CA4E3659CD957EA34E55C802E190BF3CC0
          35A405D82B60C87D932B32A888B05E3D7ABA348127471C5392252BA97C19E04A
          5F5EFFEF6B7DD5442E09EE41F45B376AA62E6301A40D55D5E2FD37DFB4538F3F
          DEC1355604BC5F5CDF46B040A4760C1FD7C8EB0B9960C586FE7AC4210779BAC9
          2434BCB065F33704D07AC0461AE092CEE4CBE5A160790EF8A2F63561E65CDBE9
          012DF34F79C10ACE065C5F177315C09EFFA6A481B752A0159B05642F16C82E02
          B4920CAEC84806802C92816BB3806C9E6470BD8C61D77E6B3504AE7D9EFCC38E
          ED3BDEAEFA7A8A5DFFED54BBEEBB9976DD2F0BECE951669F0931FF908789829C
          849E42D8E16F085DEF32FB4E75EEBF38D9ECC343ECCFBE07D8C2BEFBD99F1F1C
          64F6E93166FD2E34FBE9467DF1BF42DDEF756FC9FD445F1F24C07D51007D6CBF
          79D6E69909921052469B65B302D8164F8E520E8439CB0D6029D732436904A7CA
          53E08DB774B39E7C8A552C5FC1430EBB75E8F0976000F743CD950659BDC035DF
          9A1B377A041A60D07240F48434B3BD5CF491471CE6062D72BD122441FED66E2A
          B54C0E56F2BBF21AC3178104570B903F5382F0C831E04BD9D4D7358208D05C91
          05FE2F816B005F18B4A2AC38F750DDDA75ACFE1AF56CEAE429BEB208A6977877
          24D7220C5B30FFFDF7DBC7D6EAD5C33D05C24BC43D063209B29910BAAAB2C56C
          791C3C74CF3DB6E9FAEBBB161BFEC4C5816B180D910160A8E18A15BEAF91509D
          24E91BF6595B09E1F7735FE1AC1CC084CD64914DA5B8C2C0B53888FE3BE03B6A
          EA6CDBE91E81E309CF58C1192F5AC1592F0B605FB1827304B2E7BC269015D09E
          2FA0BD4040EB6C16904DD92C401B92C1651F25204BBB2AD5669DCDA606B0AB05
          B8577C69F56EFEDEB67BEE0F3BFB6381EA9793ECE24F27D8259F4FB15BB5BCFF
          58D4738A96590BA70C10223E28BA7AB8CD7FAE9BCD7AA496CD7AA0BCCDBAB7C0
          66DD556033EF4CDA0C3DA7C56B1E67DDA3767F199BF550559BFB544BFBF3CD9D
          CC7EB8DA6CFC27A263D36D84C05A04D6D67B63BA95BD7764221B84F782BC095A
          2A0F42DF31CB0760BD44B6020800D8871F7ED8B6D96A6BDD704984146CA0C88C
          55AB29B846C1C4B817C3BA1BAF01D708EF252C931CA75433DD769BADAC57B7CE
          D6AD733B5BBB57575BAF778F5CDDAB1E5D3B78CAC20D375CDFFAF67DCF7EFF9D
          70C885364391441E029B7A0C040B7BE7ED371D5C3168FD5F61AE5EE23ACD5380
          F109708521A3D9D7AE59CB6A56AF6113C68D5F44CE61220C700D63167DB9CDD6
          5B3AB802A861D084654759170094D22F7D7AF5B20592B09ED43DBBEBF6DBE7CA
          C094C458182B827C3F57C035C277015E7269705FECB0FDD6BE628A6AB61C7B49
          C17579F8C6AE3083D6B8E9736CA7BB048AC73E29D62A703DFD39B5E7250D0864
          CF14C802B4E7A4407B6E166883CDE6C90697A5DA6C002D208B11EC924FACE675
          5FDA364FFF66677D38C62EFE649C9DF6DE183BF7C3B1F648FF293640F2DA8279
          A2AA3F5C690B5EE861731FAE6EB3EE1670D204963305AA33EF53BBBF848D6DF9
          8E9A7F5FA03BE7FEF236EFB92EF6E717A74B4FF8CA666AA9FECC38B30DDF9A2E
          4D56B910308411C22B9DB6E57F472F177F588A0D2209CC9134401DACD60A33ED
          A4104980754D859EE62755599D992B4BFF6C10416864A1C726E59F0B97A39181
          E9E38F3EB0FFA86AEA2107ED6B3B6DBF956DB6611FDB78BDB555D97553DB7F9F
          DD3D57C0CD376BB5915AB6792414965C0330E060ADBC1FB2C0FF45708551BAF1
          49116080AB5772D53D54A35A751B3582042849B9ED60B001AAF1881F738FEE5D
          AD53C7F6395FD95C8997D49D0DFFD6F5D65ACB76DF714776662F3FFBAC1D75E8
          A1CE5C234AABA4CC35803472FB46DAC448248E1B22951FFAACBB96FBEACE9891
          F8580398210B840C1386C490AA62425F6DC17596B2E7FCE32101DF110F5BC189
          4F095CFF9BB45333207B86640280F6AC9752A04532580C9B75461BDAAC8C6000
          ED457DADDCC51F58CF7BBEB7E3DF1A6EE7F61D65C72BC2EB38B55BFB4DB08193
          0B354E2A412E18F4B8CD796B479BF1500D9B013B05204B0AA8C56C3743800B58
          CF14D39D7D7F0531DAED24D0BE6C52AAECF611662D9E9B2C435BEA872B06DBFD
          F931F6FB34F906FE8D5CB6305780759E5CB14E3CF14467190EAE8DE511F03F08
          AE006C30D87CE6CA0D4FDE8400585CA860B09314D24AB1C101BF7C6F4306FD6A
          7F0CFCC5060FF8D97EF9FE1BFBE9FBAF6D90D8EAF0E15A4AA4FEAD915FC023B5
          52772CCFECA4CF61AE68AE780BFC5F61AEC15A3D60827CABD25CA3F6550325DE
          E19E1A32F88F5C529D2CB8BA7F6BEA92F5870234708DC37B233C45A2DA05C089
          76BD468D1AB6C5461BD9C9C71E4BB4847DF8CE3B76C9F9E75B0315C78CE8AD92
          826B18B1025CB39AAB97E9496B87B56FD7CA06FF3E4813EA84BFC80059A920EB
          0EB8DA83EB452FCB6DEAA887C45A1FB182E31F972CA0769218EC4900EDD30259
          80F6D942360BD0E683AC036D9E368B018C76EE5B56F7CA8F6CB7A707D8296F0D
          B5A35EFDC30E7A61909DFDDE08FB688466A92524555938E9279BFBE9D136EBE1
          DA09C82E0D6B2D211803B4B3EF2D630B5FD9D86CECDBAECB1EF0D54279188C11
          7BC5A56BA8EDF4D6789B3C77D9D3197A896CB96001B007CAB5A57A555505157B
          25290699AFFE97986BF8B58645B728E3164BD11C6392EBD434790E78F67B4D32
          F3666BA9AF348BCA926CF3674DB3D9D326D9F429E3DDB13D17A2A9EF906C0437
          2CF6E56C3605D82CB8E22DF07F055C238436524446549D27E656D29D3AB56ADB
          6F0306E692EC141A22D1600B5712DF7DFB4D2E0B5654B6F0642D049164C075A7
          6DB6B16B2F975D431AEED79F7E6A77DD728B832BD201D15B2501578C82113810
          B905C2152B3E8BAA04CDE53DF2D30F3F2A1C5C49683CE14C61B456165CE37E2B
          4E225DDACF97BB2CF0D49783ADFAB102D6C3EFB78263C45C01D8E31E2D04D913
          53903D59201B6CF63480569201207B46CA64439B05646968B380ED99AF59EB1B
          3EB5835FF8CD8E7E7990EDFFCC406FFFFE7CB40D5326AD92B2C185E33EB3396F
          6E6B3359DAD34A089C25DE0E360B93BDAF9CF45D19C5660DB67BC562EB3D3129
          D162E52F7BEA17CAB7BA8CEC3557CA4559D777DA717B55F4AC9E4B30D2AEA9C2
          1A8BAA12B09A6AAEB1FC8F10D8B889B3F9076269CF723EC25793B0CBA48C32D9
          E7A99B14E5A9798E7F6D0072D6F13D74D6EC6330D79C410B373696B4D4E88AE2
          7A2548DA921FC195EFEFBABA790B84BF2CA01821AB68AF6B6A92461A18D0FFD7
          45D24426CBE534322B356AE1C646C96E587F24ED015C23C7042C96642E07EDB7
          AF3D70CFDDBA56B3EDDBAFBEB4A71E79C4F55D0F83F590E925276FA16F0340A3
          6E16AFC3FD2A0C5B1D95AF386AACF5FBFA1BF7A44176CAB2D27C705D1E32403E
          F82E5770FD79D464EB788ED8E93FEEB4827F3E20F6FAA0151C2DA00D903D1690
          7D2C01DA139F4898EC4902D99353C900367B9A40F6744036950C0264A5D39639
          E365EB76CBE776F073036CFFFFF6B7DD1EFFD9F67DBABF3DFAE3782FDDB2B440
          45B5CAF9BFDE6EB31E6BE84BFA1203E75200319201BAECFC279B4B2A78CABE93
          FCDBE3A5390EB09515DCF0942A282CED71B3BDB3366A05497BEDDDBD8B571120
          4F407DB9A1E0D35A9C4BD5B27E5E52572C0659B862451041DCD045B9622D2D2B
          28C9F6D9B0DABF6E5F58AE84BE24882071C512739551049FD9A8CD1505103D95
          610900367F9B6C5A44C095EAAF59572C2F9498FAB8FA2067E9959647C7201311
          5A91783A0BF6C975244020694BF6732DDCCECF25CDF4E5D9A90480E8AE3CA2BD
          06731DF4DBEF2E0B20DBE44274534F0BFA8D5483575F758555A95CD1534146B6
          B2A826EC291CE5D54154DD49279DE05E1BC83AA3460EF732EFB8D3111412B979
          97E5BECC168C8C70EEA8244B350B2217B37EADDC0B9E752C4D699965B459005E
          5C2457498178B981EB6CE9AC87DC296D749F9BADE0B0BBC55CD58EBC57207B9F
          9A586C00EDB145B1D9146861B3E8B2B42C9B15E09639ED05EB79CB67B6CF533F
          DB8E8FFE605B3DF89DEDFEF84FF6CA4095495E46F617DF5B38FE4B9BFDD23A09
          C0AE009900D00EA9C0BE3FD746CEFBD3B67E7BAE22CC8659E7E746D9E0650832
          F082762A1FBC508CAD7BA7F6CEB00055B25D95826B3244963C084AC1353457C0
          3A5204A2997AB273C902780CA0B9F2C7B23A22B5A20437B20AD56A4F3DE5A45C
          826CC03522E848F90868926C8750E40B2E38CF086366F581118C6C69DDBA76B6
          B66D5428539AADFBB12E43CBAFC69B03588D8973CE3ADBDE91BE1B809ACD3C96
          3562E5BB039614409734C92F37707DF2D38156F190DBADE0805BACE0903BACE0
          50B1D7C3EF4A40F6887B04B4599015A33D26D564910C8E139B45970D360BC806
          9BD5639993FE6B5D6FFCC8767AF47BDBF2FE6F6C937BBFB6ED1FFE5EC03AE16F
          036B00EC9FB346DB9C77F74E0076391ABBB26C7806FB158BB54FF6B509B3A6DA
          B6BAE605B70EB7133E9BB8D4E7C10D3E63F2049B36719C976D210A8B9B0AD615
          795A97E5462DEE3BFF4BCCB5145C93BCAED982858BB0DC4CF82BE00AB046841F
          06AD5A356AE6BC05B2410ED9D22E00E55EAA5316C9B10153723E7819744A02E9
          392C965A68F81B8F9554C3BD0B7B9DA1808E0DD6EFE311772B0A5CF7DD7B1F7B
          E6996772E01A7906B259D84AB20A5A966D960BB84E9C3EDBFA5CA825FE9ED759
          C14162AEFFB8D50A0EBE4D202BB03D3480B608367B749E6CE0408B010C26AB76
          82F4D9E39FB07657BF6B5BDDFFB56D78D717D6E78ECF6DB37BBFB2A77F1EBBD4
          80541CC3B579CA56FFD1113613CBFF8A62B0A94C60EFEF6223278FB35EAF2E50
          5E8391F6CEC8A59307B84127AA4ED0D0DF077836796A64456C7F29B896642894
          32D76C4583900370C542CEA9A79240802B7EAED965B34F5899000CB28AADBB4E
          6F0FD8004461A9841D0396BC477E079EAFD7671DBBEDB65BBC22049A2D7A3961
          B3DB6DBBB5F5ECD1CD139B2F2B737537C3B46C4D7E75D88D37DCC8EEBFFFFEDC
          2A26A2FEB24111215795E4AE599A6D960BB8FEE755454AED79AD15EC7B8398EB
          8D5670E04D6A02D98304B239A04D41F630D8AC98EC226C56FAAC6BB3A1CFA66C
          F6A847ACF145AF0A543FB3756EFDD87ADDF2B175BBE923BBF9B3A1CB1D580378
          6DBE4AA57C78E80A07D85930D80FF7B09F274EB5359E9A6DDBC97B80542CC54D
          003929434BB2914306D9979F7CE83756B0D728995D1C035DD6CFFF9798EB9207
          4229B8E692BFC8150B2900AD3592AEC05C89D0A2124256234F18AC6C15690502
          B4532F4828608DCABCF8BB2203841C00B8EEBCD30EF6E8A30F7BC86CD653E3C0
          03F6933FEADA49A6B3A59404BCD40B4971D2EFFD0560352EBA74EA2C5FE79B73
          062D186B84F366735D2C0F1960B91BB4868E9F6AEB9E2D50DCF90AE9ADFFB682
          FD04B0B4FDFF23A00D90955410201B4CF6306483543238026D56BA2C46B060B3
          473C60354FFFAFF5B8E903EB71E307D6F586BED6F6BAF7EDB8977EB6A973967F
          22942CA8FD396F9ACD797BB7243A6B298C574BB32D86AE3900ECB727DB73C317
          5ACDC7A7DBF3436796185C99F907AA4ED08BCF3C658D946EAD733B955E963400
          8BE5F5B2826771DFFBFF015CC3E2EDD54DB502F8BF6AD0CA826B94ED8E643BCD
          E571D242958229735EE8DF9AC4E047463140926839D24086510A29A05D5BB15F
          016A68AE80EFB1C71C65AFBCF292BBC2D1EF51D2FCB4534FB6CD36DDD813E62C
          0DB806B0E627795FC4B8059BD5795C76D965367E7CC2C0C390156C3C820AB2EC
          757901EDDF66AE0FBCA7CC54BB5C6605BB5F69057B5D63057B8BC1EE237980B6
          EFF585409B65B34806074B32086DD6D96C469B15B32D2F906D7DE5EBD6F9DFEF
          58FB6BDEB2E657BE699BDDF589FD38665A8901A8A42CB0A8EDFE9C36D866BFD0
          7B857911B8914B1AEC0281AC0DBCC5CEF8D66CB77767DA4CDDBC25396E6E7058
          EB0DD75CE9462CCAB8447D2C2CA5C581E4B27E5E52700D4F011E4B92B8656996
          5BCB67DB84B946CB7A0B3039E12D105E023C8656B93CBC0528AD9D9FB8259B72
          D0135493E45971F12419C75B801A5A0060547F5DB4C4CBB2790B847FA99761A1
          447A9AE01C4F8FAE9DBBD8D65B6EE5C741C6B500261E3164794972F5DF7DF7DE
          ED19CA60AA5EB34CE1C3E10110257948407E779AB01C1FE35CE871FA7D34DB8A
          15CA259E1899E57DF61ECDB2D47C602D0A68D90FAE5BC81BC72A70E1CB2FBFCC
          85F166F30A64535E66E58FE5718FFD2D709D3E7BAE6D73918C51DBFD4BE07AB9
          15EC2180DDF3EA4541765F40568C76FF94CDE64036C366015A182D6C16A03DE4
          4EAB77F6D3D6FEEA37ACE5E5AF5953B52657BC6E777CFE478980A724E054926D
          168C785DC10635578C1F6CCA88F185B5FF36B181C3FAD9666F9AF51D55325F5D
          4FF0FCC6AB76C905E73A53055CB36E28CB0A9EC57DAF145C8B2FA4579C2B5651
          E0BA48F2102A960AD448F71759B1025CD14623274061D2F36503D7A86D45DC3F
          290D9908EBD4503E5B19B7B6DA624B3BF8A07FB84B58B0BAC2C8B9240003F679
          D1BF2E70FF56B4556480A8CCCB73C096C6929FF0E2DF7E1B909435272004062B
          E6FB9AF2EC1EF5CF23DC20E6B97933CBFC5C96B5BCF7D806229105D57C8980EF
          02AE0442ECBDF7DEF6C4134FE4CA8267DDDEF20308F2BD06FE0EC8FE2D70FDE4
          9761566F7FB1D56D2FB4825D2F5583C14A1E80C5EE719540361F6853D9C02503
          35801603D841025A67B36A07DE62958EBECF9A5FFC92B554E3B1FE052FD8CEF7
          7E6CE3662C9FA4272501D6D866EE976724E0BAA20C5C02D9D900EC477BD9D53F
          CCB5133ED7B24B57B4B863E4E67EEFCDD7ECBC334FCBC90030D8C8DF5A1C482E
          EBE7A5E0BA62C035E7E694F17325DD1FCC959483801FCC350BAE85F977970D5C
          61BF51CE26C25661AD1418DC74E34DECF4534FCB957981BD163AE227290761AE
          2CF7014F5CB03060F11C80055C792F4097282E0A677AFDAD94F5B28FAF543CF2
          B8638F765920C03500369B6B78919CB502D658A5654136FF9E065CAB54AA6C7B
          ECB187EBAEA1B766CBBE2C4F305DAE9AEBB90F2AB9CA36E75BC1F602D79D2E96
          EE7A8924821464771593759085CD0A68738C16C940208B64E06C560630378209
          64D356F7D447ADE985CFD99AE73F6B8DD5EA9FF7AC3DF1CD906201A738405A96
          CFFF9C39C2663FDF253170AD40FDD51E2CB0A1FDEEB233FB990D51A04171C7EA
          E5A05F7DC94E5052600208B8B1082060C0C16297153C8BFB5E29B8AE58707526
          A5EC6D30D700D7C9E3E56E9749961DCC7579806B14294416204936005EA34A65
          DB72F32DECE61B6FCAE5439D366D5A6176A954A7061CF7D97B4F77B982A162D4
          8281D2780DB8E2C38AE63A74C8602F6F1E9172E13140799833CF38CDBF93D55C
          F3E5812CA30DE61AC0BAB87B96FD55AD5CC5B657F6ADD34F3FDD992B4980A22A
          C18A4C940DD02E33739DABA081ADCE91EFEAC6A70B5C2FB0821D04B03B481E70
          904D811626BB9B4076B7549305648B62B30EB462B27AAC70E86D56EFAC27ACC1
          D94FAA3D65D54F7BDCB6BAE51D1B36B9E4C69EE28069693F9FDFFFF615CE5EE7
          891D2F786D337BA85F7F7B6978C9C0F5B107EFB33D77D9D197471D542B0B9065
          C095B4926B71405AD4E7A5E0BA62C035345737B0480E0060D15CA9444081C2CE
          EDDB79C6AA4840BD3C34D7900588D4A2E2ABA71AACAE7CB892058E39EA68EBFB
          DEFB7E0CFC855FA8974697C59F86AF2A96FE081C00446961C882C57A114901AC
          D72B4B733A842B173EB2E488B8F9A6FFD83A6BAF95D35CF3E50080360BA44549
          0045DDAB802B9A6BB76EDD6C8B2DB6C8C91BD93C037F67D95FDC7797195CBF1E
          38C25A1EA465FFA602D76DCF551383DD0E169B02ED8E02DA00D95DC468910D1C
          64251B049B750398DA3EA9116CEFEBACEAD1775BDDD31FB3DAA73D6AB5C4602B
          9FF4885DF4EA77C532B9A505CCA5D9FECF698364DCEAB942D92B810B0B1F2863
          DF7F728B7DA08AC6C51D1F9AEB83F7DC69DB6CBE891B0142732DE98DB72CC0CA
          774AC175C5806BC8026ECD06D0D03AD3322FE3478F72F083BD7A291619A09607
          B802AAEC87E42A18B370C582BDC2622F3CFF021BF8AB34D234D934FEA1910F35
          0C5254F52548C02B42C8A00573F5CC587A8E318B6A1118B8BA76E99418B1D264
          2FACBA00D600E8071FB8CFB6DE6A8B249B555ADF2D7FB9BF3870CD2FB699BDAF
          0157DCC9DAB66D6BBD7BF7CE69AE2B2380E06F31D7C7DFED6765B63CD30A3617
          B86E7DB6E4817392B6DD797F05D99D2E4A803624034016460BC8BA362B80956C
          50461E06D58EBBD76A9CF4A0553FE141AB70ECFDD6FCDCA7ECEDFE238B059BE2
          C0E8EF7E3EBFDF452BD473004DF74F01ECD897B7B377864CB0A94A1DB0A46366
          5905B86EBA419F1C5B85B5461DAB6505CFE2BEF77F015CA924BA72BD0564E481
          118AB5BA614B5AABD77E12839D3C7192D22A26E08A510BE68A2C40FBBBB200FB
          2003188FB055F2B8D6AB5DCBCE3AED547BFDD5D71CDCC3A01549A61DFC059403
          07F4F772E424BA819D86210BD68A5B16201B81049B6EB291BB6F9136324A7147
          AA4740F623954D27AF03E5592007B813721F4671CD7C3FD600E0E2EE55FAAA6D
          EB36D694CABDCABA45E9F9499326B9BC5154B86BD6056B79B8632D3373BDF841
          65A85AE7B8045CB738C30A00DAADCECA00ADD82C4C36D82C4C7647816CBE360B
          C8C26677BBC2CAEE7FBD551673A5553946810687DF69EB5EF9BC4D9AB9F20D59
          F9C0B670F4FB36EB092578591119B4522D77AEC075E243F5ED879FDF562ED862
          C055C68407EEBEC33658A797BB0C51378A1A529170A430CC71D9E2B51777E3FE
          FF06AEF97EAEB56A5655A992A44C4CD3C6F5BC6C378F51226779B9627DF8DEDB
          9E748786E5DC8D2C0B04A84A2119D6F9E953A7799915001690005C6197B85079
          D2155F4914BD9A28EA3AE5BF17A915798411632CAB55ADAADD75DBADF6D9279F
          BA312B6481306679891481EB2FAAC4FBC4E38F5A8DEA55738C15900DF60AC0E2
          EF0A73DD7EBB6D72115991D52CF213F0FA8B4F3EB69B6FB8DE811D606DAB2AAE
          3052B725C830E6E72823165E313C62B4E573FCBA97CC5C1B5B9B56AD55EAA799
          3568D0C8FAF5FBCE468FD6B210739CEC71F909B2C315ABB8E57E493F5F26709D
          AB99F5D02BE582B5F6D192054EB182CD4E4B403607B40259075AD8AC40969695
          0CD066015A3780A54630B1DA3207DC60E58EBCC3CA1F71BB953D1CF7ACDBEC90
          FBDEF359E6EF32CFBFFB7D7285CE7E6DD32407EC0A326CCD127B5D20F01EF1C9
          855E1C7149C74CAA3DC07543655B6FDA90F2D96B78899352702DE9AD5F7484D6
          AA0257678479E08AA700115253264DB6766DDA7A8556CF8C2570A5B961E76F80
          2B552B426260DF303DC0F5C3F7DE4D12B6A4E0CAF88BC42D9ED05C93C1E7CA6E
          75D38D3758B5AA959DB902A611A185EE1AE08A9B16850B23AACB19AB8841922E
          52FAB2C0F5E7EFBFB3A71F7FCCCB72039E006C165C5B8B0D73AE24248A2AC5A1
          C31607AE1DDB77B0C68D9BA850652D7BEDB5376CC080DF04AA7275D3B9AD96E0
          3A61CA0CDBF63485B6F63ECA0A363A4946AD93AD6013812C40BB790AB439360B
          A34D6503B4D92C9BC50806C8D204B2650E9061EB60790DD0FE21372D3D5EF1CA
          37AB1C58736E599F9E9CD4D55A41AE593304DAF3E59530ECF5036CECAC2527D2
          0E70A5AC09C01A8EEEB05752E515B7645AD6CF4B99EBF2D15CF399AB1BB49402
          339B157FEEEC39067B9D3C9EEAAF6D9DB57A655DB1D6E501AE5DDAB5F30A04E4
          6FC598D5AB5B57DB6EAB2DED4F956AE7B701579706F4177EB85E8F4AE0F8C6EB
          AFBA959F3CAEB0D50054DCB1B26E5830DB83FF71A0836BAC12025CC35776C8EF
          BF39A003AECEC605B0481EF906DAC899C167806AE4D258BCB74063EBAC2AB60D
          1B36B68A152BDB1D77DCA5F4835F6995403E5AD86B52FA6545FD2D13731D3676
          92AD73B88C59BD8EB4820D240D6C78BC40F64481AC80364076B3538B00DA60B3
          62B4DB66B45900579A6C19051C9491345040DB4FEE5A07FEC71EFEA8FF6A03AE
          F37E7DC0A6DF5DD1A6DF91D4CFF22C57CBD1FF15709DA77D0E7D66631B3B6974
          B1CC35D15CD775490019008085BD2692C0F29503627FA5E0BA22C0757692CE4F
          6896AD7C8BF60A6B1D356CB8586B1B0756FC50C3CAEFBE9ECBC85CDD754F75AD
          A2982020BBEB8E3BD819A79C2C2495E62BCC41F3F568311D5B18B3706502249F
          7EEA093BE8C0FD7DD91FA1AF3C02AE91D715C316E07BBC4A9B03A42105449272
          5E93F865C4903FECFB6FBEF6CAB1C14401D058FE0788C6EB70D3E21C8A63AEED
          DBB6B3FAF51B5AA54A5594F2F05FF6EEBBEFA79240121C919FB3757902ED3281
          EBEFC3C759877DB4B4EF75B815AC7F4C02B01B0860B3200B9B85C96E2A9075A0
          5D8C360B9B956C50469A6C99BDAEB232F21E28B38F0C5C72D92A73C0BFED957E
          83561B709D3FF2039B765F5D9B7A7B814DBBABBC72B4AADD534E205B66B9A529
          44771DFF781B9B3AEEA762C035F116D872930D9462B08E2FA598D99774B32D0F
          C02D05D7E50FAE7F2AE9B92F930562D92429001286A3B75F7FCD19260DA3532E
          27C062BC37FE9A62B0E889D6AB0050FE5A72C081FBEE638F3DF4A0D726739629
          3F5B582B0D9D3574609E8F1C31CCAEBDE62AAFAE8B24008802AC61D8C2058BD7
          18B4F024F8F775D738DB7570CD48023C4716983363BACD9C3AC535650034EE63
          260FEED900DA60B4E16A589CDB21FA385245032503AF275D79BBEDB6B3071F7C
          30570C3380353F04767901EC3281EBC06163ADDD1E629E3D0EB18275FF69057D
          240FAC27905DFFD80CD09E90910C52A00D90CD022D9E06920DCAC885ABACBC08
          CA288CB6CC1E3270C947B6E27ED7DABB3FAEB80C584BABC32E9CF4AB4D7BB0B5
          4DBDB58CC0B58AB719F7D02AD8744A71079BFD1B9A2C6C78F6C355CDC67C5022
          70DD7AB38DFD66C408802615CBA5A281342279969DD59682EB8A01574006F0F1
          E8A574098D3E496294471EB8DF97CCD48AA2B26938DBBBEE98D74A62C80CA31C
          7EB37809C086014BF22BF0DBF8A47A3504D86B5AF535F2B96278FBB5FFCF76DE
          59A7CB0086214CBAAF0C4BA1B70673F514820257AAC2DE75E7EDC939A56561A8
          6536372DD79363B4FAAC7BE74E5E22DBCF51E7C53D1D062C24020C58806FB81B
          96045C9128221497B48777DC7EAB27F8F604326ED84AA498A2F4D7BF0BB2CB04
          AE03868CB6D6BB6889DFF51F326A1D21AF01C90380ECBA29C8AE27900DA085CD
          6E18402BD920C76633DAACF4D93272E32ABBD3BFACECCE1759D95DE4B625265B
          69EF2BEDFD1F574D645651C0BB70C6689BF6F83A36E5968A36F5CE5ADEA6DDAD
          26909D2AA9609A8C5D80ECF41464BDC4CBD2026DFA9D05C35F5B22B872533E78
          F7DDEEE70AA8E2E78A3575C9375C29B8160E98D5C7A0057325DE3E1F5C01DC4F
          3FF9C86EBBE946AB59B58A58AB2A4DA4E01A869DBF03AED982845F7EF1998D48
          2BE53ACB14737577303456FD45B2136A92FDFC7D3F3BF9F86314C955D1811580
          85B50690F1880E0BB892EBF5FEFBEEC9490200EC0C958689808260B380EF5ADD
          BBF939AE51ABBA3356721407A002AE802DE01A3EAFE17AB8A4082DA486D080C9
          1B7BEB2D3765021A564370FD55E0DA6A272DF33B1F60056B1D26C396E481B5D5
          D611D03AC8C266E5491020BB7EC80629C86E82010C369B4A06F23628BBD59956
          6EBB73ADECF6E75BD91D1488204DB69C40F6F56F7E5B6D64813F67A9E6FD535B
          D8A49BABDB943BEAD9943BEBD9D4BBEB0B58AB8BCD16247281DAF4005919A760
          A24BA5CD3AB896B1E2C0959BF289871EB23D77DED99DC00963240147E8527FBD
          E1B2F5934A996BC4C62FAD2B567E01C2ECEB2890E7CC3253A5B4A596B7B04E4A
          4157AB54DE8E3BEA08FBE8FD776438525DAAB9CA38A5628A5EB6074BBA2AFACE
          9EAE6AB6322A5178F17E79846CB3C5A6D25C5BF8F77DA99B32469EA3B1A3B523
          0D355AA39626DADAAEC14756289820CEF9F890222BE06DD0B563073762B56AD1
          D293B33CFEE8639E141B23163A2FC01AFD02987A2972425ED352DAF7DD75BBED
          BBE76E4AF252D58F8BE308908D282D720510D24AEE81975F7AC1992BFB605F24
          CC4E9863615E58007DE3F5D7F37D02B00027B932221911B2172422A48100D6FC
          1CAEF92907E9AB06EA1B2AC1521FED82F3CFB6217FFC969C5F7A3EB0D7FC7A5A
          7F97B5F2FD6562AE43474DB0B5F6110076D8D70A7A1E2CED55F2C05A8726CD81
          36C366910C1C68972C1B9491645076CB33ACECD66759D96D24156CA94705243C
          D9F7FBD5065C17CE1C6BD39ED852E05AD726DFB1A65A639B7257139B7C5B4D9B
          7C538118AD1A207B5B21D0E6D82C405B12D9C04BCC94B50523DE5CB22CA001F0
          F4A38FDA7E4A4A01B8529A187FC5583695826B71C363F9335740348035803696
          CD3C520ABA6AC57276F41187DA07EFBEE5156BA9563B67C654071ADABC59336D
          FAE4496E54FAEC2339D76BF94D35531AFB002C00748096D6A639BE9E5AFA0A58
          EBD7AE2E40AAE1DE23303E809506B027609F148D64F98D21ABB14AB05F7DE555
          4685548C57340036F11048FAC713AD641AA074BDD25CEEBAE3760E84EDC42E39
          1EC095F38F2002820B30769D75E6E9F6E61BAFE5C08C7D458973F61F49B779BE
          D5669BFA3ED91F20C94A2CF266C05A91BF96CE152B99881AA93F00D79A35AAD8
          69A79E683FFEA0041EE9B9257245A1D6CD5DB3BC3C0896095CA7AB6ED33E876A
          E9DE46CCB5FB81D25E0F5A14647B03B262B47F01D9AC6C90B2D98D60B3A9A781
          24833272E52AB38558F1A6C80667D8F5CF7CB8FA80EBD4E136F5A10D6DE24D0D
          6CF2ED2D04AE2D04AEAD6CF22DB56CD27F0A1C6027DF9C02AC40764A802C9201
          0DC9200559AFD355946CC0FB0F55B605A3DF2B165C9F7BF2693B78BF03549AB8
          91B56BA1DC0202595C74DC7FF12FDE02A5CC7551B85DFEE01A5A26E0C0A006D4
          82650284804FF5CA15ECA8C30F91EBD1DBCE5CE7CE9C66B3A64D76A09DA78293
          0EB40A2C983F7B869D7DFA29B6F9C61B4812A82440EC609DDACBCFB585744705
          35B468AA65739BE65A3A3773DF660015D60ABBF30956BFD5B93D410749C1402C
          F81897C292CF7B952A54B40FFB7E90B85D4902983D73564E06C86AA4B04D9826
          8F80EBE9279FE086D4BA02ABB62D88144B7E0F800D160B6BC50DEBFA7F5F6B1F
          7FF441A1962C5023528BFDC11CA94C10D2C0EEBBEDE2E0CA313319303110D011
          13534C2C0EBEB0765CB6D2E78B0BEE200884467F55AF52DE8E3CF41FF68E5275
          527137A76FE78036B9435629B8DAECA976D2A972956AB18F95E9B69FDA815646
          204B2BE8291D7611361BB28174D9D066DD0016B201201BEE5C025A77E7926480
          FFEC0627D831373CB3DA80EBFC31DFD9A4BB7B0B5C9BD9A4DBDADAA4DBDB0960
          DBD9C41B6BD8847F17D8A41BD43220EB409B65B329C8E6CB068B80ACC075D663
          6BD8C2719F170BAE6FBEFCBA9D79F2E9D6A8AE6EEE3515D5D248EC41B1E2ED5B
          B62C05D774902C7EA0AC18700D806129CE808F6539CB673EE3354BEA3B6EB9D1
          3EFDF07DFBE483F7ECE3BEEFDA07EFBC69EFBFF5BA673A3BF394136DE7EDB6B6
          DA352A5BA3FAB5AD63BB9656BF6E0D6BD2680D6BD7BA9975EED0DA5A3693CED9
          4065AB05A84802E1860788B795FEEE00A510D488FBC782DF54805A4F8FFBEEBB
          AF5D71C515F6D24B2FE5E69B6C4AC1C48A9E96731108A28F7A926BAF2230CF36
          5A6F1DEBD2BEB5B3655833BFCFF90276FC3EE789064B800146B2DF95C735BB0C
          CFED8B5A5AA9010F303FE9C4E35D6FE5D88309A331B3EF1C33263A2B955D4A12
          2D47A45DCB6672535C730DAB51B59C6DB3E52676E945E7C94B61A616072A4DAF
          F38989243A63D582AB3AE2CAEB545CB0D9EE56A6B300B6CBBE6AFB5B99AE6A01
          B4C16673401B209B4A06006D48067D52C9C0B559805620BBA1D86CEFA36DFD63
          FF6333E7942C81F4D25AFF9776FBB9BFBF6593EE58CB26DCDCD626DED6C926DE
          DE59ADBD8DBFAEB28DBFA6C00176E2F56A29C84EBAB190CD06A3CD67B36E0013
          9B75239898AC97E07EA68D2D9C5C8C2B9664818FDFFBD0AEBAE40A6B58474104
          7294066061ADB0D852E65AE89F59F46059FEE01ACBE3D061DD8ACEB2546CD297
          F0028DFAD2117B75EB6C3B6FBF8DFDF3B083ED1FFBEF6307EDB7B7EDBAC3B6B6
          F76E3BDB1E3BEF204658D5AA493E005801D30E6D5BD81AB5ABF973D82B4C0CB0
          755696863E07C806C801B0802BC953AA54AEE88C1570EDAC2AAC7DFBF6B53FFE
          F8C3B104509D3D5B20F317C696C8149EDC5A86351A8C73C6F4C90EF630568095
          86C6CBA411AC95F3C7A005A0FFF4E3F75E42DBAB17A4895BB2E01AEFF15BE79E
          7396F7554C4CEC07E6CA0A807DD387B112084D7B8900DB4472450AAECD9BD4B3
          7A75AADAC61BAC63471F7988036B806B7831C47DB24AC115507AEEC5B7AD8A00
          B5A0ED9E56B6D35E09C83AD08AC93AC81E9030D9EE920C7AE4B1592483BFC806
          195D364076AD7FDA9ABB9C675FFCBC7A780CCCFCF22E9B704B77B52E02D76E36
          11A0BDA5BD8DBBB29C8DBB4AFEA900ECB529C8A640EB6C56203B29950C26C364
          D5DC0026D90003984B066A0EB47A3DFBA50DECCF994B4E5683D1E1FBAFBEB5BB
          6FBDD3996B13394AB76EDADC0D5B8BCA02593960F5F416C877E45E11AFFFAAC0
          2E7F700D600300780EC0F11C360650A09B0242000340C1B23DB79CD6E7E1141F
          39793BB753482AE025C60A8BA5C15659E2C2C668119107C0B92C20200A70C25A
          8F0F2A6556AEBCE232BBF3CE3BED871F7EF0AE600CE78308204B4BDC9212E6CA
          B29D06B84E9830CE060F1A90E4B15853955DA5F7E2FA8524012806F03918EAB7
          DBB76B6363C78CF212DAF8F1BA514CFB645FC158035C61B6575C7EA94F4021A7
          B0CF68EC9BFEF4CC595426508BE78B0558812B06BF964DC4AAD5574D1AD5B175
          7B77B75D7624D7C12C970660AE217B64830A62B259DCBD589CA2BFCC062D2ECC
          E0AF3EB5B5B712C36CBEAB956DBF8795ED2890EDB8B7803605D9CE62B3806C3E
          D0C264B3B281032D46B05436E8139E0662B3EB0A70D5AE78E88DD5421A98FAEA
          6936F6FA0E36FE965E36FED6B504AE7D6CFC0DCD6DCC25CA6675798140560D90
          BD7A51A00D468B649065B353F264030076AADE9BF5F6BE6E415E626E0181EB80
          9F7E95C7C063F212D00014B8B66D2E4621C3D6A2E9E822626BF5D55C57049816
          1F79B36CE05A9CB740B055067C87362D1D5401D7000280830623639B606A186A
          D04AA3B864A17F67B22D0C0C3D1206EBC7902694417FF5043362B0FE9CB0511C
          F105E2E44825690A11522FBEF09CFDF8E38F5EA88F282BFEC2797EC68C19B920
          8178DFF5550A09921A30950686CB55EBEBAF3EB33594DCA645A3BACA21DCDCC1
          9DDFE63C38AF609B5420E8BD564FF7294D12D348B3C52B2205EC7C7085D9FEE7
          867F5BB74EED7D3F1C3F1E0ED1573C02AEEC1F60CD7A4D2CE99A2461E1F5A455
          2B3F8100B667B78EB6D1FA6BCBF56DBA832B61E41C1B13C86A01AE78172F18FA
          8B9D7D9E2A09B4DED30A5AEE6C65DBED9E82EC5E0259B54E7BA76C16C920055A
          B15967B2C1667B653C0D9CC9A6EE5C596DB6EB21B6F58937DAD419B35729C02E
          98F4874D7C642F1B7B43371B77CB3A36FEB63E36E1F6F56CCC95B56DCC450536
          E6B20460170BB2D7492E08D90090459B15A3CD012C6C1656ABF7E67C7161B1E7
          8A83376191EFBCF1A66EC484B5220B646BD12F8F88ACFC7D141744E0AE32B24A
          47A826CF278C1FEB499F830D64E3E75754CDF8E2994521B862397EFFBD77ECFC
          F3CE513DA8AA89DB948C44B1EC8D4285B0B4252D4363E0073B85990208B1ACE5
          BB00252089961880C4E738F4933C053729229568E50A0A7C5B1CFD7B76EDE4EE
          53B5AA55F69CAB7C174B3DCCB7050C126F00011D567AE40096E414FEBBF79EBB
          6C8422AA608851DE84FE27D2CA93B09030468101716DE279802C9314862E564A
          FD7FFEC55E5505572A5ED03718D368003DE7ECEC557D54475E0B040FECB8C376
          89C12A351811C54F886FFEC4172E5A77DF759BBB9DE151413FB9A4226904E64E
          1F71AE61C40AF65A9C410B56CD758365B76BD9D4BA746CE30D83A17CDD1C5C9D
          5567B4DF701B2BFE1E5AF216CBE42D00A3B221DFDB5BB7DE68CD081668BEA395
          6BBBABB71CC8762882CD664036910D900CF034906C803B57B87465DDB9F4BCDC
          FA47DB8B1FACDA84D9B37E78DEC6DDBC5ED26E595FC0BA898DBBA9A78DBCB0BC
          8DFA57818D167BA58DB954001B407B451E9B45320064694569B302DCA97756B7
          79BF3D5D22709D38769CFDF8ED77622B023469AEB0D7456AD1538F7E39E718F8
          BF00AEB8FC2C0BB8C6800F00002068E112159A2180D049A5D0BB7468EBEC3691
          08DAE54AB910E2CAEB48AA42C2169E03BE24B56ED74A2B14012D29FA00B26A55
          2BBA9B511B3149CA545F7ED92576E71DB7D96F037FB52993273AA4C114A74F9F
          2E077EA29312300560C97615E1AD006DE43AE57968B19167E0D38F3F7127FC7A
          62E218B15872BB2CA1E5774C3A806B3D19BA36DF6C132F3C580854C0AA077DFD
          E52FC0F7A5179FB563FF79788EB1BA614B8C1D70A50FB37A2BBF571CB0FACA40
          C702B8A21103B06D5A2A57AC64956183F175055453AF81540609E356228BFCBD
          BF6506D705C306D8B4FFDE64175FACD480CDF6B0326D76CE016C02B4BB2540DB
          8106D0C268251BE40C60196D3607B4196DB657EACE05D0763AD0763FFD169B36
          73D5B0D73F65599CFCF23936E6FADE36F6968D6DDCAD1BDBF83BB6B2D15736B7
          11E714086093364A0C76D4C58B02ED9894CD8E056825198C4332A0A5409B3582
          4DD47B531FEA640BA716AF31C324A629A9C724397FB768129E02490AB97A3595
          5D08602D05D7258C8E45B33445696D98EBB282ABFB79A67EA801B461F966898B
          3C002B837DC24871CBE275EDEA553CD51F5158D4AFE239450229B9420344F14F
          AD5AB1825767651B0018BFD0A38F3AD263F70993A54E15A1AB1100C0927E9A72
          0550FF2A5B4E3A92726763EBC3D733D86C48065E6F0ABF57A1E2DB6FBE65A79E
          7292D5D1F1A2EF02AC00169E0B61606AD7B6A503FDAEBBECE4401CC00E5879D6
          2FB5C531D7F7DF7BCBAEBEFC12AB5BB39A7B07E061E1FB1618C28A434A89DFCA
          4A048B5B51C05C61AC1C27130286C086F56A59FF1FBF7360C56B20D220C64450
          68645B45E00A7B9D73DFBFECF3BB6FB51EBB28AB5593EDF3C03561B2099B15D0
          B6CFC806328025B20192814096D62DF134C8490618C182CD763BC82A28FAEBE9
          B7BF2C96D12DAD074049B69F33F42B1B73EBD636E6A68D6DCC2D9BDAD83BB616
          C86E68C3CFAD6CC3CE52FED5F39336F28242901D2DA01D9D022D6C36271B04C8
          A6DAAC1BC0C464BD0974A7BFB26F89CE91489AF9F24FFC538FBDBA75775F57B4
          5702093CF97129B816C1900A97A49148243F428B289E6505D7D002C3728E010B
          568A870080C16B4076DDB57AB8970021A4A79C70ACFB8D9E78C271AE8D520915
          C03CF288C31CC8CE38FD54972BAEBEEA0ABBE6EA2BEDBA6BAFB6CF3EFDD8A8A6
          3A7EDC184FA2324985FF381F0C473C124A9BB5C207502E2E4149801D6C1530A5
          056B750961162E4B668F3EFC886DBBCD56D25C55674BE01A9E0A304BC01009A4
          B56402C0F580FDF7B5E79EFDAF4B0211E515E09A3D8EE47912B9F5C7E0811E5C
          11063FD83D4C13235EB86465196BF4F792A41A8C6F802B0D29A35E9DEA56AB7A
          2525C379C599EBDC39337C42FAABCF2BDE127FEF6F9999AB83D2EBAA057ECD3F
          EDCE87DF1473DD4BDA6BA13C10C09AFF58281B60004B40366704CB7A1A648116
          0358FB7D6DED032FB651E3F5BBFCF64A6A7F4A8F99FCF28536FA868D04AC5B0A
          64B7B27177ED64232E6B65434F51EE5581EBB0B30B6CB818EC8873D5CE2B04D9
          91920B726C3603B4A1CD66D92CC6B009D796B739BF3C5EA273F37470D4B717B8
          6EB06E1F01AA8C1C92063C4A4B59804AC175D181F117A3595AC17479826B780B
          84F12ADFA085460AD0EE22B7ABEBAEBADC9E7AEC6125897EC49E79F2317BE6BF
          4FD90BCF3F6BCF3EF3B4C7E23FF2F083F6FC73CF3840BDF6EACBF6CEDB6FDA27
          1F7FE86DD8D03F6CDCD8D1460DAB9C5688AE99A71B86DE990F11F91149592D1C
          E60AB8464E01B6F56A0402D7BBEFBCCB8D64495ED544C77483162E61A9337F43
          81D91A756BFAC4F0CDD75F3A738D00048481A234D79005C68D1D693F7DF78D03
          292C957D02ACCE36D360826CE45B49820800D49004903160AD756A56B1575F7C
          CE3D0560AE806B92952CF190F05234AB521600DCE64D1A6FC38FDADC66BE74BF
          ED73B62AC1D6DFDACAB6D965B10C36C76461B3C80678197400641377AE42368B
          010C362B5D364096C7F69AEDAF7DB444E0B3BCC077E62F6FDBE85B77B4D13701
          ACDB085877B3D1FFD9D8FE38A5820D11B80E3D43EDCCA40DCF035967B3C805C8
          06E8B2006C116C769CD8EC58E9B513EF461228591630D804C03A4F8F5B6DB6B9
          FBBAB66B211F48456811A9B524705D523C76711AEDFFAAE6BA38708DAC4C210B
          FC1DE68A24100EEE210B04AB0ABD15E085B1925B60AA221D89D022222B9BEB14
          0B3B039EC7B0B647382A8F1808C983EAE9FB52400D36C8923FEA716541350C57
          8BF3E5E4FDD84764C0CA191E91A05411E1A6FFDC68BD7A76F7042A61CC02B858
          B673EEAE310B5C5BEA3DDCAA98048AD25CE35A141E5FE2533B7EDC28FBADFF4F
          1E9106D36722025801D8E85B37E0A5DE0225D15DD1CE433F67228065C35E5F7B
          E9F9D49895144AF4FB60750257006CECD377D9B82336B0FEDF7C6FEDB6534E80
          465B170BAE8BB2D9549B5D04685336EBC10985DA6C41E7FDAC9C0C600FBEF4D1
          4A01D8F99347DAB8C78FB351FF91BE7ACB8E36E68EDD6C8CC075C8590D6CD071
          0502D8021B72AADA696AA727403B4C201B4CD6D9AC98ACB7005AD86C002D4630
          2403B5D102E0191F5E52E2F3C2823B4765406014FBEFBD8F74D6DAEE2DB008B0
          2E46732D055731FE34BD5F80EBBBEFBCE545F2FE0EB846EC7F0C7E74429EB35C
          0EA316895B8E39F230D58DFAD0C35F49CEE2C95B7051C2FFD3A3A0923CA7949D
          66E0B3CC0FC08DF228F118CC10A00A50CC02E85F81ACE8A56ED60D29D2F061FC
          728095E6FAEB2FFDEDFC73CF73BFD9AE32C4B99780DC9C1A8AA5C25C03F49A8A
          1D7650F4D655575E6EC3870D5924E94B18B41607AE1E2DA589C619ABD8315203
          E1BEE8AEC158798FC636397F5E92662FA6450A468E95890077B51A552BD803CA
          854C1041E28E95E4990D708D3C0F7F4F1458C6C42D5956386BCC08FB71EF756C
          CE7F4EB5373FFEC96AF79021AAE97656AE5DA1E6BA3889E02FEFA3CDB683CD66
          3D0D1605DA82367B5AC34D8EB1373FFDA1C440B42C2CF64FCD6493DFBED146FE
          671B1B75EB2E36EAB65D6DCC3DFBDBB08BBBDA6F4716D8A0E30B6CF04965BCFD
          71B21A400BC8AAE5D86C2A190C13C80E4F2503D767530398CB0662B223F5DEB8
          FFB4B079A34B5ED2065900E6AAC24B76D2710A1B548D2074D755ED2DE0253864
          7CC936B4C155ED8A9535DE389064CA3C872B16114259700D17AC28A1C3B27249
          FA5EC4C007C8C2B6827145400146ACC88A05B09253007075B077FD31C92F0A03
          8D257A58F4D141DDC04475BDE5F8970F76710C78113850EB5FDFF7DEB7138F3F
          C1D3F791DE32AAE3A2BDE22D10462692A46CB2F1FA76CBCD37DAE4491372D9AF
          1227ACA2BD05726006B8CA17164316864026248015DD35C03512D604B816ABBB
          A6E1B9E18FCB44807BD7CD375CE7D16611FE9ACDA51046B8BFDBC57F4F734D75
          CF618FDF665FF6AC68F6EA7DF6D0EBDF5BE5367BCBC0B5EDB2016C18C0DC0896
          950D0AFD660B5AEF662DB73ED1BEFC71C5552998FEF5B336EAE6DDD47615B8EE
          6163EE3BC4865FB3890D3CBCACFDF6CF02FBFDB8B262AF6AC70B604F503B1190
          159B5583CD0ECDB0592403B45998EC22DA6C6A04C3E360EAEBA72CD564E1C98C
          B1E26AC976EB8D3759EF6E3D9CB9AE514331E8C5C802C52DFD97F47971B2C0FF
          65700DDD311855780A84533FEFE32570C231FF5C24E5A05BADC94A95FA9DC6A0
          FEAB55BD084B3BB5A068F88FA6E0B53CAB42B997817678C179E7DB16929F2A55
          2C2FB6AA895C209AAB362C70050859C603AE5B6DB9A927DF2617EDC7D288BFFC
          F273FBEEBB7EF6CDB749EBD72FBF7DADF7BEB62FBFF8C413DAECB7D7EEB6D946
          EBBB0110572C5A364F4336414E49C135A92B479496FC7105AE1811BFFFEE6B97
          06985CF3C175956BAEC10817481BFAE6A04DECDB5E15CCBE7CCDEE78F12BAB2C
          7DF4EF006C8ED53A9B4DDDB95C9F4D986C418B9DADED96C7D947FD062C152895
          84C5CEECDFD746DF79A08DBC797701EBDE02D6C3C46077B4018757B1018716D8
          C0A3CAD96FB4A3CBDAEFC726CD813605D984CD2E5E36181E402B363B4C72C298
          7FB7B60513062ED579E4469200F6A1FBEEB71DB7DED67557C0D5CB2EAF226F81
          FFCBE01A7A2B20CB321903164C2BA2A6781FE64ACAC1BE4AD4620B13A686337B
          E8A4F9ACB42880CDD6D972604DC8E5A26D190AEF65C361E377392E767CC07EFB
          DBDA6BF5F6642C18B482CD7BA00561A669562C64815E3DBBDAFEFBED63175F74
          A1EA569D2777CD7FD9395A159C77C1F9DECE3F3FBF9DABF7D4CE3BCB418F7486
          7D7AF7F4E57F9435A72F23E4B524095B72009CE6BAE57873C637B157AEC11BAF
          BFEC7D5F280324C6ACD5461608B09AD8F7157BBF7B45FB6E835AB6E09397ECC9
          F77EB2BAF8AA2EB5065BB49CE006B088027390957742F39DACD18647DA8BEF7D
          BD54C0B424809D35E0631B75F76136E2E6BD6CE46DFBD998FB8FB29137ED61BF
          1E5AD3FA1F5860038E286F038F2867038F14B8AA0D3C4A4C16903D46E0EA205B
          C6417690982C6C7670806C2A1B0C15980E0B6D16639818EEB48F6E5CEAE3F711
          45B678B577E57F78D1B9E73BB8E229F0FF3BB86601A7A44BB795250B64238860
          AEBC0EEF011EAB5428EB69EFDE7FFB8D045CA531C25CBDD4887C40B30CD40B16
          A6BEA13CCE5F282D56795EE72AA136CFDDFA5E04B8FAADA1ED97F62F6489F01E
          E0B5BB64697F9B6DB2A975EAD031890023894AC65004B846362E5CB11AA3C5AA
          5021F905EA28714C2D7DC79B22CB68B56BE7B79A7AAFA655AD52C18D594C42E8
          D5B8AD01AEC802045C4462EE60AB25D15D61D8B86301AE9EFB160943063892E5
          DC7337E5679244E52113157A0A2C7DFFE5F7F77291053C09846E8EDFAE3CD9DE
          6E5960FD366B68F6CE63F661BFC1D6651BE566ADB7A595699D1F64B00C9A6CBE
          DFAC40B6A0D52E565586AF2BEF7CCEE6CC5D723C7E71AC75C64FEF09588F14B0
          EE2B603DC8C63C78AC0DBF710FFBE5E09AF6F33E05D6FF900ADE7E3DB4BCFD7A
          58793159350016A0FD274C564D20EB6C36950C8A64B3E8B202D93FA4DB8EBB67
          275B386BD252832B7EAE0BD2EA9C23870E5386ACBED6A1551BCF8885C7C0FFAF
          CC7569F210646FF69501AE59E6CAF300566481C8D49FCDE70AB81286397D9A92
          63679867B82C05A002A459602D0A5C036473736E09C1356BFC8AE082AC2C8151
          0BCF94AE9DBB58CBE62D3CCB1621CE1887306A0560450EDBBA4AD68D2B161509
          3A756C6F6DDA28C9B78C60B4A6AA82406BA6E4428B36E584151013DDC57E7061
          0340F13E88DC0968D6D19F2589CCCA458C0958A3F47CEE58C55C61C7175F74BE
          CB02180F311A2EEA86B51A812BC0357BE410EBB7DF7AF64EEB02FB6CAD2A36E7
          C9EB6CDC842976C8D9F75A99663B2686AE142097CB632A1900B0054D77B01D8E
          B8CC7EFA6DD8520315BEAC533FFFAF8DBCE3501B71CB0136EACEC36DEC2327DB
          D06B76B49FF6A96C3FEE55603F1F54D17E39A882B7FEFF503B582D05D95F0159
          182D402B9075D9406CD68156201B40EB4CD6B5593DCADB60D8854D6CCE904F97
          FA78E96BCF182FFF438C5AD4B51F35649875EBD0C93AB6568C3AF95C57902CD0
          92BC9D792D5BEA7845CA024B03ACD9256E30B1ACBBD18A3068E56B81BEAC555F
          B96126CD754A7416DE02688B802B06AD7C70CDB2D5A29E03B4C172B3A01ACFD3
          05CD120C4885D34E165CD17C23FC35B620BA6BBCC2AC01D6A66B2A2042390BBC
          30621A9DE586AD34B78087FA4A2620C7015E05AD5BB5B03555A890D65289BA9B
          2B6497D68294988BB4047C01D76C72169F94D2F0D748CE1219C762228BEA0F8B
          930A88CA42BAC01809B886416B6BD59E3BF1044A7ECF71B7365A61D997900A96
          96FB2FBAFD7263AEC10A277DF2A67DBA71437BB76D817DD8A58C12991CAA1292
          53145DF5BD75DC4CC50AEB6FA5E5FC0E25F2872D310003B26D76F528B1FA7D0E
          B1ABEE7ECEC64F9A5622D09A3F71944D7CFD561B71EB2162AB87DAE8FB4F10B0
          9E6A83CEDBD8BEDFB99CFDB07B39FB69BF4AF6D3FE15ED67DA018520FB4B80EC
          C162B28708609DCD0A5C53D900A075900DD9C08D6065ECF7A3F136A860533FBA
          B344C75814E38ECBE856653158FC10A985B4CF5E7B7B86F9766D5B3BCBC06A4F
          3D2332CF533F89842A9454E67D12829004240AD56593BEB452BE82962A0342E3
          B937E5E82CCEA0C59291DFC8F7169839BD30F352B67C34833BC94894DCD011AD
          83FF26F94367AA98DD22F5EE6171B3A93B25ABFA1C2D59F59A9228B9A6253375
          A8BCA599EE272A82893050F64F713CC242239A29F68D93FED9679DE1A54908C4
          F0C2789258BC8653AC0496E0F2539C1741F8BD12EA8A41CBC1559240C802CB3A
          8C9734E194649FB10CCE2D87D11CD386833D61A2CF3EF5785234506CB2832CF9
          3041000B8005BC60B1A1B99244067025710BF71C0C96DCAE30D3A6CA35DC5409
          8692C7C2D644F9129A50E810864BFCBF72240468662B2B00ACB0DA70712B4910
          817B33A4C7EAF2802602328B51D961FDF5C88E450217DD7769ADB0D05B1767D0
          2AA96B1B7DBFDCC1152018F1E8CDF691986BDFAEE5ECDD3605F6D36E9D6DC1D7
          AFDB8C5973EDFA7BDFB0667D942FA0F1B6CA49B0BD8209965D1E280A7C0B5A88
          210B64BB6D7F92DDF9C49B3661F2F42201EC4F0DBE193F7F68A31F39576C551A
          EB9DC7DA9847CFB211771C6D3F1FD1CEFA6D5360DFEF5AC17ED8ABB25A25FB61
          9F4AF6236DDF04681D6C33409B63B302D9AC6C9063B301B44715D86F872BB7C0
          D32739401427552CEE732E32AE32A48F0B579D77DE79C74E38E1046705DCD4A4
          7D43FB0264B9C1A97EC90D4FA62A1281D0A85B1FB595B25AEDCA04D7ACF336D1
          3CB4248B93C230652CE5868FDAF6BFFCF0BD7DFFCDD7F6CD679FD9873ADF579F
          7FDE5E7EF6596FAFBFF8A2BDF3DA6BF6FE9BCAEAFFF65B9E019F7D00A8EC8F24
          CD01DABE0CC4093F2D94471001AE58397065F003AE02D6ACCCB234C694D83680
          95C7C5822BB47319FE5604B8FA8423568D8BD88FDF7D658F3E74AF3BF3C3FE90
          0200D760840017A907013C2FCB22008381C25CB9E7A8840083255177932662A7
          DE240164DA9A9A8C696C430042E74EED1C5CF13E488C67DCA7892F2D21B1D9CA
          04C55D0F0095E386617BC58634D13819CB7AAFD55DBEC4137375BCB2C6ACD516
          5CFF94103EF88673AC6F27B1D75E95EDDD7605F641E77236F6CA7F9A4D1B6663
          A6CE16C8BE6EDDB63ED9CA68395FD0786B2DEBB757FAC2E5A3CB122586A742C1
          1A5B58F30D0EB7F3FEFD988D1D37D9814CDCDF660FEF6FE35FBAD986DF7A94C0
          F45801ECD93646EDF70BB6B57E3BD5B0AFB72AB06F77AD64DFED5ED9BEDBADB2
          7DBF87C0754F3581EC8F7B07C80A60C56883CDFE7C609E6490D1667F4DD9EC80
          23CADAAF328A8DBA7D0F5BA85239CB0AAC7C2F1CC6C32791E5DC77DF7D67975D
          76996DB0C106D6AD6B673973B7F50CF4242DCEB157DDE83058127F00AA3C6FD2
          10AD4BF9443361B32B135CA3B26896B5C68D1E114A0BE7CEF1AAA877DF7E9BFD
          FBEAABEC8A8B2EB2630E3FDC76DB6107DB76F3CD6DEB4D37B59DB7DDD60EDC7B
          6F7FFFA4E38EB5871F7AC026A759A1A8381AECD5AB99A6F5A0426B23E5601244
          A02AA930D7FF11705D063CCEFB4A121D95734582C131E1C0AAE587FBF9277DED
          86EBAEB4BAB5AA3A038C18FDA8321BBEC024A001F400D72E9DDB7BDAC3A8044B
          D1C2C6CE5E650FF0B6A8E61A5A6CCD9AD55DAFEDDEAD931BB09019A8FAEA9560
          E5FE8581306483D05F8B03D7C888C5717B391A19C870C5625FED958C7CC4F03F
          3C5823DFA0B5DA822B837FA1966C03FE75A4F5ED58601FF5AA621FF4AC62EFB6
          9216BB51239B78FF450EB233A517BEFEE14F76C4E9B759DBCD8EB18AADB4B447
          3668B29DE729C00856A6F52ECA5BB08BCB088B6B6C0330F31D745DF6515EAE5A
          2D373AD2763FF21ABBFF998FB50C9C6E0B460A545FBFDB46DC7D8A8DB8EB441B
          FDD8F96AE7D9E0ABF6B3EFF66A665F6C52605F6F5341005BC5FAED5CD9BEDD45
          6DD71460015981EDF77BA44C36801626BB9F582C4D4CF6E70353D900C980164C
          F6D0B2D67F3FE9ACD76C69447EFD1D60E5BBC801E86194E908DD0CCBEE7BEFBD
          67D75C738DBBCCC05A61AF30578C0BDCE434D2D6B16C0758790EB8F27A55816B
          64A6FF6BF8A196FE1AE8940AB9E68ACB6DCF5D7771C9816346536E25F6437270
          1E61DD34CE0170A45E3DD2C80107EC6793E4CC1EC99F23DE9EC1C4BE093385C1
          C25C937CAE4AA7B78AC0355F27FEFBC059923D6480352DEFCD84E3D16302D837
          5F7BD14E39F118AB59ADA25BDDA3BC0BCFB3F20040B8ED969B89FD9FA1BE7CD3
          3EFFEC131BF0EB2FD6FF979FBCFDFCF38F4AD6FD73DA785ED87EF8E947A3E1EB
          FAF9671F19D9B128CE889F6B802B2C166F816CD6B14890B32480E57861D61DDB
          48FF4DC1155F5726024A6E7FDBEF4B2F4393D3E0D392DBAB35B83ABB9A394300
          FB4F07D80F7B56B68FD6AE6E7DC560DF6951605F6EDE4C89504EB7854349EE30
          5FCBF759F6C1E7BFDAF5F7BD627B1D7DAD75DAF458ABDE593EAD72C12A6825E0
          6C26860BBBD5923FD7784F9F91DEB08AF213B4DDE828DBF9B02BEDD25B9FB3B7
          FAFEA8B21454D29C6A0B07C968F4CA2D36F2BED36DC4FD67DA98279500E691F3
          EDF7CBF6B56FF76C659FAF5F20602D635F6D5BD9BEDEAE8A7DBD7D15FB6607B5
          1D2B3BC8E6032D8C1690FD7ECF1468736C3601DA9F52904D809626DD5646B1A1
          576D65F326149F4EB024C00B530D9F481E91086894F1A0F01CCB3198030053B5
          4A25EBD8A15DA2C1A27D490A203728394183B5526A39670403B856A2E69A2DFB
          11D131D9F7486A72FAC92759EF1EDD3DE51EA9F9024CD189619994B7016401D7
          4675EB7A9A3ECA9B74EBD6C57EFAE907D58C1AB4A80F632A0944BA3934D7FFEB
          E0CA0484E5DC570B32B4E183FBDC7F1FB77DF7DAD54BCC004E9174DAA3D5D21A
          5A3C4793DD7FEF3DEC86EBAF7136188965C8DAE5CFC50E274E8C3651CF0BDB84
          49138D3656DB0D1B3AC84BC91041B5C1BABD13D62A60055423AB18F24A30D728
          08B9388005543B290D228D09C18155EC95C9A07AB54AEEEB3A78D06F85CC3DD5
          FE1336FFD7BF55AEB966C161819663BF5D76BCF5ED52D63E901FECC702D88F7A
          57B3F73B95B777E5B6F5C9FA6BD8AF27ED64D35F95CFD9D89F7436BAA80B282D
          B1D0464E9C611F7CA952262F2849EFFDAFDB55B73C6F97DFF8AC5D71D373FEFC
          967B5FB3C79EFBD8DEFBBCBF0D192D6F0569BA36436E2D2A816D7F7C61F33E78
          D0C63D71998D7AF45F36FA7101EAE397D8B0DB4FB2FE276F655F6DD7D83EE95D
          C63E5DAFAC80BEB27DB55555FB72AB2A7A54DB4600BBAD9A80F69BED2B0B6805
          B000ED4E099BFD2E65B32E1938D0666403E9B23FC166F74536A095B31FF710B0
          5EBDBDCD9FF4F7196BF46DD66D269BD8D835EF11231C44A3A47230572A72C2CC
          0054C0151608C383B502AE805300ECCA04D79005C2A005B0B28C8765F2DE45FF
          BAC036DD7003CFCC1F4CBB7E2D2541D62490D589015A986CE7B66D65B0E8E4E7
          5FB66C81BDF1C66B3672E470D75D69B15FCF22953A8DBFFDD61B0EAEC827FF57
          996B802B6CDE33F50B5C1F79F01EDB72B30D3D9B54F88AA2BB02A8C15E597A57
          2853A095C54EF6C0FD77E774CCC897002B9CAE74888CE9A41556457083AC0C92
          B424098DFC786564BAEFAEDB6D8B4D36B45AF27B4577053C59CAA359E7076B2C
          89B9C25A910478749FD7145C9119F0ABBDEFDE3B15A9D52F674C2D2E8860B502
          57F7819D37D786DC7E8983EA073272F1088BA57DD0B582BD27CF82F73B5614B8
          35B701A7EE6CA3EE39D7A6BFF790FD39B0AFD9E86F554DED77B3D9A3CDE62A6F
          E5BC094AA1AEC7997AAD0C5236F6175545F8CCFEFC4106B30F1EB3296FDC6913
          9FBBD64603AA4F2A79C403E7DAA06B8EB49F4FDCC6BEDAA9A57DDCBB927DD443
          A0BE6E79FB7CE3AAF6F926B42AF6C5666A9B57B12FB750DB520D90DD3A05D900
          5A40962690CDB159012C201B40FB038C160398D8EC0F7B9495B7817209DC7698
          2D983EE16F4B01D9492BBB848C1874DE0B2DF6C30FDEB773CE3ED375D7B0DA22
          11605CA08448DD9A353C11335AABEBAD62B3ABCA5B202A8C16A6C84BD2D43120
          278E1DE3C7DBA5437B9F04980CDC08274313C0CA84C071C7B1F31E9F61ACF3C9
          45D2C8934F3EEEE197B0A7C822C580CF669C82B95EA868A2550DAE2B5F1A5854
          738D8436002BD2C0C5179EE34620CFD92A2F00802A425F791DA907D15CC9F6C5
          321B70CCA6422C2EE229A2CBBC84F7ECE932306915ABBCAE575E7A91E78E6D92
          56968D105B403612659724FC35AA11C0BCD15BC9B20573055C8F3FEE28AF2F16
          19C622FFEC6A2F0BE42F6F473FFF80DCB41A253A2C001B20AB470C5F4806E8B2
          EF772810C3AD2576D9CE7E387C231B70DEDEF6C7BF8FB1E1779E69231FB8D046
          3D2C16FAE8255ADAEBF1E18BF4DE0536FCEEB36CC8CD27DAEF571D61FDCFDADD
          BE3F6C43FB72FBF6F6499FBAF6419772D657FBFCB07B59FB789DCAF6E9FA55ED
          D30DABA95595065CD81C64374D40D6815620EB4C5620FB950096E66C56001B6C
          F65B6403B459186D0664BFDBA14046B02A36E6A94B759FCE5DAEC0EA9A36C947
          BCBEFCA256E69C2FA758C07DF7DE6D7BEE21C944A5959108D060910900AAC870
          4FC910582B6C36CB04DBC8A791D6BAB1186DEA8AD51ABD161FC7BC16B90858C2
          450D2DF45C07380137068359CAE0153246367C938597BB5C89A906F0B9C149E0
          870BD5C8A1433C333FCBFC60D7210590430196D9788D24328DF7910760AFFC3E
          C6BC2A92449E78E231FB56C9A563900773E57518B460AEA79D7AB2FB71B24F00
          3A009BC760F54B624959E7F6F0CB8C256C3CC2BC48DCF271DF77737EAE38B253
          5922FA27AE69E4545DDCF2B4248A6A71DBFC351354525B2CDCC4D05B01248FC2
          4AA3B200D8EEB2E877EDD0C6D92B008BFFEEA9271E67837EFF55EE73BA3F750D
          5D72498D65F9CBECECBDCB1DEC0113143154A62AC0F9930FDE93F1F21667AE14
          6D64F98F148041ABA83C038BBB2E2E05A40D706592F0E28EBA57EBCB4D6BF7DD
          76B2C71F7B24771FC4EA297BBCF9E3ACA413E00A71C55A926638F5DB4FADDFFE
          EB5BDFF602BB1E629101B259B05DABAA7DD0ADA2BC0DCA89D10A6CB5EDFB1DCA
          0B24A5DBF6AA6E1FAF5BD33ED9A0AE7DB2E11A9215EAFAEB0F7B8915EBF3F7DB
          97F7ED0170C0FA83EEC96F20477CBC368F6AEB5615E80A60D753DB206D29C8E6
          D82C202B36FB65B0D9900C82CDA2CDA6409B930C3082ED5CC1BD0D7E3EB2834D
          F9F4B9E50EAAB97C0E69E6A400D9F01A88D7186B060EE82FE3C03B6EC4025CD1
          20B1E22209E02D00A00242C15C0157C0C94145450F9BD717E0EA115F577F2D70
          5E12B802AC002DCC123D1730E439A9E7A64F2D2C35121300E0C1B2709634BE70
          9502F8783D5A460696F23FF4FBC68F15D6CA3E8940033C79A4858C11796C2359
          38BFDB5D7A2BE1976FBEF9BA0D92AEC66FC05E317091B1097DD10791C0E4A30F
          FBBA2C80B740841087818C47745DFAA5387FD66C8ED1FC9CAE51C994EA030EAE
          E415C02A4F3628129FE74D94E10F9C05C86509FD5D12C0FE055C737EAEC9B1ED
          B5FB4EEE8645513FCFDD9A26C90EA005B8A806BBDEDABDECAEDB6E56026F65C2
          12F30CED366497C41BA1F048E21EF0F349144FFF9FEFE2D83F66C450CFBF4049
          19266DFC5B0158F2BC864490DFBF455D9B902EC2AB01BD15807569413EB59D3A
          B6B5EBFF7DAD1300983300EF72861756CC54AE286E962AE2F3950EAE1E5DA424
          C183AE3B532CB28600502C5660FA5790453A48D92DC0CB36F23A80E102CA1F4A
          BF45C3E5D15FEB7D3E5F645F7C3FBB8F1C80A720BB0E405BCD3E016461B3006D
          B0592403DAA66A4806B48C64F0256C166D3605598C605F6D296F836DCBC9FB60
          7F9B33EAB71506ACE18A85012B062040C56BC02A19A40B1D40B0D4EEBDD71E39
          600560091E0050D12FB30EFF914DCB9961CA5801551AAFDB6A99BD2470A53C34
          E01A52038F14D7C3A011CC35091A488C71C1D400D32C6380B94E9830CE7ED1B1
          BFF2C2F31EE8000B0660430608960DAB8E630C2357C80238B2AFB1461DFBFCF3
          4F8DB2D0FC060C99419463560213021598849005F0B20870653FF13CE791B084
          4082706A8F5C02D9D70C66ACDD187E88D07AEFADD773F95C71D60F700D80CD67
          B1CB30B64BF89545658108200058A72919FEDE7BEC6C15A45BB76B2D077F016B
          0385B786D700462240B6BE8A2452B5F59E3B6E4DB34C25AC15800D97B7E4FA16
          1E52960C44B8AF97F0962C00939F3066A40D1AF08BAF842839CE4A20978630AD
          021BBEAF4B5C4D50723C0D7AE058C92BB066C3A4922C2E5FE44120C10C851CC3
          B73A007669F4D5A23A7B95806BB0AFC95FBC6FDF1EB4912FD93FE8262DB62890
          CD67B6CBF975916CD6650335B15907D81CD026B2418ECDBA6C5059AFCBB9C7C1
          0F8774B609EF3DB1424135FA8E9B334215B909A2EE51BC975D9291FEAD46F5AA
          AE4162E802A8DC9D49CC12A0CD466885E3FC229159A92CD05206B1E264014223
          01EC900428194D3ED788D0E25899006270C544902DC10CF83118D149EFBBEB4E
          9730D6A8553339CED468057BF5C92065D61C6F80AB03AFB665898F63FAEFBF0F
          CC19B4C2250B1041730D171C9265C35C997CD86FBEA18CDF75A02D01B8660BE7
          E5572D8D2082CF3FFE2065AD497967C035FA240C948B2C9D8B90804A889EC56C
          56E88AE52C365A9AB16BABCD37721F5796D218B222090A7A2BA0859E89CF2BB1
          FACF3DFD84B370D86724FD8E5A65F43BC6AC60AF8BACB47484D001263E2405A4
          8189634739B877EFD4DE2B1FD08F2487C1FF1506CB2A204A982FE99A78C8AB00
          348C71248189E4DE1453247F2F75CA06E91EC94A1849204B22BDF117F76DB6F4
          7871FDBF4AC1D519988C16A39EBCDDBEDCB1631274D0BDC25F59EC7206D4BFB0
          E474FF0EB462B34806CE664336C867B318C160B41B57B04FFB2851CD6E4D6CF8
          BD17C8D6B6FCBC018A73C7CA1F789160B970299964B607D8B8C177DA717BD720
          9107585ED322FCD5B54C816D8756CA9F49E48CC0A5512D31DCDA0A9395340070
          355D43CED70A0D2D8EB9627C005C61AC51029A1B77D284898BD4650AF73122CC
          18787808C4CD1DCFB1F25FAC14755442C500878401C0718CE4507030D5F105CB
          F6E3961B96FBEBEA9C58E26FB4D106B9A8ACF04A60FFF44D4E16109053BF8ABA
          4FE8D268B8EC3B0C6525D55CF325019815914B91B885CFC9FA74D4E1877881BC
          1953C496BC0A011151893192C18BBFF2D4A9537393671674B38CF6EF26CD8E89
          2D174010D9A160F35327F9D2BCCFDA3DAC6AA5B2D6BE4DE22B8ADEDAB34B077F
          04B078AC27803AE78C53BDBA4212AB3F35E73F1CD794D5C9BC79CAE4850A931A
          5E73656452700D5900263F6FD6742F81431832E04A4415608A3B562489016C8B
          0B22E0987119436F85B9C2C0C95780A4409219982B76098A3F6240259A2F2677
          084B1C23CFF129CF25102F0E59F5F92A07D70091B92A4E36ECBE6BEC8BEDDA38
          C87EA0BC041FE11BBB92807591DF494116C9E0E300DA60B31B54B14FD696616C
          2DF9EA6ED74046B4D36DF690FE2B85AD6601375F87CBBFD630B208F104602966
          17E1882CB3B3D24018B51AD651044B0A5EED9B35778356B37A093BECD8A2A5AD
          D5B963B1E01A06AD08540064A72BAE3F982B376B940F296405490E4D06203738
          8D68AAFBEFBFD7D6E9D5D3811A06ECD16402501AC749821A40BF5EB5EA3E11A0
          C1766DDFDE270924095CD01E79E4219718D81FD15ABEF414339EA8F782DDC3B2
          60AEA79F768A7F877E0050D91F8F802D12814B034B60AE210744DED17C7900F7
          1FDA8EDB6E65679D76B2CB02EE4F2A70A5940A6009B83280B3AC896B1B9F05EB
          2FC1D82E76932CB846745C943C01DCD084F16FEDDAA96D62D44AFD5AA3644A04
          14A0B95E7FCD954A7DF99A27A16169EF80AD7B9084281E94400145012B2D2691
          9C9FB6782BC9683C820EFD59FDC1C4C331ECBCDDD6B69E72BBC2F801D7AC5F6B
          49B2638547039206EE635436A001CC84DA524A1D9FF0F5FAACE3F7494CEC49E0
          49724DE2780B25B762BBD637586DC03507B213C6D888476EB27EFBAEEB5AAA07
          20F4A8B84A24033784A1CBAE53558630745EF4E1F2D66FAFCE36ECAE8B1546FB
          FB4A07D5E8A7A22E6F56804747A40122DCE800C88F3F7CE7E59BDDED4AEC32BC
          04005ADECB1A89002D401590EDD4B295B56B2A435731B2007AAB67C8D2921C8F
          047E03201F3C70808D1A31D24135E48B903560690C3C3C06B2CC959BFCD043FE
          E1ACD5A3C7747C041044141900C8F1C25A5D1210830D7D14E313CC9C41139547
          BD0FD2627E2C3F23674118B32E5142E71DB6DF56F956CB1B3EB40069A73632E2
          487EF0882FFD1E8FC5816BD492CA967761204766AC484508A3451A18F2FB0007
          13BC05F86320C390F80B161BEF470E89257911946CD8275B2D095C014A268006
          6B28BE5F1A65DB564969EABA2A9B8DEE4AA37E165201E0DAAB5B67BBF3D69BDC
          C7359B0C25DCDDC2B589557651E04A1AC524798F261AB1DF3933B4A21DF687F6
          DFDC3D0660FCB056E480481253125900C61A19B15CCA90418B86D7412BB16E3C
          06285D53463ED4FF923FF5DB72C92BBC1793492DC7B033124149FA79B503D79C
          A6A8CC47933E7ADD065C7C947DB14D6B970B00DA0F148CF011C6AB15CD68A5FF
          7ED8AD7CC2A2F5F8D9A68DADFF19FBDAB8D71FB7F9AABD53DCB27D457F9E05D2
          229FE3B82D2680509F2CB7E6B844F0C4E38F2A59F3210E56780BF08846E99670
          FC46A5AF86140070B5516B2F606DD744834B56FB56F83BEA66A415A61E142B10
          F086410B8F03F68BEE0A70F77DE76DFB6DC040A3A8220C8D2C5E3C07503C2F2D
          B5C0B42CE67DCA38F308D3DD71FB1D722E58EC0FDD95657FE8A1E192155E0D4C
          00306D5EC36E8F38E230312219FA08E5C4ED8A028029C02209FCACC8AD8F3FFA
          C02EBFF8224517EDE51160802B4C1580065C237D23BFDB40499EB3516C7F79AE
          A5264697A83C80012B978044AC2B6A6AC16C29F772E1B96779A1BCB7DF7ACD06
          FF3EC8A39682A5F2989D88788D84825C1003BE24037CC9DB24567140AD509699
          6F5F7FF599DDF8EF6B54557863072674D5CE8AC36FDE507EA275E41BDD402B9F
          BAD57D990D23E4731825115AF7DE73878D1E35CC5960787E84EC50E8729568EE
          853A6692A8C72BDA2A9F0192C4D79F7FE27DE3A563D2A43080295E03F46984C1
          16270BC0B25B364E7C74FD799AC4857DC05C69789454974D627B4DAED7509EE6
          D38FBD3F6629841F17318EDB99F50CF9E0E60CC6C5F7FE6A0BAE59709A37699C
          8D7DED491B70D151F6F59E3D1D5813572B019F82123E10F07ED833F5185036AE
          12032F008A0782BECB3E7C5F9DCBE4C275BFDCA9A3FD72E6FE36EABF77CBFA5F
          B292D72B1A5463FF2501575859360A89E743870C566DF86F3DDA09B042CB44BF
          ECD6A183030A6C15D60AC876500ECF00D6B692085A098C9704AEEE8625CBAE87
          A00A8871F807C06FBBE946FBE2B3CF1D5801CF48349A7D0DD84E545E5A8096E4
          CC23860DB75E3D7A3A6B8DAC5DEEDAA57DC7321D5609F88574C1F1D238FEEA15
          2B7A6496CC44365DDA1D924368693CC7F586C42E30D63EBDD7F2400526039876
          B063D82B8DC90220E5779704AE61BDCE96790118F0018D252D9F91611FD058BB
          6737DB6BB79DED98A38FB02F3FFF4221BA4A22A27C11F965B0C38802CB87FD87
          6659FCF02E065AD388B564C99E44AEB1A4BFE3F69B3DDACA7D4BD33CA8BEA416
          48B56854D7FAF4EC6C6D9A3670168B518B461001DB930C65C81FBFD9C081BFBA
          BC13724F385B791EDA145843EAC819199186A64DF692E384BF12A145FFD15780
          21D2408F2E1D733972A3E8E39200D66D046B6A15A6492058AC57814DFD5C3BCA
          57B7B5826B482C43DED9DD76DBC5AEBBEE1AEF8BD94A16940B70502014E01A45
          224BD2F7FF13E09A05ACF99AD5A6FFF4958D16E00DBCF868791B6C6C9F6FD34A
          D6FDFA690458D9C437561E080EC0629E80B0379EABF1997F8EAE2B702504F7F3
          2D5B488AE863BF9EAB84D99225A6F6FB58062A19837423AC2CC05C9ADF29EEE2
          86253C4A347BBECAD4876FC694C9F6CE1BAFDB89C71E2343413BAB54AEACD5A8
          52D997D9805530D8002B18212C163FD7D662A8D10A8D5BE47955A38E921AFB88
          BCB180F7969B6E62FFB9FE061B397C84B355DAE48993DC3D8BBB17961AA0CB7B
          541ABDE2B2CB3D39338C957DD0006C1AF968013A96E9FC569776ED5C13AD5DA9
          B203EDE6EBAD6F871E70802FEFA64E9FA25497890618AE586F2960E0D24B2EB2
          B6CA924FD41A7203C0CA6483FECC24C3FE60AB110A1BFD521CB886512B96AE00
          29EE57B0D8005F982BA9F398E0081BAD5CA99CD59566BCF5D65BDBA5975EEA86
          ACD05661AFB460795ED34A7F118957DC7D501C730DB984FB83A8BEFFDC706DE2
          FFA9E373C6489A3E313EC0A99DC0B39396E975094995760C73C5B8D54DBEA211
          29450D2D96DA7DD65DDB0E3A707FFBFEFB6F7346A270B90A6210E01AB97C91AD
          3EFDE4035BAB5737F70A809D721C1134E06C332F90A038A3566B4DF8DCA75106
          9C49225224925BA0678F2E9E7783FBA09DB2C7B555900D2567A8FD3571F2A45C
          52F23902572FADB3149577FFE7C0351F80F0ED983B7EB44DFBFE0B9BF0CEF3CE
          3209B5FDFDAA533C694CFF730FB65FCED8DF5BFFB3FF61032E3CD27EBBE244FB
          E3E60B6CE413B7DBF8B79EB129DF7C6C73460FF352354B0370AB72DBE2061532
          0003863871E4019E635848D2C9CD970FE1AFF6E8830FB84410390688C9C720E4
          4950C45C234AABAD24015EAF2937A525816B542470877E315680303C138E3CFC
          087BEA89276DCCA8D19ED91E760AA0525181B2DB53264DB67163C6DAEBAFBE66
          E79C75B66DB8FE06D6081FDB3410C113B1A4EE58E135108627E40180B07EF51A
          B6599FF5ECAC134FB2271E52F8345AAEACF1480311620B4B7AF5D5979585FE38
          CFDD8A7B1ABF81D10C2067B2C120C60483F65AAFA65CC0F43C1BB0B05880C5CF
          572D96FFB0D4D05AD7EADEC58D2818B4008848A9171553EBD55DC37AF6EC697B
          EEB9A7B3231A009B05D770BCCF4A07C5DD07C5816B482530F97BEFB9CBF6DD67
          0FCFC70A0BF5C4D45AF2A3A9E2D3DA5EC7DF01B728D2FFE93C89D00A2B7C304A
          2CF0A41D24EC7A83F5FBB841F10781A6B3635F47248EF9E1E79CB0D805DE9E52
          98F2C9271DE7C9B60334A36E165A2BEF45DDAC00DAE264019701DC16A07488D2
          8899240057AE035513D05DC918475878A74E1DDC75AFBEBC6AB6DB6E1B1B3B7E
          9C3357D836E0EADEE3FF97C0B52400E7CE756A25D9F67F659B6207956E564FC0
          91862002AA3432F08F19A1C436841B4AD7264FEAAF4AF776EB8DFFB11A956438
          A85CD9810A8085C1AD59A7AE5BE261AE30D925B96201AE44D3B0B4A6B19CEFD6
          A9A303174059BD6A35EBD8BE83ADBBF63A06D81E7CD03FEC88C30EB71DB6DBDE
          FAACB3AE75EED8C96AC8F2DF5A06B41EDDBA5BAD1A351D5059B2D30055C01AB9
          81F7DD682660AD52AE9C6DB2DE7A76D231C7D85CA596FC53D6762A11103E1B7A
          1FCF09244012785CBAF3AEBB28F2487EB018330058F7A4903B1AC70CD8861C11
          01114C1401EED92A0BD9E7C14CA35E569476010018CC0044EF1E5D73BA2CFA2C
          9F61B1EED8B1A3F2203450A299B23ACEE16ED4F2FA553A979001B23E97C55EFF
          126D90001B007BD38D37D8CE3BEDA0D2D9655D878CF2E084BDE26E15FEAD8013
          32008103802E7EA478134451C1D031890404B06082F708B493EB90002BAC3BAA
          DD2687995402008C61CDCDC58859F2470E81300E223D603863C2A22F015E1E97
          1835A7E30D4F01CE81F3C115CB831204B24C244CB234A4018EB767CFEE56AD5A
          151B326CA8B3D5243417635B02AE711D8AEBE2FF79E6FABF0286CBFB388BBBB0
          E10A93738C4EC11680C52DCB4BA0CC223268818D1E3ECCBEFAEC53193036D5CD
          DBD5C10580CD66E00FFD31F20814F5181E08917315308C2085C8254B10034C61
          DD757ADB3A6BAF659B6FB6892FCFC95CCF67F8990278BC87B53F720A10B24B03
          A803FCD83F6DF79D77B2CB2EFA97477391244823C14BC0001CEE98AE3645E78C
          AB0F4BD0A79F7ED2761290D413B8E2FB4B236398B35881420026BF13E702AB8D
          0C628B0357981083157000245822F31A5F4A9240933F942CFB7C1EDBB01D4CAF
          8D8C676B6AA2A8A4090E70E50FF61A4C290B46CB0B64B33916A8C2B0D5969B7B
          B009FD11201713469456E175F8EF2279C0D401C26A552BEABAC9C759D791FC15
          3CE253DD4A007BEDB557BB86992DEFC3A401A8872480DB16BF4F100740D756FE
          A954927586293065DFB4E85F1EE96FFA78492D641A8E33B4702F214365028129
          138007D6A49A2BE5683866F4D7214386F8E496F516C8AE1E8A1B83A5E0AA4086
          E50D7C2B637FC55DD85C76234AA4A46E4EE1DB1989A21D5CA93FA59979B29640
          77DE7A8B1CDC0F93D1A0B355AB50C1D6A851C397C8689A80AB5BCB89C95E4C8B
          F231B1CC46BF24E98AD7EED260EBDAA5532E810CC964184800693D85A87AC214
          DDE09DB534E3399F31C8D14201B5C87F00C8756AD7D64116CD927D236F7CFDF9
          677E1ED3941754A3D6C135F21530C160CC6230A3C33EFAE8C30EAE84C6020000
          3FC7C7B130D0C247370C6901E201EA8B035796B300A95731D573C000E0E439CB
          4F3EAB23C6C7FBBCC700675B4FAA43A8AD560A949DC6B0C51FEC3598521852B2
          83FBEFEAAE4C3E61E4C3456F938D37F40986E00B8E1170039C6087B841B12CC7
          A8C46394D28EDA5A35316E91E3354D75499FD29F2CB3AFBCF2725F31840B19E7
          0068F15E849A728DB6D97A4B9F506900A7978C91EEEACC5F1313150ECA972BF0
          CF38368E913E5C12B8E6572C70FFD6D453808994C99C7BCE2778FD2EEC955A5E
          3C075C932017FCB00B2581924A03C5826B7183B8F4F395D30313C6FE9AB32267
          B34AE587E8E5B4ACB49409CBADA25AC47EF3982B7121D68764F0C76F03E5E378
          AAEDB0CDD6AE9D6274A9564999B548B22D83064C22966CB001C02FE2FF3DBB96
          185FE492E5E665B0C00C196CD100524085ED788F6D3C5C55EFD1005CBECB2005
          64D9867D54AA283F546DC7C038FCB0435440EF0797369CB1921354A04A391818
          B9FBB3A6134BA4922390E0B5D75E718305B95EC96F1B2919BDBE58312D8E6F79
          3FB696C7462B4D64B0D7B163C7E68028F23078DED34C4E866C0831F7C3B23477
          BF42EF146BFCE79187ABA6544FF7F7847902381879002F96FA3159D493065B34
          9825D72D025578E4FA612CBAF9A6FFF8D29FBF441A488246D0BF3D594A2A5DB1
          9A29A76BC235E018F82E930F401AF710F702F7445CB3E2AE03DF2DBAC94D4E20
          1A2B24EE27CE99067BA5717C24FA8949D9E58BD4EFB524A3BE145C4BD24BABC1
          3601AE3188B20681ECE1E5C262B371E2F9CF230D5CFEFB02A79953A7D8A47163
          9558E44DBBF7CE3BEC8A4B2E56528ECDDD07D4B553A57F8B904E5845E2345F58
          593612C1642B7F660740805730C6C8D815EF73B3630C61B9C6408A65222008B8
          124983B3FF91F2617DF699A79D71A31D3B0B17730560BD3A6C66F0E6A491340A
          0C3FC63BEEB8CD594A30644F68A3FD030AD94920FF39DBAC88D69604DFDDBBDB
          5A6BADE5BEAC5C47D86A76291D136996BD16EB9297C9EC94BF6D48477894FCEB
          C2F36DC71DB6F308356AAE013C09FBD4EA81F051359877B07158E5A24D811602
          535F5EAB3139724DB7D87C5325D0BED7251926878405269E1B11F61C095EB8AE
          C8127C1FB003DCF13CE077D85F846F0770C7E4BBA4EB013817DD1280E63E03B8
          23EF06E7DC5CBFBD8E809E505826E7580125C53313EDB5247FA5E05A925E5A0D
          B6015CB380BA3870CD1DEA12C015DD35C21CFD464FD94B30589CB989EE8A84C7
          78194C975BCA8431A3EDF69B6FB24B2EBCC00117CB3A9A2AAE5CE5C57860952C
          29191831C878CECDCB72319AEB9A99E563540A65B0A0B72119909D0A26454E04
          52C2BDF4E2F3EEF0CF40E4D838C6388F5C62E634E432DE8F6C5BE16B0993E539
          03060D90348430D9C1837FF7E42EBFA95AEC30A547C41778716D88CAC5AC8836
          61C20437602129B164066093748CA4C1234B7FB2348DBF2CD02E33C0462E017C
          81057EC846E4811821C31FA54FFE50BF902E923EA14C0EFDF3ABEA62F13CDBB2
          FDC1F7870DFDC3BFCFFB6444C388CA35CB252A47EF47834D5D0303E40972F945
          B5B6E277C78E19E5FBE035FBA39A2FFBE73DAE0F8FF13B8BBB265CDB6C635FD1
          D807C7CA3946E3F7A9D9C671C7788059478EE1C2AA19C5834229B816DF47ABC5
          16806BBE0B4B006C51832B97DDA828900DE69A01566E20000BFF585A24918EE4
          26E1CA45E1B90FFABE67B7DF768B5D71F9A576E619A7D9812A02B8DBAE3BDBF6
          725F616917CC13D0A485353E58204C83F7610DB013C097F4807C1730DD6BCFDD
          E512B4975D79C56576F75D772862E80B1F480C3606648029C7999F9039DC7A18
          0C308F5882B2FCCC822D039A251F801B4B3F1E01DBC86FB0321FC78C19E3A0CA
          1F8FB056FE00D74820920FAE7F176023D72A7D1AD79F3495B865C1342391097D
          C473E2EDC70900310E2EAEF17DEE238CA60076006B002880C56F6107E0DE0ADB
          40DC73FC36DFE3FBBCC7BED836AE13915F5C27AE2D8DE7CB7A9D007C7E8F4905
          60E7D869BC8EE3E35EF331904A1989345032F65A0AAEAB0574167F10802B7F59
          205D1C9375C1BD385920F37918B8B229F8B24B463E8FB2280166DCFCCCEEBF29
          1287A4271411FCCF0DFF76ED6EC30DD6B3B57BF792837637F70CC84A04002B4B
          2FF434CA7FB30D5E030033796789987AE4E107ED75E9A29EAA50038063891B9C
          C7603C01B4493A3B966C49A263DF5E033892B44404507E755906673091C84110
          E0BCB8C7ACC4B03C9FC35AE37A66332FF15E806BFE24FA77C135D202D2A75CD7
          F08DF6EB9DFA9EE6F74BB62F8BECA3B4C05FEC9BC798040348E3B7E2BEE2F701
          E16C96B29C74A0EFBB7F36A5D0D348B26091F1FBCB7A1DB2CC39BB8F08B801E4
          B3A9137D8597B6E2476C0912B7946427A5DBACF81E0870CD07D860B3598386EB
          42C5C80291C4386EF8781D2C06506316F78C5629C0F9AC9DCEE4E137CB7B611C
          8B1CA90C92D1A346F8F20BC64945049276B3DC220A87987E9664A3546980B2C6
          0C1E1A80CD6FC11A72409F4A163018F61B59966280856E0733CDBA1605D0E6BF
          1F450A8B4A735864C9932CCB5F81CFE33AC2580157F4C9A88D166E58F9D999FE
          2EB8E6EE11F44F26A6143830E00488F03CEB3215CC2DFA31FFD127E5F49A6501
          327B7FE5002B23E3E4D821811F842AEB1E8865794C96F99363494095EBBCB8C6
          FE429EE03701F845A50A564904E324AB3AEED1525960C563DD4AFF8525816B76
          D0C5A0CCDEF4C110E231971D3E1D0459708CE50FCBA5C8791A915D71B307C308
          E6E89A94121C93F4D9DDBE94848590D6646935D3264C1C6393E4C40F1385EDF2
          C88D1C12442E34178776DDC0BC1F40999525005EC0DE3F277B3F8383CAA16E28
          49B22AE5123EA74098CD2E0FE06601383E0B2D308C2C2519B4CB7F9B240B5618
          4CE231648100DA00DF6CB6A625AD6096F419D733402CDCF5429F8E3E09F61F09
          5E8A63F67C1E135BDC67F11BDC277E2FC9A383200F970832324F52E65C1F2972
          6F910287DA677632CD4E82D96B57D43529EE78DD152DBC17D20986DFE65EE37E
          F60C5F4A839865D5C96F16FF572A0B14DF47ABC516F9E09A2CFDD109744BA5C5
          E018005EEE456E499E20230D374C4E80ED93946E8BD6354AD2FDA1B1650746DC
          C00146F13A49EEAC7D2B094B587E67CC14BB9D258D4E65CDE7AB2CFACC99895E
          E88C63BE188825E0177F598B31032C403C71344F40525C2A5DE227920480CDB9
          26CFB52F81F96CE50D98A3CDF8C88F13B0F59229C977191C85C6AE34E3BFB625
          F4967E20633EE1B75E09803CA2C1B8D27E2D1C9849D91C67E99EA19E7E2CCCE0
          EFC79B2E5BFFF27E26394A3E338E0930F94E12343079F2E4BF00ACF7A4AEF7A4
          494A602D6D96BF7CAB75A164902C5D7340933BA7CC7B4568EEB9E34E01370B26
          312927F74E028AD9FDC7F36C4997E47ECB5436A0EFD4D77875CC553AC10594EE
          D61FA906FD7E123B0C3FD8B9B393F7B85FB3A09F05D27C1928A4A160CE850C33
          61D2D9D7D94934775FA7896BFC58F47CC2F8B19EC83C5A2E4565B0FCDCDDBCF8
          27A5E05A824E5A1D36C9826BF678B269DB3C4D1A09A795056AFCC409DE18900C
          5896DC94CD98AC0C63B03F0C375EA82F7D0C4301204BE33521A31830301A8CD7
          CD46D1C0D9B3921CB1DC7C0CF4313232CD9E2383C7B4899AED31464C54EED6D1
          36799C5CBA547D60FCB8913669F2589B327582EF73AC986B1846D80F291161B5
          347E8FC6E7B4F1CA8E14915561E4A0D0E11C65279AAE73193752A9ED14343061
          CA541B3741E7367E8C4D9B38565995F45D67C92373868A497A9F73278FC18471
          B0681D97183599B8262A41CFE4496373C7C1E7C9FBE3FC3D92CC709CB4307AF0
          5E1C37FB8DE785EF4DF03E677BDF47FA48BFD162DFEC93EDB84E71ADC88C8506
          3B5DA1BCE3C78FB7112346F835C4A19DF7484DC8B63CE25D10DF4B8257D84F62
          98C9F66D1C3BBF4BE337593DF03EAB148E119986169FC3DE62C511DBF19DDCF5
          4AEF8338BFB82F589DC4F9220FC5759EA7490D1FE4912386C8383922D73F5CA7
          91CA3AE7D74CF925E87B9EB3DF912386E5E4295E87A12CCE8DDF896DC31895BB
          6EFA8C7B371A7DC3FD4EE31EE7FD48A21EF71EF77BCE6897F64D5CFBD08A13A0
          2DFEAF145C8BEFA3D5628BF016C81ECCECD9498624667C061E0C3434B2C47D46
          2E3183E5B2A2481306CDF061B8AFC8C5065716B9A0D07053213DDC00E9A22374
          23F39A473EA3FAEA1069A3BCC655A97FFF9F3D57E71F8307BA5BCCEFBFFF2E37
          9D61BED41F36546E37A3E5C63478800D1E30C8860F1E61A3868EF4DFFC43EFFD
          363071E1E1B7683CC7E527E7EEA3DFC3350A771F7E8BDF1DA63223C3476A3FA3
          46F9B631D0F0C51D376AB817B0E3B807FD31D8FA2B11CDB0C1BFE9B77FF1705E
          CE176D973CA9E8BAE3C78DF2014DE21872CB0E1CF09374DFDF6CE81F43BC4F86
          0E495C74DCC567F01FA9FBCF003FD7649BC4ED07971DDC81D8EFF0A1C3FCBC7F
          FF4DC7A0F7426366BB70118AF738F6AC5B51BC1FFBA52FB94E00298F84C0124C
          3074E850FBE9271DAB1E793F7B4DF35FF31DF227D077EC1737237E37EB1A45BF
          F05E9C0BDB714EBCA6BFD0C5315286BB13DFA5A199738EF9E711AE51E10A45FF
          85EB54F61CB906F4FDE891A3FC377EF9F9FBA41FF5BB94E3A6FFF9DD1F94450B
          8D7E805CBE382EF6C17743C30FF729BE4B8B630F97AA70A18BBEA62FB8D7B8AF
          794EFF703F73AFF13ADCF0182F9007EE3DDCCDB8F7B3FDC47EC3CE9030F7E2FF
          4AC1B5F83E5A2DB6083FD76C74D63C157C9B33573E90696289AFBFFEDA8EFAE7
          11EE279A44D734C939C687A37443453A9152AD09D151FABC01B1FC5418905B14
          EF931188CF22BF25AF231CB08D1CFCEB3750A8AA5A0365A7679F9D3A74541081
          423B1522D94449941B2A8972D7F61D958EAE8DD20F2A8D9B22BA9A2A59461207
          9E445EE131C0EF111AC96F924F937043E2B989F7A7714C1C431392A990B14ADB
          464417C10B448911D34E8139CE83E3E478AA56A9942B6183DF6C0B5552C0ED8B
          F0493236454043439D43CB1649C146229092505485C1929C46256DD8AE91CE11
          C779521FE2B7CB3ED80EEF87264A64D358151078AF814AA044C4193EBC7C37BC
          22DC295DBF81633E8F7C1EDE137CC63112C0B086522812FE4A3001095C1A91B8
          9C72354AA0D344A1C77C4EF416DB54AB564DE9F1DAF936F595BBB681D22C722C
          CD741D62FBC6CA3FCB77D807DBF25DB621290E8DDF257563249921F69EA8BBAC
          8F7275252FC17D0ECF0E22B7228B18E711D158717EE1C3CC35A0BF89A2E33770
          B7631FDC8F6B52E8527D1B9FD1B734F21810DA4AF4176900E94BFA887D718E75
          95E7227CA3D927DF8F7C101C07FBA6F15B6C177DECC10CDA967B83C6BD1F8DFB
          9EE78440D7A5E4BC8E99AC58DCFBDC93DC7F9C9387F0EA3D822B8E38FC507BFE
          B96752FDB578582805D7E2FB68B5D802708D10C8C8F729D933A44877D7F9E69B
          6F3C951E371F217F4986A224910671FDE4ABE42602D83AAB1E5657B942F11EE0
          169F9115A88306136007A07103F21E375E0FB94DF1596F15AD6BA5426FDCD064
          B8EADEB98BE7416DA644CA3D3A13F7DF528F3D358893A272DDBA76F0BC99B865
          45B20C8E238E25F268C66F122193035C958AE9DABD9BB246B5F763E1FB802A99
          F1BB755610830627C9503AB45736231D1FA9FB18C4004DFBB6ED1C5C19A4846C
          02F0F8E00216EDDAAADE5697F6399730F7CD15E874D5B9746897A4A06BAE5A4B
          2D9441A95D9BF84E4BFF1D7C72D98E7DAFA99221AD545194ED236C33422AE977
          9EF319E0CA23BFCD731ABF1993600BEA7529372D60D85E691FBB74517F75EAE4
          600950F2487217C017A00430D9CECF4FFDDDB6B5F6A7E3EEA0A4E7343E03A4D9
          67E7CE9D7D7F6C43BFF01DCE89C83A72069033951488DD3B77C8A5DFA3CF38FE
          F051E6D8E35ECA868CB21DAFA379262CBD069878E49A708E5C7B8E89638BC828
          AE29C9AAF97D1A204BC296AE14404C93BF709E9C33AF69BE1FF55DE420E0BD2E
          BA97E94B7E8FD7D1B7BCC73DC6FDCB6F719F716F715F733F330668DC6BBCC723
          DB412298E8D9179324E0CA9822FFC22B2FBF986ACEC5C34229B816DF47ABC516
          D9DC0211B1335BD61C2AA4606E418BFBE4934FBC4C30839F9B958A990C18D2DC
          E14B4ABED0CE5DBBD8DA7ABE96A29F7ACB17951620DB47A1A5BCDFAB570F0751
          6E4A008FCF695D04D01BC88775CBAD36D56F74D66FB457F1B83E4AF7B791F5E9
          D5DB53CF6DD047D50334B0D65EAB8F0642371F48EBAED3CB9327AFBB562F1F00
          0C10F6DB4165937BA9F85CE7AE9DBCC500E0730665B76E5DACA9126DB00DA1A1
          000F20B1619F756DD3F5D6B28DFAF4F2E3ECD9ADA3F5EEA9F3D2B990B690D6AD
          4B77EBDEB5870657329174EFD1D9BA75EFE4E7C6B9ACD55BFEB5EBF6F4BE22A4
          B6BB7E0B705AA7F7DAFA9E9235EB3B1D3B3098DB3890AEDDBB875A771D5767F5
          A5FAAED7DAFA8DAEDAAE9DBEAB41AADF0458F81EF1E98028FBA431D8E3BCD7D2
          EFF39B349EF7527A3B26BE1E3D7A380802A0BD7BF7B60D37DCD043611D8C04AC
          9C3F8DF35F7BEDB51D5CD75947C7AD635DABA7AE632F5D533DF6EAC535ED9DFB
          2EC00448F33EC7DBA695404AC04A9587384E8E85547E006C802DC7B4B12AE772
          ECB0C4CD36DDD88FB16BD7AEFE3D808BCFB85671CEB13FCE9DEFC7F9D107A4F1
          EBBDCEDA7E0F9278875494C96BF5A9AA0B50A5B5A3EE1FEE1522F398C40035CE
          75FDF5D74FEE075D377CA8494DE8139C7E83FEA325D72BF95D9EF39BDCF3DC43
          DCE3DCDB84B44210782F5EAFABFB92F70054EE77B6653BEE45BEBFFE7AEBFAFE
          985808B97EE595574A8C07A5E05AE2AE5AB51BE6CB026E1DD6217932DFB45CB1
          6776971B8B5B58558B281A5546BD9C34BE93725D429B0D611F2B7B64470A7F40
          DEE3F3302685959C28193E9B3A45E55870BD12B24F9F24277F028BFC60E6CA18
          304C4F16BAC7C05C4916FC6134086B2BC78676E54EFEB2FACFD571924279812C
          C35E39208DD0C15A1DCEE3894F6AA22FF3E706A75143F47B72ED91B599E39923
          8F85E953C67B02174A387B2D39AA1C488B4E7288A24BCB5791CC5832C0B9E55B
          2D2A95727C18A962299044A44DF732D1B895E185B0603E4946E459A1227C5327
          4F4BAA27A405F5A2FE17E7CE7163F8C9860F27EE63492DAF9C4B5226322AACFF
          51A0D0BD3ED25CAE9C7336690BAF73659F59BEB8334352832C7C64F93C021030
          9061F4C2988797079520F09208034DCE936401E91A7531F1C6480337388F9C0B
          9E8EC9F79BFA3ABBDF275E2058E3D30441EC33FC45395FF4788C915CEF19F214
          70AF0EBF37B52F5DA72953752DA871268F8D59B393B230896BE04C1B3F61B45F
          EF59B374ACD456CB444A857F763644358E277CB3F90C036F843BE7D21BEA7871
          C1E2FEC678E5556753FFDC6C5049782AF0E8F5BDB84FD3F2E7B99B71094F4AC1
          B524BDB41A6C1306ADFC082D970816083C04B0D3A6032449C8646EC030503468
          12A0D48D36874897243351B6450DA5782F7C40B36E473C77A3997CFFE6CB9566
          8106F39F73F5C3A9670E9F4F9BA9DFD12099A1C101F031EE031C22CD5CC4F827
          79E9332DA25FC28507771C0D447E0F6D1997ABB9F3547902571DCE4B8372924A
          D624388A7B9606C002A27994D22EB5396051A701B258DCE37C00DB4879876B16
          60C38EA64E26E76BE2BE83DB913B9103609A9498A470CD01C019EC5EB22675C3
          F292D8DA0F033B0677004EB8256501281B15E5BEBD72C38AC4263CC7F2CF7502
          CCB89EE12D904BCC13FD9A167B6402A0444E802A7D3065CA349FE072C97E380F
          F529DE01EE7BAAFD73DCBC8E80916C55DC70ADA23FE2F87C0277F09BEDDF63A2
          F4BC016932F638D76C704A0070CE67599322D76BDE1CED0B9C555FE285425F73
          917D325CA8BED664CDFD8CB71635D6B2FD984D021F008B97409C47846F67834C
          C28D2EAA5244F419400BC0863B17632571DF4AB2609534C5603E4C9482EB6A00
          9C253984225DB152C6100C163C09302BF4334437A0DA260EF6D9CFFFFAABF937
          51FE402EFC0654B9D0CFD6DD26F1B7956FAA5CC8D5E4D74AB968189606506CEA
          253ED263F4C73463D322FB5DC40733F1AB64727086CE86A9BF6B9C6861C86BBA
          ADFBF2A664CE4B722400984B300D331230E7587FBA7D612AB96CA6F900D9F09B
          CDF3EF2CECEC1C53F612D91C63F8E5E6BD0E96B9C879A4FBC926C10E261BEF45
          76ACEC55F3CF52D69A0F02FE76942461333F0E260C26ACD48F3473BF145EFBA4
          CF16F5514D6A76C5B178FFA6C0CCF392E5954DEF9974C5E03EABA9EB2DA7E135
          56DDD7D82FB21AF74F7A2D497616FA577AE1FC7CE2BCD2F77C128C0B1BF7C962
          0657F65CD8245BAE3C564959225392319ABF4D29B82E4BAFAD82EFFC155CD3A0
          80141CB84F69BED8CD25500A100C5048EFBD4C1ABAFC53C91F40F9AF0B912B1D
          997133A72FA994247ECBE23819243180F44A0B4A3F3EDECAE052E610D2811D00
          CBB9C150619029962760926097486C3A10F93059A2270112F1970C525A008083
          340116292EF96BB13CDF53CE393EBF57324103D9008274C2F289259D60169D3D
          F2FA689199A588FE732DA3F8BF458021D3FFD96FC69E5C5A0088BCD3B080D29F
          C9F9F8B947BFFAF927C523B3412609D02D8FBF6415C2EFE7824222AE21BD16C9
          6F454BA3EDE2A7F3FB2E7B0161BB712259F0659B25FC45F8309B14799FFFCDD3
          2E05D7BFD9812BEBEB45822BCB28818A874D3A844812D07F3978F11B2D1D54E9
          20F171B684BFFC193D7F535F2E079064018561A1DF4B80131196F0541D0C189B
          92149EA23A26B09BB9F1F3074EEE47D3090440F026F6949E674C26BE298396C8
          21FFEDF84BBEFBE7428E25CB5C7364CFB7CD159E8355234BE86013A922BBB314
          5C1DD8132460C99A30BCB49803AFF29691F97D9965A6450DE6608FF118DB6441
          C00F2B03C2F9EC3F0E71515CC9806B3A61790E09E424AE07E0B448DFF12266C5
          BF32D6C883C0B1648F75C9F70EC7C08DA0EB915E3C7ED327483E4279F1A7E924
          999EE7E2F659D42A2B77E9334FB2DFCF07D3BFF45DDAAFD9F32B6A9F257DAF14
          5C4BDA53AB78BB22C155BA14461DFE7C90E8460D90CD0DAE00D8145C17379717
          07AAC9E927FA68B0C76497C13492B7F1BD15C4EB85F44F62B5393CBD9CAB03E4
          290D58F2C30A5960B1E0AABD43C33178CC97B143A1B4D37582C4C7CC8B398343
          48596B21E006AB27AC953E4A8C61AE3F6AB2497E9BA560721C804CD22F840CE7
          81AB7F900157C0544BD42CB8FAB2363B576406A91F5E091969D2C725DFBEA8FD
          66BB32F697E46EA01F388F14E0F43CFA2B5612C9B50BC02C64912507D0F8C5A2
          1E31062571FACCBBCCB25C15BF7B533CE5B5EADDEAB812FD3B66CA244475D1BF
          2C30F23C2B4DC4674BAB952EED755AD2D9F25929B816D743ABC9E77F01576720
          422D5A065467A7CF7363DD6FD224B6DA7545C06529077B611764185D308E9C61
          2CCB7E744C0B0486327A75ACD5DA1A55686C63C62BB7A70E14B344806B329233
          2D8F3EF132D15975AEE37FB5AEF52B59B97A1DED8709E9FB30534E2F0569C0C1
          CFDB0723C89920FB42E53BF0BF8474FA0400D8FB5680653A5F245E0BE8BB4966
          83428D3A62DD935D3BE0A780EB09C8D2FD0633CAAFB914FD571453CAD7F58A5A
          AAC67BF90C367B6B66F5EC9CE49B9BBCD2E34D25165F0548C7E65D563A4CCACE
          1A1733F366197772C9926B9D3547C6EBFC79B2F035D74A577FCE34EB5E577EB0
          551AD91F53148A4B3FA64B1A3057FE0E3A16EEEBF4BE4827BC92CA1345F5D1E2
          FADD6F09F5517C277FBB6CFF2ECBF352705D965E5B05DFF12002BF1BB08A0FB7
          9FDE7FDA0A0ACA5B41D9EA8A9E29AB627D55AC62D5063660DA6C1BEF37696EFC
          A76B2F92A7242890189B5866EB0E062CD0DAD85E96769B3BC4FE7BEF355650A1
          AE1D75C55D09B3F06D939BDDD94EC8017AE11673FFA904921296C1F693349066
          58AF1A9DAC49412B1B3C61B60692435DF2DBDE1254F33C2BBE93845961C8C0E8
          94632F78014CFED17A35A86005753BDBD7DAB5F705A49663E0AB2E19043383B1
          32F968FFB37FB083B6EF6465CB55B28232B5AD408F441B5555AB59BE86BDFBCD
          EFFC9AF620564502974C429C3836B703A5833CE17BEA9559A3AD7D93FA56AD4A
          43936798FA36399E643620F10CE0C5396ABF0B46D823F75DAF3EAD995EC3641B
          F902A8C9CDC8C592445BCE47B85C0E16FAC9418D634D6410FEDC58E82D5F57E7
          A033AB0CFA63DE386F94C32E28505F96A9E1BF9C0827EC6C863D75FB39565B35
          D34EFFD78DA66E76A8E33307CFF9E92C92D1379948B0FD0738FB84180982D0BA
          61CC7EE49CAF92CECC1965EBD4EC662D0ADADA3079440C9F374541069DAD46F9
          FA3633057907F34CF219EFFBD438E9D735FA99ED758EDCEB09B74DEF2BBF3F63
          02A4AF0A85A8B4F7B4C1747BE9EE4BAD96EE83332EBDDEC70CE0EE2B33EF8BF4
          9CD36924A7DDA77ABD7F9E1E0A575BE98792EF65FE4AC1F52F5DB27ABEE14104
          1C1A4C75C237B64E93B202D69AB6C57E27FB010F1934C6D66CD6DE7E9F044364
          4666F6D705CFD8951CF6C4DA162CE436D2E7F8C3028EBA5164D4F765B7CDFDDD
          9EBFE3222BA852CF8EB8F26EC3F3D0071EA9D9708B02AFF432F25E2516DEE4A6
          4EC022015F39FCE82726DA7A75BA0A5C5BD8EF13679B08273BD20689CFA0B340
          6DCB21C224FD8625135108B568A9A096D88E4DFBC3BA34AC6905B53ADA771C94
          236A22E6F2C0CB000AFF190E028639F32B3B62C7765650BE92DDF7D49B9E458B
          DFF8C70E3B594501CC4997DD9E0E0CED14A6AB1DF900F431C6444696AD04F338
          4B5FD132092D105049AA006FA6F34132C3A4843601137902EBF000EDA1F6D47D
          575941C5DA7E6DF84EB244973BDB3C86B5FA4300E0B8AECF30FCF9040428F026
          939A5E264A36008B51289D40384FAFE0EB57C966A744D001C7A5007DEEF49CBE
          1A655FBEFDB84FCA675D70B5EDBAD39E9AF4E45BECDF64329A602FDE7D9ED510
          E09C73F9AD36525FE57C7DF6F38B9A1C0BC718F321328A2FE39D2E17F65368EB
          C9E4C2F9312D8DD36266A4AD5D7B6D6B56D0C186C8754ADEC239ADC8EF29BF0F
          E99F4444F2FBC98F4F002B1F63FF6D7DEE79D1F1CBE53E4F67FEF95C17FACEFB
          17A2A03B6EA18B482EE5D0EF53D3FBD7168EB7E76E39C7D6D0B99E76F1F53A32
          7DA69666EBF07BDA2714EE513D49F2A8F106D24621B34EC6422227E5FF9582EB
          5FBA64F57C0370754D4C17F7B7B7EEF29BA2A07A7BFB5674700E6E315C7767A2
          0CFC0976F96907F820A958B68C065375FB7DAC0F732D0167DBDE3B6C659BF4EC
          60F7DC72A597A72E57BEB295119872A31CBE7D6F6BC4BE6915D61020B4B07B9F
          795B4039CA0EDDA6871D71F4297AAF956DB4EF09BE84331B6BE71DBD8FD5D4F6
          1554B9B3A04C051B3A9601215FD8E96229B514A259A6990D9A3C5D4C48DBEBBD
          B51BD756CD2DD5CAAAD2CDDEFB5499AFB417CF33E483827FDCA8536C9D46AAA5
          C539A85D76EAC9D6A16507816B67FB054AC524336D8855D667D4EFAA58A5AEBD
          F5F590946D25BBF2BF793FDBA162AE0565CBDADD4FBCE003EDCFE913AD7DC3A6
          3AC76A76D37FDFB11D77DEC1FA746F67271F75988EBFBC6DB4CF3FFD98ECCF91
          76F9C9BB793F562853CBCA576B663F4CFC9369438737D87A34AC66656A74B041
          1C8F00B28B427D6B1594D13195B772E5AAD93BDFFEA27717DAC13BAC65F5BC4F
          B5D2A8D8CE6E7BEC9D64D2983FD12E3E657FABAD72D1DE77BA4E956B76575FC8
          48A9A9E882B30E75865D51C759A152737BBDDF1067FF09003079A8D7A60EB7EE
          75F84D7DBF5C152BA8DCC65EFD62981F7FCECC4967CC15C0CDFEDDAE3CE3504D
          9C8DADEF5783ECC2E30FB33B9F7ECFFBCC668FB703B7EEE64C8EFEF663AD523B
          E987E9E3ADF71A95BD1F9CF1566C66EF7D37CAA6E087ABDED8B05B4B7BE0DF57
          FAB1D2A765AA37B797FB0D4FF6FBA7D8EAB401C9F19517685F70A1755D6303F5
          474BFB63F2084DF133AC5BAD0ED6B26C5301DC246BD5A8991DBAE31E76E9C9C7
          24DF519F74E9B5B14D52E6ACB6CD743F96AD6D773EF34D72BF2C141C4EFFDDBA
          34AA936C2BC65DA6663D9BE2003DCE8ED8BEBBA2023BD8CDB7DFA1D58A8EBB6C
          1D2BA8D1CEDEFD72A01DB9E33A7ECF72EF1414D4D0678DEC86A7FB26E73B6FA4
          5D72CA5E1A1BE5F5790DAB54A5B90DD0C924F7E870BBF2A43DD273AD692F7F3E
          BCF07AC43D973E96826B5E87ACAE2F739AEBFC69F6C61D67F960DD62EFD36DA8
          0FA274560594C40C0EDFA65702ACE90D5750B68A95AFD1DC7E9BA8DA439A75FF
          B1FD165617504D6FF8E406AB60C3662EB083B65DBB105CCBE966AED0D2EE7EFC
          25DD7083EDE8ED056E65EB6A70B5B10D763F42BF3AD5F6D9A1A755D7F7195894
          AA2E904451ADBA06CE846172F89F66BD6B75B196054D6DD8F8511A8653AD4DE3
          1A7E5397D1202C2868A2E3EA6ABFE88E86BFF9DCEF7E987A63E1443F46CEA142
          99B27E3EE51920757ADACF026F9B33DA7A352CB02A1A5095FCF8B5ECAFD3C5BE
          1759816D61F072809DF5931DBA6D272B5745C053AEBA5514903110CB695FD56A
          35B1DF26CFB13D76DCDA8FDFFBA35C05DB6CFF436D8280639FDD3670B061FBAA
          1A68650A242BD4ED6803266A9298F287F56E2849A6760FFB59B467E19C617E8C
          9574FED50B2A5AC5F2B534F935B5DF264CB743B65FDB1AFAF19713C034B7075F
          E8EB6CFCE0EDD7CB4D1E94942E2B89A7A0A0BE4067A4BDFBC5CB5659EF25C7AA
          DFA9DCD6014B50954835B0A75902BDC655BD9F1270A9AAEF37B482DA9DECC7F1
          0A28804F29AA2CA17F4C463F59D74605D661EDAD6CAC5EF6EFFB9C6DB0D7F136
          CA816A861DB6DD5AC97DA33E659281ED4FD5F7BAAFA932E7E96F9429AF7E2C5B
          DF0A6AB6B6415366A8AF67F9BD18F74015AE918EB7519F3D6D882B3F23ED906D
          3AA6130B137D055D7F9553AFD0C6068C1F64930482EBD6ED2E99A0A18D5C30CC
          3A29D497F3E17A705F5628CF39E9DAAA5FCBEBDA1594D1EFD75ADB7E816A6AC2
          5FBB81E49DF43E29CB716B8219CAC268E6203B7A3B4DAABC57967B4DE753C0BE
          9A5A87AE5BD801DB74F73E8B49ADA05C7DBB5313ED240DA6FD76DAC46AB3CFB2
          E57CA22C5FA06B2992D07FD20CFBF593C7ACB13EAB427F5768682F7E352A95CE
          5239210320A5E0BABAA269DE7125E00A339D2E703DC76FC06DF63DDE071B5A6A
          921F7A8E4DF9E55D6B5B4703B2EA9ACEA800DEB933C73A48DDF3CCCB1A2C6687
          6EBD9135D0EBF32FBBC18168EC2F9F598B9AE5AD3FEBF60563ECE9DB2ED64D5A
          DB4EBEEE119BEC0359A364D60F02A98EF69FFF7E90CCEEFA9B34F0436B565DBF
          55A3810D9C98A8910BA78FF3017AD70B4FDA2851ACB51B6C64AD3598A68CFBDD
          DEFBEA45672FDBECBEB72F13CF3BF538BFF9FFF3CC3B3EC07D59B840BC70BE8A
          E0FDDACF6A566B6EC32728FC12D89D3ECCBA376EE0E0CA717EFDEE93CEDE93CC
          9AD35528518CBA4253BBF985AF7D3F2909D64E7FB2C305AE095888B99411C069
          A0765F77731B3B9DC5DC7C3B74BB8D1C441F78F2F9747F539552F01BAB51BBB1
          55AAD1CC868FD3318965755596AC82F20DEDAEA7DFD2C90FB7B5D7101856EC64
          03D5CFDF7DF1BC6DB3E74EC9325A4BDA534F3C499F35B1DB9F7953E733DC5EBE
          EB5F1AE49593A5E702458B0DF8D85AABEFCAD75C537D9738AFFD397BB2F56C5C
          C71E79E2697BFB93CF1CECC9C730593B858DD1EF7C7F362B14EDF3BBB79FB432
          3A9FEDF738D027134EFAFC534FD12450DEEE78FAED74D0274B5B8543D9900F1F
          F4EB7EDE4597259F89F516546B6BCF7CAF24E7BC96CC810EC96AE18CCB6F72E6
          F9E5472FE837CAD8AEFA0DF78AD0DAFAFCB34EF3EB76D77F5FF5FB897BF1828B
          AF73296542FF4FAD790D26C1AE365033E6F89F3EB40EB50A044CAA32A1DE9EA7
          E8A75EB5D6B2C6655BD8A019CA53AB33EAA149B195265A6502B6CECD1AFAEFDF
          FDE47FBD2FCF3DF11F0EDC05BA0E83C6CEB66E2D740D2AB5B057BFFCC37EFEF8
          2507F63DF6D8239D986778C1CCDB1FD3F59931D80EDBB6BB33DD53AFBC4B5D33
          C746FCF69335ACD4DAEA556AA73D4FB0A7EEBDC02AEB3C4EBBF4269BE0FD37C3
          46F7FFD21AD76862952BAC992CF5B53AEAD4487294AEE52DBAEEDFBDF7A44F34
          E49618A5092A5921C46A2B1D18E94329B82EDA1FABED2B075744CA791A5E337E
          B74E6B6A362F5FD336D9FB9FC90A71E202EBD3B6A3BDFBD40D564B005620A63A
          58579EA5E17CB13C58C0DD4F3DE737ECE1DB6D6B0D05366F7FF55B0226D37EB5
          9EF50BC476188413ECA53B2EF5D9FE942BEF4B3EE7EE99F5BD1DB253177BE147
          C5DAF39E40FE8F0F1EB0FACCE2351ADB20AD5701B599B3273893BCF7C5876DA2
          0C545D6BAF2B706D6ED3460DB4CFBE7A49A05D603BED7D702293219965404381
          AB097C2C1CAE41FAA1D5D4B274D084B189FC306B84756E20C654AB8FFDA651FF
          EDBB4FF9A0066CF8D61C09712CD727ABB979C825141DF8ACFE76A0A48E820AF5
          ED8667BF48F45137BD29A473211467B29DB0FD9662EBE5242BFC9A2C65F5FECF
          EFBFE46CB546D5FA366CACF63A6DB81BB00A2A37B31B1F7B43A36AA440A2A296
          C05D758C663FBEF3B46DA541EE130FE7A6C612DE250401E18B7749C72E5F313D
          DE85F6F3878F3AE32A5BB5A10DD649C8EB54B1F563ADBB327E3DFEC8D3DE2F89
          C1719E40E0769F108EBDF476D7065D165830D8FABDF7A8952D5FCEB6D9ED0007
          4B075834653DF2BB49AC00273C41E1BF83AC65ABC6922BCAE95E28EF936DB2EC
          AE67EDD7DED546D2553A8667EFBAD8EAE8FD732FBFD6F7F1ED27EFE837EAD876
          BB1E92AC90524323FA65B24298E54CEEFD6F06DA5466B449BF5B8F7A628A757B
          F9FDC404DCAA4A81FDA22E9CA9A39C376BBA755B633DAB57BE95FD36F577F5F7
          38EB21E6DA548C72C2BCB1F208E964F525230D9EB240BFBFD09EB9F36CBFCEA7
          5C76ABF72D124B410DC055B981DF7FCE5759DC4F898C939CFF2C1E670FD08AA1
          9715546D61AFF41BAD5F967E3B63BCAD5D731DE9BD5DB5EFE9F6FCBD6738389F
          75F135C9751798F6FBE04D67AB9565CF70531ED75D292E915B6E7EFC7DED5F23
          62FE08FDD604BBE7A107ECB86B1FF1FBADA88AB0A5E0EA9DBAFAFFE5640184FE
          B963ECBFF7DF20A0828D55B372652ABA8659BFCA1A3675D40FB60B605286A594
          96935A5AC280BAF65CDFC691D843007DC056DB88F555B40FBEFD3D01CA29BFDA
          5ACDAADAAF30D7F993EDA5BBAED03EF144104B28D3C49E78FA65FDE6403B60C7
          EEF6E2B7E331BFE80F83D8403B6CC7DE3E580BF4FB05E5B5ECD3EFADBD4E1F1B
          336BA44D1113EBD5706D1F385395D065FAACE19E9E0F66C5F6E5CA34762DF10F
          1955128301E8C0DE7520B26AC3600A2A245A1D6CD835BD1ABD6C40BA24ECD50C
          8BB7D863B98AAEF596ADD5D27E9FB0C0ADCE2E09C0B8A7FD62FFD87963B19D46
          76DDD39F26C02480488C664C1D93ECC82D36D32451DEDEE93730055706D50479
          196C91D3F212E9A4AC35EBB39D8DE760270DB60D603435BBD8CF2C1F668F4B96
          A0921ECAF832560053BBAD0DD5F2DCE68EB6E7EFBE42EF713EF5EDBE479FD6C9
          8E547FAEADA56EE564A98B2CC0B96AD93C7BDA2C7BF0DEBB7C42A4315995295B
          C94EBEE26E29DC29B8A2654A8A682DC02F27D9A44C391938FD771B5AF9AA5AB2
          8BF1274636CE73B87DFDA5560DBA5FB6DB239DD83C547486B56DD4DAAA566E60
          6FF51BE03DFFCC7D573B8B77862F3969E6D449D6B2511BDD43F2B2F06539C758
          D32AD458D3864C1E2303DA445B5313D3875FFF92B06169EADD1B6A8550BDB3FD
          0A62CD1B2140EC91DC4B95B8A72AE83AD6B7BAE51AD9501929A7FE39CE3AC948
          D95C603BE3CF99D2637BDA9A65DBDBE0712A0A28B07BFEDE7FF9F19C7AC98D0E
          F6FB6F0FB836B737BE51E29E69236DAD86BAF69CB7182AF75539AD0E46D0E7B3
          FFB07F6CA77150694D7BF3DB513E412F9C31D1D6AAB996352BDB45FB9A63CFDD
          73BE9303FF7EF97AF6C8E3FFF5DC117BEFB09DCB4D100126A18A1A4B2D7A6C63
          63D5958FDF77AB1F8FEBCFDAE6B0CBEE4F565C45F8E29682EBEA8FAB7E849EB8
          C59F61D585DD4DB4CF3E7AC3C1D3B53631AAF73F1FE0B3ED8285936D0F0103E0
          E40353A0008CE0674A428C8374F3B0D4FAB85FFFE4C6983ED23A36A96B83C763
          64D12D3C7BB49871431F500532E2BCFFF9F76E20D867FBF5EDBD6F46244B5877
          B79AACC133C9F6DF615BFF1DD75CCB9677C0C6D0316FCE04197DBA59C3724D6D
          ECF8713A326EFA4962021A68721DF3412ADD132070B6E9D6DF70A39A63DD1A89
          297213EB26BFE4BC336CD79DF71073ED2400E5A0954065DA30D737CBEBFCD85F
          59F9D40E9E94F8D2C24CFD6FF6503B68C70DB58F9A76CB936FA73EB63057383D
          BF3ADDFEB1F926564FE0FCFE37BFA4320827A0B39C3342E7B64E0228156BD936
          7B1D925ACF758C937EB40D9AE81CAAB692912B61CFED9A36F47E40CF2D409FAD
          DECE8668C9EF139196C01D1A3772907FFFEB9F13ABF35CF5E98EDBA6BA32D7B1
          ACEDB0E7E13E297CF9E1EB099879AB6D5BED798C5F43FA36F10BC00B8155CC18
          EB2C2981E5AD1B9B04AE65F5BBE8EB390D5B5E00E79C7CB033E7BB1E7B3159C6
          BA86B3C02E3DE9089F40CEBCF4DA649532678C756AAA091B50A956C757044258
          19EBEA5879D72FE9EBBA6EB41AA4443868F8F575CD3FF9F2BBE4B8742FB56F58
          DBCAD66863BF8FE7DC05D9B386257D52A1AA9D72E115B6E796BB59830AD56CB4
          74EB2973C65BE7461DAD51D986366BCE4C7984F4149B6C2EBF68041BB347EEBC
          DCF5CD332EB9C9AFEB013B6CA03E6F20C01CA4E34FEED5D6CABD8A3E9A4C80E5
          6DD8045DBBD963ECC01D37D1B86868EF7C33C83D1A168AB976AFDF45D7BA99FA
          51F7C74C493D8D6AF87D5EAE6243FB58D7DFFB4C13C65E3B73CF301954B31DF6
          3A34BDE7CDFA7DFAA64FF209EBAF90AC24721A5472CBC55F29B82EDA1FABEDAB
          70C54A00368D805A98D8D9B90999D5611E09F00934187873F5B9322C81CA7C9E
          733371B79C24CE3FB931F42D0AFEF9BEF90CDD93F7B006A7DFC33A2FE3C64CDE
          D67B097801F4DA420C15B0F06A99C9D125473247C7C0DDAA9630536D8FD55A46
          16CF70A5F7C2ADCB594FBA9E763F470635EE5F2E186A17947BF6B34D96FE2CF3
          FC156BE134A987BFA38D62F9EAD2C002904F2E53E971F1C8B09DA530CCC48353
          07E769F016FA71BBAFA3333E7C7034746088DA86DF74C6CE5A7BBED07DEACFB2
          526B52ABD3DEBE57373B306134F268323D4D97CDD3FC82F19DA44F6732A6D9D4
          CF8AEDF53EDFD35A9EF7128B349D36DD5DE63827AE32BFEFE085EE99A8DB9A87
          C802A64FE68B224A6FF7D800ED1FED33E73A048A12DDA6EBC3F7DD452A65F62E
          3DD03FBA57F80CC6EFC11F7FB2BD14C7F41A998A4FDA5C04182DEB390EBD4FB0
          0AC7EAD74D1BA647E4920AC6BAB8B649B4958E513E62C9049F9E08D9C5F46A8E
          D8B3EF34F53A8B1BA8308083DFD576F15B0BA6F875E27E4E7C4BB92FF5C86448
          0E0A5757D91F465165814BAF43F22EEE594927785FFA04C7FDE8DD6933E83BEF
          637E73B29F13D78A63769D9B89DFFB92DF4C5CBEB8367E2D5D7E59F4AF145CFF
          D225ABE71B1144900CCA1414F4E89555C5461D50FCC688E62A5C3218D578858F
          AABB6BB9F77302B5FE47DE55BD4DB44EF2394BC6E439BFE7C1072C2F130756FF
          CC235BDC619337E4AFE91E8B09DBC81D4CEA6CEE9AA85AA16F2C4786CAC8F664
          D24A006D21F951DD1F3249499764710298F836835D656DD2FDE07AEF00EB0708
          40E27F1827948A9EDE17208EB64BB2BC6893246B57E2F89DA24C64CFA2C7387D
          9F37D2DFD6B6B30504B9894716EADFDE78D475406482267D76B53F1864748DFB
          66267D4917FAA179FF25E7459F07E8F0E80E7469DE048220BC1FFC20357095D6
          300E0F30617B2AEB26D73449BFE83910C41CDDA7D98131ED7B7E9B905E9F2592
          49D0EF93C22B94F355F51DF944925E572AE6EA3C1600D6F4546EBFC954E4C798
          82914FCEF42497C8BFAE9DB85F70E253CA4442C49B5F7D3E4ABF9FF8DD720594
          23D7C137C1AD387FFF49BF08DC03689C78F7C6E54D7C5FDD5F99BE4A2FF5FC99
          A980EFF7091FB0DF644266BFB3D547F30985667B47509E30B9E1879BBCE47813
          DD3FF931F7B648FB8CF34C64ABF4ABDCAB7A39490D43DD7C5874DE5F29B8FEA5
          4B56CF371657FD75F53CDAD2A32AED81D21E2805D7FF917BA0145CFF472E54E9
          6196F640DA03A5E0FA3F722B9482EBFFC8852A3DCCD21E2805D7D27BA0B4074A
          7BA0B407565C0FFC3FBAC7AA3252BEE1970000000049454E44AE426082}
        mmHeight = 20638
        mmLeft = 7938
        mmTop = 3969
        mmWidth = 50271
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppLine32: TppLine
        UserName = 'Line32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'cod_chamado'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 1588
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'cod_cliente'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 17198
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'cod_usuario_resp'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 33602
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'cod_usuario_abriu'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 47361
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'desc_status'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3006
        mmLeft = 57944
        mmTop = 0
        mmWidth = 39688
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'desc_categoria'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 98690
        mmTop = 0
        mmWidth = 38894
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'origem_chamado'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 139171
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'nivel_prioridade'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 155311
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'data_chamado'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3006
        mmLeft = 179917
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'hora_chamado'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'h:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 200025
        mmTop = 0
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'data_final'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 212461
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'hora_final'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'h:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 233363
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'prazo_fim_chamdo'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 246592
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'tempo_gasto'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 267759
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 3969
        mmWidth = 284428
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 282840
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel29: TppLabel
        OnPrint = ppLabel29Print
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label29'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3006
        mmLeft = 168275
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 23283
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 284428
        BandType = 8
      end
      object ppLabel23: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Tempo Gasto: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 212725
        mmTop = 1058
        mmWidth = 36513
        BandType = 8
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'tempo_gasto'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 254530
        mmTop = 1058
        mmWidth = 24606
        BandType = 8
      end
      object ppLine3: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 6085
        mmWidth = 284428
        BandType = 8
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 1588
        BandType = 8
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 282840
        mmTop = 0
        mmWidth = 1588
        BandType = 8
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 207698
        mmTop = 0
        mmWidth = 1588
        BandType = 8
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 252413
        mmTop = 0
        mmWidth = 1588
        BandType = 8
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = cl3DLight
        mmHeight = 4763
        mmLeft = 0
        mmTop = 6085
        mmWidth = 284428
        BandType = 8
      end
      object ppLabel17: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CPA - Controle de Projetos e Atendimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 6615
        mmWidth = 67998
        BandType = 8
      end
    end
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 544
    Top = 240
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 41540
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 29898
        mmLeft = 265
        mmTop = 1058
        mmWidth = 284163
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cham.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 3175
        mmTop = 31485
        mmWidth = 9737
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 15610
        mmTop = 31485
        mmWidth = 10626
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 82286
        mmTop = 31485
        mmWidth = 9737
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt.Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 203730
        mmTop = 31485
        mmWidth = 12573
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt.Fim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 229130
        mmTop = 31485
        mmWidth = 9906
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tempo(Hr)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 267092
        mmTop = 31485
        mmWidth = 15833
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 127529
        mmTop = 31485
        mmWidth = 14690
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Origem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 180711
        mmTop = 31485
        mmWidth = 11134
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 265
        mmTop = 41275
        mmWidth = 284163
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt.Prazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 249238
        mmTop = 31485
        mmWidth = 12912
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Solicitante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 3175
        mmTop = 36777
        mmWidth = 16129
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Solicita'#231#227'o do Chamado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 34396
        mmTop = 36777
        mmWidth = 37042
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 529
        mmTop = 30692
        mmWidth = 283898
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 262404
        mmTop = 23283
        mmWidth = 16002
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label36'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 136261
        mmTop = 20638
        mmWidth = 13081
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label34'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 150019
        mmTop = 14817
        mmWidth = 13081
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'at'#233
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 140494
        mmTop = 14817
        mmWidth = 5080
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label33'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 120121
        mmTop = 14817
        mmWidth = 13081
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Chamados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 114300
        mmTop = 7938
        mmWidth = 58738
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10583
        mmLeft = 265
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 10583
        mmLeft = 282576
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 265
        mmTop = 35719
        mmWidth = 283898
        BandType = 0
      end
      object ppLine36: TppLine
        UserName = 'Line36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 14023
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine39: TppLine
        UserName = 'Line39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 81227
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine40: TppLine
        UserName = 'Line40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 126207
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 176477
        mmTop = 30956
        mmWidth = 1852
        BandType = 0
      end
      object ppLine44: TppLine
        UserName = 'Line44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 198702
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine46: TppLine
        UserName = 'Line46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 221986
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine48: TppLine
        UserName = 'Line48'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 246063
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine49: TppLine
        UserName = 'Line49'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 265642
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine50: TppLine
        UserName = 'Line50'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 30692
        mmTop = 35983
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 273051
        mmTop = 2646
        mmWidth = 5556
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 279401
        mmTop = 2646
        mmWidth = 1323
        BandType = 0
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000157
          000000850806000000EFB0BB88000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
          00BDE649444154785EED9D05981D55D6B53BEE4A94B8BB1120B8BBBB0F3EB8BB
          0EEE0383BB3B0CEE4E700F4E482021EEEECAFED7BBABF6EDCAA593EE84D8FC5F
          F793936B75EB569DAAB3CE3A6B5B8195FEADB41E9832658A95A4ADB4032AFDA1
          D21E28ED8115D603052B6CCFA53BFE4B0F940458D9A6F4AFB4074A7BE07FBF07
          4AC175255EC352705D899D5DFA53A53DB08A7BA0145C57E2052829B816B5DD84
          B1BFFEAD239DAF6F2FFCD36CC102FDF737FEFEFCF34F8BB670E142A32D58B0C0
          DBBC79F36CF6ECD93667CE1C7F9F3F1EE7CE9DEBEFF1C836F3E7CFF7EDE3FB4B
          3A9CF8ADD826BEC76B3E8BDFE679517F711C712CFC3EC7C171F25D8E85C676B1
          8FEC39AEACE71C53F44FF65CB2E7C87172FC348EBDA863FB1B97B6C45F9D3973
          BACD9A3543C7C175F63B4BC7C23DC0B59DEB8DE77CC6FB4BD70AEFAFECF965AF
          7FF4535C5BB68BFB307BDFD15FABF2AF145C5762EFAF2A70D5AD6FDC668E3F09
          E695F82F803006F57C0DA839B3671A8F73E7CCD24E05921A48BE633D4F7E40A0
          CBE04A1BDBFEC9406320B28D5A7C9F7DC5F6BCCF360B3438633FF11EDBCFD680
          E6FD590C6E359EF3FD797367FBF7F83D8E89C673067500008FB4DC7EF5DDB9FA
          5E8001DBF23C4022B6E33520410BD000388A6A457D1EDFCD825051FBF6BE04A4
          D23E5AE43C02C0D2BEA17F3867EF9B4C9F734CEC63C68C69B9C92D26A198C8F2
          27A1A200ACD89B837ED5EFFB31A4D73DAEA31FBFDEE37A718D788CFB20EE81C5
          3D66EF99FCE74C26FC711FC639716F02B4714E3366CCC84DF27CC604BA2AFF4A
          C17525F6FEAA0257C754FDE7E09A12BC7CD64337C4AC1F377230826C1731E819
          DC00DDD429937C008D183ED4860E196C837E1F68DF7FD7CF06FCFA8BFDF8C377
          F66DBFAFEDA71FBFB75F7EFED1BEFBF61B7FAFFF2F3FD9EFBF0DB0D1A346D884
          F1636DD2C4F13990CC816C3A381984EC3F0BB6E3C68EB66143FFC8FD16FBA7B1
          FF2F3EFFD43EFBF4633F86C1837E4BC02705758E7BC6F4A90E0853264FF46366
          DB7EDF7C65BFF6FFD98F29F6C57172CC1C2BEFFDFCD30FBE0D8FBCB7B8C679B3
          5DB4D82EBBAFD81FEF4563BF3CE791F388F3E1F56F037FF53672C4303FE65123
          87DBB4A993BDEFE917C02BFA8DD78092831AD7888987892D65F5713D17C7F24B
          3E149209943653403E76CC28EFF3689CCBC001FDBD1F781E7D973DE7A29E2FA9
          6FE913F613D7887BEB87EFBFB5F1E3C6789F70DE31F9C63D9ADC37ABEEAF145C
          5762DFAF0A7075A208B082AB3C26042037FB6797DDB1348E25161BB19CCF3286
          60898029C0F4DEBB6FDB3D77DF69D7FFFB5ABBF082F3EC88C30FB5BDF7DAC3B6
          DE6A0BDB78A30D6CD34D36B20DD6EF635B6CBEA9EDB0FDB6B6FF7EFBD849271E
          6F8F3CFCA0BDFACA4BF6EE3B6FF9200D8613837611F60ACB4C19E9A38F3C6497
          5F76891D78C07EB6ED365BD9669B6E6CEBF559C77AAFD5D3D65DA7B7FFC68927
          1C67D75C7DA50FBA2C93065C274F9A609F7FF6893DF7EC7FFD38FE71D001B6F3
          4E3BD89E7BEC66BBEEB293EDB5E7EEFE7CF7DD76B13D76DFD5DF8BE7BCCFE78B
          6B9C77F6B3EC7E78BEDBAE3BFB3EA3F11E8DD7F19C6D389E9D76DCDEFBEA9F47
          1E6E679E719A5D71F9A5DEC70F3E709F7DD0F73D9FC0989838A7608BD99541B0
          5807DE54BA89EB9B2FB504132CE950E0DAF05BB05526AAB7DF7AC34E39F9443F
          66AE09D7807E3860FF7D6D9FBDF7F4FB217B8E71AEF98FC5F52DFB601BAEC776
          DB6EEDD7E682F3CFF57B08B0E65C3936AE71AC044A7A4E2B62BB52705D11BDBA
          987DAE0A709D3787E52CC240C24C635915032ABB5C84B1CE9C3953CBCA193679
          F2E49C26CA601C376E9C0D1F3EDC2EBBE85F76FED967D9F65B6F659B6CB0BEF5
          E9BD96ADD5BD9BF5EED1DD5BDB962DAC51BD35AC41DD3AD6AE554BEBD2A1BD35
          69D8C05A376FE6AD4D8BE6D6B16D1BDB68BD3EB6D9461BDAA61B6E60FBEEB987
          9D7BE61976C72D37DB1FBF0DB4A91327681610E0CE9EE5CF674F9F669F7CD0D7
          AEBDF20A5BBB670FEBD5ADABB568B2A6EF9FC756CD9A7A6BBE66636BD6B891FF
          46E7F6EDECF5D75EC9B1D700F08913C6D9C30F3D60BBECBCA33559B391356BBA
          A6B568DED45AB76A614D9B34B6562D9B5BFB766DFCB16D9B56FEBC43FBB6BE0D
          AFD96E718DEFB46CD1CC1BDBF0BA79B326B9FD77EAD8DE3A77EAE0FB63BFD1DA
          B56D6D2D9B36F163EED1A5B39FC39A0DEAFBF9D1A7DD3A75F4473EE3718B4D36
          B69DB6DBD60E3E607F3BEFDC33EDB65B6F140BFF508CFA871CB03009220FCC41
          2249F56FAE79565B8E6B9F7DAF24C3212703A5CC15C0E39C393FFAB371A306B9
          D79C639BD62DBDEF785C525B52DFD267FC46F63A70BDD6EAD5C327EFC30E3DB8
          1050D17FD17D4B996B492EE7FF1FDBAC6C709D3F7781CD9D8D0144CBE3746065
          8D370CAA30928461079D0A809D3E7DBA8D1D3BD6FD723FFFFC737BE38D37EC89
          279EB05D76D8DE41B17E9DDA56B36A15AB56A9A2AD51ABA635AE5FCF41B46ECD
          1A56BD7225AB5DBD9A830480C7730097C6F7D81EF068B8465DDF1E600430F6DF
          7B2FBBEFAE3BEDCD575FB11FFA7D6383070EF0F6DE5B6FDA4DD7FFDB76D8666B
          AB53A3BA7FBF5EED5A56A34AE5DC7E78CD67FC566C73D595973B9B0930806DC1
          6AAEBBF66A07B91AD5AB5A83FA6B58DD3AB5AC56CDEAFE1A60E075CD1AD56C8D
          BAB56DCDC60D1D20D98ECF786F718DEFD5A95DD3BF5FBF5E5DDF8EFDD6AE55C3
          EAAD51C71A36A8E7FBE331F6C7EB460DEB5BD346FA1DF5158FF41193137D43E3
          7CE2DC38773E63A2EAD9B58B5607EB89F5EE6217FDEB3CAD206EF70905490419
          210C4DF9E019936C18F7E29E28F128CBC82DD3A74DB13EEBAEEDE7CD39471FD1
          079C7FF449F4C792FA6F499FD1877CCE35E2B7E277AA57ABE280DEAB67779708
          9029C20E9030FA55F757CA5C5762DFAF6C7075CF004963109739F3124B7D58F5
          63C0C5EBD059478C18E1607ACC31C7D88E3BEE68DDBB77B7366DDA58C3860DAD
          65CB960280860E6CED5BB74859625307B8260DEB3930B468D2C81B80993C5FD3
          D92CDF01806980078F802F0DD606B0F01E20C273BE0743851D37AE5FD7B769DD
          BC49EE37D9B66D4B98B018A5F6CF677C87E38BFDC28E6170A145B28C458FBCF6
          9AABAC439BD63E280178802A982FFBA2B568BEA61F67AD9A02E014CC1AD4AF93
          9C973E2BEA91F75A3615FBD523C7C53173EC4C2A4D1BD5F7DF818D366B9A9C37
          FB8165F33EDB463F3049D1071C1B7D088836AA57C7F7C3FE799FFDAFD920D96F
          93351BF8EFB46E05B35B5332496F974998445E7AF1791B360CA04DFEC24382E7
          3189CE9A35CB27D9F82B5E934D641A800C590236C92A804903D07376AEFE6502
          E13C61F03E493179886D2EEE91FD24FD9AFF483FF11B0DC4F65B791FD0879D3A
          B6D57EEB7BAB5EAD92A4A0CBEDA30FDFD3B1CDD0C207BD3531AEADAABF52705D
          893DBF32C175FEDC0458035C67CF9D63F317CA22BE5016F5F902592DBB67CD91
          B55CEFC16AF9FCA75F7EB6175F7EC9FE75F145D673AD5ED6424050512CB4B140
          AB0E035DCBB2666BC2B2D41AC354D51AADE1837CCD86751DD89A376960ED5A36
          B5A6FAAC59A37AD652E0B02600B386D8581D310E8104AF79CE366D004CEDAF79
          E306D64A83A64EF52AFE19AFF99CD6B85E6D6BDD6C4D6B2FF0E0FDE61A4C7CAF
          85065B1B004ACF79649B561A74FC26C7D2A7774F9DBF0C3CD3264B6298E16DEA
          C47176C3B55759A7B6AD049AB572BFCB7EF93EFB6AAB81DCA5631BAB5F5B6CA9
          7635AB57ABBA35D139B66CD628F98DE68D8B7C4CBEBFA6FF7EEB668D7D5F6B0A
          901BEA7778BF639B967E3E6D5B49C2D0EFD1979C337D42FFF01B756B544D3E53
          9FF03EE7BC56F72E56B75655EFF746F56BFBB9356E50C7AF01C744E3BC5B3465
          6269E0D7A3A1F687767BC9C5FFB2679F79DA860F1B62D3A64D5B441662824553
          CF4A454B725F0AADD697DCDC3B926D268F1FE780C804C4E44A43DE68DBBCB9AF
          645AAEC984974C96AD9A2413C8621FD57FDEBF453CD2A7ED5A6BF2D03976682D
          C9467DC87568DFA6B935AC57CBFBE5987F1E6AAFBEF4ACCD9949200EDE2AE11D
          B2120779E6A74AC17525F6FBCA02D72CB0220D2C9C2F7F5081A9BC01D3663655
          3A66802A60CBEBC38E38DC3A8B2555D752B49A186443B18EAED25379045C6B69
          69062038A00A4C19E03C32C8793F6E78C0AF53DB960E2C352A971770D44AC151
          1AA4067F3B314EC0AD7D2B699429F80264000CE0C200EB20665CBB5A65BDAEA2
          6D1A3A60F308A0B2FF0460013231EA4CCB7EDEA34B4707D43FE7010433A4DD4E
          B1E993C6DB0DD75CE9FB07E43916008EDF6C26A6D5424BF4B62DA47F8A21356D
          A8F3D43900EE8BFBBDEC6FB716E8456BAB7D761048B7D1F9D13AF9B936B44A65
          0BFC9CD61023E691FE295F506015CB145895F265AC7AA5F27E3C2DB42F009363
          0138AA542CE3FDDCA1AD560CEAEB96CD1AE87933FF1C2067DF4C664C783ED9A9
          C126D138D1329F7CE231FBFAEBAF73BEC12105C05E431EC2AD89BF2CD8668747
          0E5C05AC422E9B3B93C96A82AF3660E08068F78E1DAD7AC58A56BF562D6BD7A2
          85B5D76AA743AB56FE1C505D52E35E585CE3BA729E3CC6393391FB44A5470076
          8F5D77B0C71EBECF66CF98ACE39BA3154BEA2AB612C778F6A74AC1752576FCCA
          00570C58B405F3B47493DE3A639A7C520158F455B1B8057F268EE861BCE2F49F
          79E619BBE4924BAC51A346D6B469537F6CA1C1D0AC9996B1EDDA59E3C68D6D4D
          3190FA021F67AC02571A831C26D1BA85185BCB26CEB20004064134067CFDDAD5
          732C1440839155AD503665748083A4030111404783DDC1E20018400870633F01
          AA4D1AD4D5E762D21A68BC1F2D3E8FC74EED5ADB8431239DBD2E9C2BFFD79962
          6E6AF7DE71AB6DB7E566CE9261A5304CC09681CDEFC6BE01AC84092700CE3965
          7F2FFF39BF0B20678F35F6C167EC8BBED85C3AE989C71C69575F76915D73F9C5
          DE6EBCEE6A3BEFCCD3EC9003F6F5498789A64ECD2A3E81D1CF3CD2CFDDBBB4B7
          066BD474C0E51AC4B1D1173EB1A8CF429A41EF44FAC0108441680F79265C71C5
          65AEA787E1129085D1F2579C1C9073DF93C43465C2789B376BA633D8BD76DBD5
          258BD0D279DE5AF711AC1590E5B185EEA1E2C015B6BEB896BDB65C075E73FE71
          EF31C96FB85E6FBBF3B61B6DEEACA90EAE8934502A0BAC44885B753FB532C015
          500D700554E7CCD20D262757375C2DD0724EE01ACED523478EB4FEFDFBDB0517
          5C60BBEFBEBB952D5B56002A46288DB553A74E0EB475EAD4F106B8369716E64B
          5096C51AE8349EC7D2941B9E019EC8026BF863D70EB2BC0B5458EAD3BAB497F5
          5D400670F2D8A373075F2E03AA801BCFF9CC99A4061BEC148657AF563507127E
          03F0E27700417E270B68BC1F8083263B68C02F0200052A08604DE74FFBF0DDB7
          ECC273CE7490E737608A807EC8020DEAD410F0D7F4FDC09268FC5680FCE200D6
          07BCB68B6384B127D2888C567ACEFB75AA57B6DD76DCD6EEBCE53F3A8E37ADEF
          DBAFFB63BF2F3EB5B75F7BD91EBEEF6EDB67F75D6CD30DFA58B5CAE51C5499B8
          5812C764C67BB0355AF67C7D2270CD37595AA381622CC32007D0F694D167871D
          B6B3D75E7BCD060C18909B64274C9077460AAEDC1B59EF82A298AB1B089195A6
          09C4F478E3BFAF736D151D3CD1E35B599D6A3262D6ADEBF20040CB2300BBA4B6
          2470E53CB9CE71BEF42B133DF71F133CE0DAB15D4BBBE1BA2B75A975BD171064
          9106B7ACA2215FCA5C5762C7AF0C7065A20E292009862272CA3C1AA9309AC76C
          E2C489F6FCF3CFDB95575E69B56BCB2A2EF0C468554B4CA3AE0645FBF6EDDD80
          C52380DBB66D5BEBDAB5B30F721A033E9669B17CE63101C064E91FBA69B78EED
          DCE054A34A4537427516C09E7FF61976E2B14789F5EC2C230F4BCA442FACA665
          31CFD90680E820B0053030E8B0D4653F6E2C4A25822C6B65E001300032808891
          E7E7EFFB8961299A0B70554322183F7A848D1832C80ED8674FEB2D3D93A538C0
          0FB8D20041E480588A324900B6006330C4253DF2FB1C0740CB23DFE7380145B4
          D37F1EFE0FFBA8EFDBF6E77CB9490104D207D182912D00FFFE3F7E67CF3CF998
          F7553DC9252CF5E923981A1A304BE1EC35C84E3AF4B94B0A29C0D26F58D79106
          B0B8635DC7BA7FC3F5D7190119E11BBA70BEB477EE9525FC15FAC72E74FFD685
          D2E9FFC4502A067BD83F0E72B7BA8A65CB38B82205346D2043DB1A9228EAC950
          29B06DA6FB6B498DE38EE6FA7DA63101C644E89A3AE7E986D3355D3B8FC67DE5
          93E8FC52E6BA12A16DD5FFD4CA00571F2030D5B972C19A23676F07D7242C1547
          7D9CCF71A2C7791EF7956A552BBB0F224B472CB934FC2EB1F4A2D931205952F2
          DCDD87B444A7013E8069B2DC4D34CB609B0C1096D72C6F01882A92001878C71F
          7D947DF0EE3BEECB8A3164E6D42936638AF431B19FDF7FED6FAFBCF0BC1DB8EF
          3EB6E5A69BB80104AB388619F6C1200264DCD82180C5B80318BB512D65B0C112
          017DC0B59634DB375E7F59E72D6BB8DA9CD95A0E4F9D94D361A74F9E6043070D
          B4A38F3854C7B79E0F50066C4800B065F6D9A57D6B07C97CD921FF35C70420B8
          055FC7151306CF39562689BA35ABD971471D617DDF7953E72D6B3640A0C70892
          00A874B00E58AFBFFC829D70CC3FFDFCEB488BE6D878CEBEE817F6C775A0451F
          84FC80D4C171F01D7E93490AC353D78E1DD42F18C7749CBAD6B86DE5023832A1
          B44948DFA263260BAE1C2F9E17448AB9CB9740F6C76FFBD9D38F3FE6FA2B5E11
          61E0E211906D2EB969890D43DE625A18F9005824135FDD603044C649FBBA66D5
          4AB6B7583F1328E0EACCF5EFA5D2F85BA0512C73FD3B8050FADD92E56F5D967E
          2AEAAA7B1E8079C4EF8B0B095867CF4C425523728790D3179E7FD68E3DE628AB
          54B17CE21693FA70E22A0380861FA6BBC3A40EF5B8D7D01C24528D3396E389C1
          27B176F3885E0AD87696DE898E0A60D5172B3CE9B863EDBBAFBF1298E8F8640C
          A13120B38F7C06F05E75D9A51E2C90B87135B3AA15CBF920C24005A0D0000BF6
          0B330BC007600260592E0248F7DF779740606A6A394EC00C809D3261AC832C6C
          F6877E5FD925179E67DD2551B827442A698414D1A373FB44E3CBC81071FED9C7
          708D8231D357B8ABD100018E17F6497F0098EFBCF16AC2AE724090E665501F78
          BFD04F02DD07EFBDCBB6DB6A73FF1EE7DDB36B2767B39C377DE396734D24B16C
          8E63047CF84E30FD049493E004FA954726CE3B6EBFD523AD3C17439A17C09DEF
          9700AEE1A04FF872B8A4C062992499188E966194EB878F2EBFE56E7762ADC5C9
          02AEB52FAEE17686B14E7D8B4EEE2C3665AD7C87D50CFDB2CB0EDBBA7708AB15
          37689582EB8A03A16501AEFF85EF2C0E5C73C943D20895488482E1E18A4B2ED6
          CCBE9BBBC8C026C2B7D27D2E3508C2BF12AB6FD14DDFD14D9DDF12F7A8C4758A
          41CD23EE38EC134BF21EBBEC6C0F3D78BF0FE218C80C4A980F7EA8B924306922
          16D8D4FBEFBDE34B59003F74432603808B8114ECD0196CC6D89533EC488F045C
          CF39FBF41C73750387D80C2E3A0C3C7F941ECB607CFEBF4FBA4C515B462E2689
          306E318879CE79C5792EF6316F299B352E8591A9A6F4E3E38F3BCAFABE2F5940
          C7434B4020892AF2F8F8F439804788F1ED37DFE4C1114C26CE5653A061126B85
          0B5BDAB82EA17B6797D8F13C2CF1712C5C63FC8877DF7927BF0E9197C0A5024D
          D2B470CD8AC003CFD295E63408C61BF91B5C8BD5A470CC9147D806EBAEE3EE59
          B10209706DD568F1BAABB3D32530D7E877AE89036DEA1501C8BA1FACDEDB6CA3
          F593094B1313AB152689E20C757F8B9E2EE1CBA5CCB584D5015637C04D403449
          99178F493A3F25EF48194880178305D6B8DF5E7B8A9D75CA4545A18D31C01227
          7774BA248474718D41BA24700DBD8F9B1F708DE8AC138E39DA5E7EE98545128D
          704C9160834199CD6C85733A7E99DDBB75F1A89C8868C2F29D040B48CF4C97DA
          0CC6589E6775508C3D00D929271F9F0357F77B14B8163A982BDB95BC08686FBC
          F2A29D71CA890E60AB025C01A8C83896CB3426902551C9734F3F955AE3E56FEB
          C11A09E0BB6F7009C135EBE2E4D2071AA62655AE3BE1C8248921C289882BAEC5
          9C59D2E82529714F65734EB8349066204B0C5B4996B35C5E03812BFAEB867DD6
          CD812B93360D605D9EE01A6E67806BC8251BACDB3B0157AD484AC1750581DB7C
          DD04B315A134533E9ED9C67BF398CD34E3AC6E80B934C793DCF0BA87747E1823
          0055322091B0C353EDCDC5504284CA7CE96213C47EFE6315E54F8971011FD370
          5E678086F53EFC2B8B623DF15E6BC903D15A494AC8B6607718323AB5934EAB01
          4588EC6D37DD685F7DF1A50FD6902D601439238ACE038D181983C6FB5CA07F1C
          78902F5DD17A099F045CF1DB4CC245137D33DB8A02D7C3954826D83C8FD9B488
          3C8FB4896FBDF9BA9D75E6E90E084B02D725F54DFEF1C4EB608A3C2E8EB92629
          0D1337B9C8E1CA04048BFFE8FDF77CE28B4930DC9A8A025726BF00DC424F8242
          FF5167BB6943B20064E9CBBB6EBBD5FA7DF9452E21CB8C691801FF943B5F1264
          107AAB7B12A4609A05D7780EC89258859C1344B8450001324480EB6241B608E6
          9FEBC3D4D8B5087B4DB56DC0358CA24847AC4698307D4550CA5C974D1620BA73
          D88C05F6D1D8B9F6E41FB3EC8AEFA7DAF19F4DB67DDE9F605BBF39CED67F75AC
          F57C718CF578414D8FDDF5B8EECB636DF3D7C7D9EEEF4EB07F7E32C92EEC37D5
          EE1D38C3DE1E39DB064C959B9276BA3420B7AAB6653582DB159E01805636DFA8
          EB601986F6EE3B6FF8CDD7B1756B372CB0A4EAA99B10B727F42BC0046354F896
          2E0E4000D2E2C0D5976B02700C1A8001F1FFEFBEF986FD3168703209084401CE
          F06288E7BC862D31A879E4FD5B6FBEC5BA74EEE86E44A107E76482A296E0A9AF
          A7FB7B220BC84ABEA7928A44D2E67C700508B2E07AC6E9A7FA6FAD1A704DB257
          454BC291177A6A46408F70D208D3CD69977805F8049730D85855E45EE7822B8A
          06D7300AC100B7D96273BBFBF6DB8CC436E42598354393335E2629B846662D4F
          D29DE695CDCA021162CC676443C370865B16E08AFCE42BA394B9FE1D70CD7913
          64E4032608EE6F56313CE275814FB3AF504AC1B564E03A4BC007003EFCFB4C3B
          E6D3490E948D9F1A65951F1E6105F70EB382BB865AC1DD6AF7E839AFA3DD973E
          8F47DE679BBBD3EFE879F987865BFD27465A5701F0011F4CB41B7F9E6E9F8F9F
          6BD30460AB0A4097F4BB30567C58F16975804A1343CF956BCF3CB9F8889FDB74
          45AA60B85943008AE5BE797DC566376BEECC959B94B04C1EC3B73409292D7487
          C97FCE406E9361AEAD356068C15E7116475BC322CC604A92B5D4B7D123473968
          C6008DBCA2D9D4864C16F13A128AFCF2CB2FF6EEBBEFBA8B58243A89CC5518D8
          60B2598DAE506F4CC015E31CBE9DB8A101B091383B32E67B22EC34C1F49B6FBC
          E6A9FD3CF9C81234D76561AE59068BA68BB6FBE17B6FE7FC6E1D983CC823C907
          99EB170103FD3671EC388155277771F25C0CEA670F2B75505D3CB86625039E67
          23C878CEB9A05BC2A831066DBEF1069E9D0C23A31BB560A8A97B56A2B926D50F
          F8F344E3E4924D3D0CD81E601E337AA41B4A61AA1E4CA0BC09913FA238702D8A
          F937D50441CBEF77D7C1330DF61A61BFDF7FF365123CC2CAAD145C170FAEB053
          400E86B9D16BE3AC3A400A28028E01A280E6FDC3ADE081BFD1EED377037C53E0
          2DAF7D02B6470BC85F1E2E5625405B5D8016D68AB40AC802AE0006E9E5E6CC55
          0CBD1CA867CF9966AFBEF6829D71EA0949A8AA00A3495DF9A136D4E024B98696
          D7DDE562D58114797ADD5C0EE76D0556F94BFDFCD7C5812BC08A1103505DB301
          D1424D6DCCA8D136737A92253E0C23D98C5C0C56062DE1972411893231441291
          FA70830D36F0C00622C51C50D500CE240948A134902F0B34D1E7E44398261D11
          3048124727124A5421081079E3F5570DE64AF6AA5506AEBAD9237B9997AF9141
          0906396DCA54EBD4A1A383AB1B2205AC443B1507AE597D3C1F68791DF91C3C04
          59204B5F923E92E82BB457077DFC5FD3D23EA4AE8C043F24E2CEE68C650530E4
          8F419EB01C2987490AAD1C70451EF2DC0279CC359FC12E0BB8C25AC37088B193
          49E295179E7517BB52705D8CE63A64FA3CBBF9E7A9B6FECBA3ACD283B0CC9491
          FE5D105D5A004E1971197DAFFDB3A3EDCCAFA6D8571388745AB59A6D806A309D
          A47ED5CC84A5FD39D7860E1B64F7DE73BBADB74ECF24E9078610DDF080681B81
          0E800A9802AE3CF29A561CB86665812C6BE57B2C5701579681F5EBD475706DDB
          B2958D1C3EC20122D21A02A0806B7EDD28062E114211E3CEF60CEC830F3ED8D6
          5B6F3D075718AB675BD231231164D94B0416842C00B8D6D3394F10A3A2EE137D
          E396700C68A93E1D49B9D15C61AEAB0A5C5DE649E23D0A63FDB52467529A3461
          A27568A75CB0A907468493BAF6BA04E6DA42D73CDF009905D924E18D92A9085C
          D15FD15ED19CBFFCF413AF2E006022E3C47520CB5A726DE4E921AF862CB86284
          C428F6FC73CFB89B5FA458E45E80C566BD0516C7601707AEF9BAAB1B5653A35C
          80AB27B311B8E2D38BFBDA809F7F48FC5C4B996B2173FD76FC6CFB67DF31D6F0
          C1C15670CB402BB8FD772DF70789A5FE216639440C5540BBB400B93CB607D41D
          688759D50747D8766F8FB7978691556AD5806CD4E36329493A1612AF0836524F
          81F9F6F8630FD97EFBEE6995CA1524CEE4F83DCA121EC60CF4557C0623D434DC
          8D8A93058A62400EACA9AB128F2C0319A40C2C1CCAB1FC4F9F3ACD590F833340
          960901A0A585D124BB2C8EE5F1E38F3F6EFBEEBBB722C994492BF5CDC50FD793
          3213C0A0305CCF0895FAE03A83D56BC0B78E34D45F549A65625A4EC61DDE5339
          20EA40210D00AEE79C7DA66BAE68C64C12E8D38082B344183993C7128C2EC519
          B4F81C59E0F8A38FB40F3F7837E71696D4FB2A2CB6481FB90788808D4969DAA4
          896ED1A72F732E7469BCFE5FA59B447F65126CA9899416201BDE1C39DD52E7C4
          B9715E2435E79A55AD58C193927FFCE1470E4C1818131920B96E49E834798093
          2284BE1A48BD07FABEFFAE5D73C5E5EE8D826FAB0711C8B8E913AE8E97E784C2
          8666CCEB268AFEE3B5CB49C5F4AD7B86A4411A5C77DCAFC27324C095E08A2B2F
          BDC83EFDF0FDC582EBCA72CD5A6D5CB1FA8D9D6507BD39DCAADCFE8B15DCF093
          15DCACC7DB7FB5823B04B077FE265013C8DE0DC80A7401D9FBC4649707682ECB
          3E007898B46404A40A07590D8E952919388B90C3364C875CAD3C7790557DA551
          32826CB2F1FAD6B54B07772DE2264CC25193E421B84A01B46B689667091C832E
          7FF01505B445816BD6C890A4FB4B34B724076B33D7E142738D419A9508482282
          1410EF6513783398070F1E6C975E7AB1278E21E821021DF083F528AD34890CE7
          169154BCC7B63595ACFACB2F3FB71132D22C5291343566850B18E07AF65967E4
          C095010FC8AE1C704D4AE964CFDF2716C9024C4A13C78E71831646C23010717C
          CE60F334F2B83E250157E2FD0138F6837707D78B44E73B6FBF9D3DF6C8A37ECD
          08468963E3BA20D584F134262AB457FA91D486471D7E98EF0370F5BCB64AFEC3
          B1F23B3CA74F439BA76F79CEFB1EB955427045C2E0BAA3B306B846282CEC95C9
          EBB5979ECF0511AC2C30F58ECAFCAD7270FD63EA5C3BF61DB1C19B7FB0826BFB
          59C17FBE17B0FE28D62A80BD45007BABDA6DFD05B20304B229D0DE0DD00A64EF
          056457219B0598A5CF9611ABDDE6CDF1F685B4E19505B0806BE4629DAED46F31
          0086AA78DF175F7CE68993BDA52182497214455D65C095F47E18B500D5923057
          06F292C03562BF93A4D589959846F67F96B7A1B76633DF474ED1587A86B12BD8
          6DE8B077DD758792C97448DCB0C45E4316703623E395278F4913BB78F82A6C56
          ECB6862A0ABCAB3A5F8307FF9EABE29A785328A94D1AD4C0730C5AB862B9B780
          186B3EB806DB2A0E00E2F360595963D6E2996B02AE913025F728BD13801B3B72
          84032B004BDF7A52ED609D2500D79006F2274F402D3255617C62DFAC3A60B1FF
          BE56B907C628020B97B9B40617AB8BA95315ED9656C38DE8AC88022450046026
          6C392A2BC0540156FA0F30274B16EF01ACF17EBC2E69DF46041CEC15504D1292
          27116BEC63BFBD76F7A010D75CDDD8BB6A02095619B8CE95C074C77763ADC51D
          02D3CB3FB7826BBEB282EB05AE377C2B80FDCE0A6ED4FB37097001DA9B7F2E04
          5967B300ADD8AC836CCA661D68C52657856C806420235B15791C1CFFF9641B3B
          7BC10A07594F1BA870C360AF0C0032CE53988F4CF0843E12A114D14C0CACC8D8
          E44BF734CA259B89684992407C56527085B5305031667895585C7B32EC2C0B24
          D93224B13C0654237B176CE9C30FFB1A005BB95205379474ECA05488E8C61A50
          91D084505C424161E8B5AA57CA3157BEF78D229D00038C7EEE35905649F512DD
          02D760AE042D00AE800E833FD85548038B8B20CA82E9221E0C796CAC685940C7
          9302187D144C2B98EB8431A31D5CA99090ABDC90C6E92F89B9B6D244440B70CD
          DF3674506792BA5651E3AC72F972B6C76EBB3B7B0D700A4927092A880CFF89C4
          822C402297CBB4BA88E38BC0814E324402E2F4291200795D01DA9007A25FFDB1
          18E61ABECD91A721A94C91484318B2025CF175BDE9FA6B55C071AC7B3BC4449D
          CF607329144363CBA79E7FF3F52A01D7FE1366DAAECF888D5EF2B180F55301AB
          C0F5DA2FD504B0D701B2DF14826C0E68539085CDDEB618C9C0D92CDAEC52822C
          E09875D3425BE5356D6964033C0E2417749387C15BF29B5D912CD6D99FEEFC24
          0976F2F7C5175F7815CE0AE5CBA6654694A99DA4D069B864A4E2FB8BF686CF60
          AACB1607B025910582B94604102E3A30D760675997AC580A679DD4A31E3D5A6C
          30D95F9570E635D587AA5AA5925BA259F2230B3079908A8F1CA7911300765EAF
          4E754F46534D59A02EB9E4227B4FE1B41E1546D917012B6C2B982BE04005D1F3
          CE3D3BA9CF2420083615E0CAEB922C5D9795B9E6BBA9F92493CA0258EF61AD59
          CD956371705C02730D702D0C2A5874FBD041D957F8D1B2E2A852A1BC6DBFED76
          76D92597E662F3A31C5002FE890F2E201B462D821DCE3FEF9C5CF41FCC156908
          70256136E9079104E847126AF31E201B605B123D3B12B4D0C7006B36810F5A6B
          F8BA02B6575F7E898C7223DCDB215CFB6242CF82EA8A04D8950EAECFF61F672D
          6EFCCC0A2E78CF0A2EFDD00AAE10C05EF9899A40F66A18EC176A025A40F6DF02
          59075AE4823C368B6C1092418ECD4A36B80B469BD1669DC9A62019008A5E7A97
          98AE5A597C5CB50DAC1337AF6A6A55D5AA3F34C2AA08582BB0ECC77FF6CE647B
          D75A015FF6FBE0625CBFF49D4AFAECBC6FA67A74D88A0059BF29B8D1D55C6F15
          F3B9EAAAABBC8431868948D187E12A92A9900A2F49A5975A5BF332BF1707ACC5
          C9021192C9B235F214F09CD47601AE01A6EE8CAE7308A7F9EC4D1E6E5AE13580
          263B46D6EB9F553E9908AD70C562D9EFA19C92043060E5FBB9B22DB2C069A79D
          62AFBEFA720E5C31C6641DE1015A4A84030E1414045C43070C4D7269C1751117
          B1D41F7349B240FE849305D7A20C5AE199B124702D8CA44B8C5C7FD996B22BF8
          CB0A5CB37A2E12C1169B6D6EC71E7D8C33BFB84EE18615E0CA0A203C303EFDE4
          232F554EC26CF6C5CA05DD957E8C2A04FC0EECF5B0030FB44DE4FD015BE57326
          0937222E2573457385CD862CE0136D1A5CF0AFF3CEF66AB811C2CBBDB4D2C175
          450CFCA2F6B95003E9E2F7075BF90BDFB182F3DEB6828B01D7BE6A1F58C16529
          C806D05E25F00568B36CD68136950D900C68E8B4AECD4A364097A501B468B380
          2C5E0677483AB84DCFEF1C6CD504AEAD1528B0EECBE36CD77727D9D19F4CB573
          BE9A6E177D3BD3AEF8618E5DFED35CBBAAFF5CFBF780F976DDC0F976F9AFF3EC
          5F3FCDB1D3FBCDB2033E996E9BBD35C5BA3C3BCE1A087801E5823B04B6772686
          ADBF305C58AC3C0B76785B69EDA62F7F9900BE1A9A2B062D58DE86EB6F9014C0
          F3442C49AE4B8095E82B0C5761F0C91AA082C5028C2561AF4B62AE917333DC6F
          C25B802823B4C3AC453C062A4C28F223E44728F13EC09AFC2D7463DDBEFBECE5
          B207EE3EA442F4C1A53CA95E1141A906913E48760D93E573BC054E38E1387B51
          85FAC28508B7AC707E471EC02083A5FB82F3CFF5AAAF45816B498D2E45014461
          A294C5790BE07F9B780B641F615DF41BE08AC1095920BC05B2515A59D0CC1AB4
          8A03D7A816C0BEF0A165C541236CB55B97AEB6F38E4AE842DACA74D95CE8EFCA
          7B30C2045C71D97AFAA927FCDA500D18608D63E53700571A7D08B8DE79F3CD76
          D03EFB387B056079CF531296D0A0954DE1186915C3C015608B51EBD5575E70CD
          18E61A3912427609296A8532D79501AE9367CFB7839F16189EF9AA159CFB8615
          5C2870FD97DA45EF26207BC9FB85207B7900ADD86C80ECD562B339A0FD7A31DA
          6C80AC2403C0F6C65FACEC4DFDADFEFD836C931746D9117D27DAA5DF4CB31B7E
          9C65370940EFFB6D813D3AD4EC85F1661F29A17A7F79988C949D83EC947A6913
          450927ABB198C51985F7466835241CB697279A5D3B70A11DFAD10C05198CB30A
          F78F12D0A6D161480CC168792ED64BF8EDD7F28D5D9E7D4D3DAC794A92214F50
          1BA765E3F0E1C3ADA122B0DC599B0A9A45445A1566AF5F7C145671EC7549E01A
          DF8D2AA69100C64B1EA7062D6EEE2C6B8D819B05D6601889EF6EF8BD264B7A34
          E52D36DFD40D4FA444640988BE4AA0049307A56600D8DA352ABB2E0B733DEEB8
          639418FC595FC24E57B55274D74532390928DE7EEB0D970570808FE56B68AED9
          7479250180C569AE806C4468E567C5CA4E3659CD957EA34E55C802E190BF3CC0
          35A405D82B60C87D932B32A888B05E3D7ABA348127471C5392252BA97C19E04A
          5F5EFFEF6B7DD5442E09EE41F45B376AA62E6301A40D55D5E2FD37DFB4538F3F
          DEC1355604BC5F5CDF46B040A4760C1FD7C8EB0B9960C586FE7AC4210779BAC9
          2434BCB065F33704D07AC0461AE092CEE4CBE5A160790EF8A2F63561E65CDBE9
          012DF34F79C10ACE065C5F177315C09EFFA6A481B752A0159B05642F16C82E02
          B4920CAEC84806802C92816BB3806C9E6470BD8C61D77E6B3504AE7D9EFCC38E
          ED3BDEAEFA7A8A5DFFED54BBEEBB9976DD2F0BECE951669F0931FF908789829C
          849E42D8E16F085DEF32FB4E75EEBF38D9ECC343ECCFBE07D8C2BEFBD99F1F1C
          64F6E93166FD2E34FBE9467DF1BF42DDEF756FC9FD445F1F24C07D51007D6CBF
          79D6E69909921052469B65B302D8164F8E520E8439CB0D6029D732436904A7CA
          53E08DB774B39E7C8A552C5FC1430EBB75E8F0976000F743CD950659BDC035DF
          9A1B377A041A60D07240F48434B3BD5CF491471CE6062D72BD122441FED66E2A
          B54C0E56F2BBF21AC3178104570B903F5382F0C831E04BD9D4D7358208D05C91
          05FE2F816B005F18B4A2AC38F750DDDA75ACFE1AF56CEAE429BEB208A6977877
          24D7220C5B30FFFDF7DBC7D6EAD5C33D05C24BC43D063209B29910BAAAB2C56C
          791C3C74CF3DB6E9FAEBBB161BFEC4C5816B180D910160A8E18A15BEAF91509D
          24E91BF6595B09E1F7735FE1AC1CC084CD64914DA5B8C2C0B53888FE3BE03B6A
          EA6CDBE91E81E309CF58C1192F5AC1592F0B605FB1827304B2E7BC269015D09E
          2FA0BD4040EB6C16904DD92C401B92C1651F25204BBB2AD5669DCDA606B0AB05
          B8577C69F56EFEDEB67BEE0F3BFB6381EA9793ECE24F27D8259F4FB15BB5BCFF
          58D4738A96590BA70C10223E28BA7AB8CD7FAE9BCD7AA496CD7AA0BCCDBAB7C0
          66DD556033EF4CDA0C3DA7C56B1E67DDA3767F199BF550559BFB544BFBF3CD9D
          CC7EB8DA6CFC27A263D36D84C05A04D6D67B63BA95BD7764221B84F782BC095A
          2A0F42DF31CB0760BD44B6020800D8871F7ED8B6D96A6BDD704984146CA0C88C
          55AB29B846C1C4B817C3BA1BAF01D708EF252C931CA75433DD769BADAC57B7CE
          D6AD733B5BBB57575BAF778F5CDDAB1E5D3B78CAC20D375CDFFAF67DCF7EFF9D
          70C885364391441E029B7A0C040B7BE7ED371D5C3168FD5F61AE5EE23ACD5380
          F109708521A3D9D7AE59CB6A56AF6113C68D5F44CE61220C700D63167DB9CDD6
          5B3AB802A861D084654759170094D22F7D7AF5B20592B09ED43DBBEBF6DBE7CA
          C094C458182B827C3F57C035C277015E7269705FECB0FDD6BE628A6AB61C7B49
          C17579F8C6AE3083D6B8E9736CA7BB048AC73E29D62A703DFD39B5E7250D0864
          CF14C802B4E7A4407B6E166883CDE6C90697A5DA6C002D208B11EC924FACE675
          5FDA364FFF66677D38C62EFE649C9DF6DE183BF7C3B1F648FF293640F2DA8279
          A2AA3F5C690B5EE861731FAE6EB3EE1670D204963305AA33EF53BBBF848D6DF9
          8E9A7F5FA03BE7FEF236EFB92EF6E717A74B4FF8CA666AA9FECC38B30DDF9A2E
          4D56B910308411C22B9DB6E57F472F177F588A0D2209CC9134401DACD60A33ED
          A4104980754D859EE62755599D992B4BFF6C10416864A1C726E59F0B97A39181
          E9E38F3EB0FFA86AEA2107ED6B3B6DBF956DB6611FDB78BDB555D97553DB7F9F
          DD3D57C0CD376BB5915AB6792414965C0330E060ADBC1FB2C0FF45708551BAF1
          49116080AB5772D53D54A35A751B3582042849B9ED60B001AAF1881F738FEE5D
          AD53C7F6395FD95C8997D49D0DFFD6F5D65ACB76DF714776662F3FFBAC1D75E8
          A1CE5C234AABA4CC35803472FB46DAC448248E1B22951FFAACBB96FBEACE9891
          F8580398210B840C1386C490AA62425F6DC17596B2E7FCE32101DF110F5BC189
          4F095CFF9BB45333207B86640280F6AC9752A04532580C9B75461BDAAC8C6000
          ED457DADDCC51F58CF7BBEB7E3DF1A6EE7F61D65C72BC2EB38B55BFB4DB08193
          0B354E2A412E18F4B8CD796B479BF1500D9B013B05204B0AA8C56C3743800B58
          CF14D39D7D7F0531DAED24D0BE6C52AAECF611662D9E9B2C435BEA872B06DBFD
          F931F6FB34F906FE8D5CB6305780759E5CB14E3CF14467190EAE8DE511F03F08
          AE006C30D87CE6CA0D4FDE8400585CA860B09314D24AB1C101BF7C6F4306FD6A
          7F0CFCC5060FF8D97EF9FE1BFBE9FBAF6D90D8EAF0E15A4AA4FEAD915FC023B5
          52772CCFECA4CF61AE68AE780BFC5F61AEC15A3D60827CABD25CA3F6550325DE
          E19E1A32F88F5C529D2CB8BA7F6BEA92F5870234708DC37B233C45A2DA05C089
          76BD468D1AB6C5461BD9C9C71E4BB4847DF8CE3B76C9F9E75B0315C78CE8AD92
          826B18B1025CB39AAB97E9496B87B56FD7CA06FF3E4813EA84BFC80059A920EB
          0EB8DA83EB452FCB6DEAA887C45A1FB182E31F972CA0769218EC4900EDD30259
          80F6D942360BD0E683AC036D9E368B018C76EE5B56F7CA8F6CB7A707D8296F0D
          B5A35EFDC30E7A61909DFDDE08FB688466A92524555938E9279BFBE9D136EBE1
          DA09C82E0D6B2D211803B4B3EF2D630B5FD9D86CECDBAECB1EF0D54279188C11
          7BC5A56BA8EDF4D6789B3C77D9D3197A896CB96001B007CAB5A57A555505157B
          25290699AFFE97986BF8B58645B728E3164BD11C6392EBD434790E78F67B4D32
          F3666BA9AF348BCA926CF3674DB3D9D326D9F429E3DDB13D17A2A9EF906C0437
          2CF6E56C3605D82CB8E22DF07F055C238436524446549D27E656D29D3AB56ADB
          6F0306E692EC141A22D1600B5712DF7DFB4D2E0B5654B6F0642D049164C075A7
          6DB6B16B2F975D431AEED79F7E6A77DD728B832BD201D15B2501578C82113810
          B905C2152B3E8BAA04CDE53DF2D30F3F2A1C5C49683CE14C61B456165CE37E2B
          4E225DDACF97BB2CF0D49783ADFAB102D6C3EFB78263C45C01D8E31E2D04D913
          53903D59201B6CF63480569201207B46CA64439B05646968B380ED99AF59EB1B
          3EB5835FF8CD8E7E7990EDFFCC406FFFFE7CB40D5326AD92B2C185E33EB3396F
          6E6B3359DAD34A089C25DE0E360B93BDAF9CF45D19C5660DB67BC562EB3D3129
          D162E52F7BEA17CAB7BA8CEC3557CA4559D777DA717B55F4AC9E4B30D2AEA9C2
          1A8BAA12B09A6AAEB1FC8F10D8B889B3F9076269CF723EC25793B0CBA48C32D9
          E7A99B14E5A9798E7F6D0072D6F13D74D6EC6330D79C410B373696B4D4E88AE2
          7A2548DA921FC195EFEFBABA790B84BF2CA01821AB68AF6B6A92461A18D0FFD7
          45D24426CBE534322B356AE1C646C96E587F24ED015C23C7042C96642E07EDB7
          AF3D70CFDDBA56B3EDDBAFBEB4A71E79C4F55D0F83F590E925276FA16F0340A3
          6E16AFC3FD2A0C5B1D95AF386AACF5FBFA1BF7A44176CAB2D27C705D1E32403E
          F82E5770FD79D464EB788ED8E93FEEB4827F3E20F6FAA0151C2DA00D903D1690
          7D2C01DA139F4898EC4902D99353C900367B9A40F6744036950C0264A5D39639
          E365EB76CBE776F073036CFFFFF6B7DD1EFFD9F67DBABF3DFAE3782FDDB2B440
          45B5CAF9BFDE6EB31E6BE84BFA1203E75200319201BAECFC279B4B2A78CABE93
          FCDBE3A5390EB09515DCF0942A282CED71B3BDB3366A05497BEDDDBD8B571120
          4F407DB9A1E0D35A9C4BD5B27E5E52572C0659B862451041DCD045B9622D2D2B
          28C9F6D9B0DABF6E5F58AE84BE24882071C512739551049FD9A8CD1505103D95
          610900367F9B6C5A44C095EAAF59572C2F9498FAB8FA2067E9959647C7201311
          5A91783A0BF6C975244020694BF6732DDCCECF25CDF4E5D9A90480E8AE3CA2BD
          06731DF4DBEF2E0B20DBE44274534F0BFA8D5483575F758555A95CD1534146B6
          B2A826EC291CE5D54154DD49279DE05E1BC83AA3460EF732EFB8D3111412B979
          97E5BECC168C8C70EEA8244B350B2217B37EADDC0B9E752C4D699965B459005E
          5C2457498178B981EB6CE9AC87DC296D749F9BADE0B0BBC55CD58EBC57207B9F
          9A586C00EDB145B1D9146861B3E8B2B42C9B15E09639ED05EB79CB67B6CF533F
          DB8E8FFE605B3DF89DEDFEF84FF6CA4095495E46F617DF5B38FE4B9BFDD23A09
          C0AE009900D00EA9C0BE3FD746CEFBD3B67E7BAE22CC8659E7E746D9E0650832
          F082762A1FBC508CAD7BA7F6CEB00055B25D95826B3244963C084AC1353457C0
          3A5204A2997AB273C902780CA0B9F2C7B23A22B5A20437B20AD56A4F3DE5A45C
          826CC03522E848F90868926C8750E40B2E38CF086366F581118C6C69DDBA76B6
          B66D5428539AADFBB12E43CBAFC69B03588D8973CE3ADBDE91BE1B809ACD3C96
          3562E5BB039614409734C92F37707DF2D38156F190DBADE0805BACE0903BACE0
          50B1D7C3EF4A40F6887B04B4599015A33D26D564910C8E139B45970D360BC806
          9BD5639993FE6B5D6FFCC8767AF47BDBF2FE6F6C937BBFB6ED1FFE5EC03AE16F
          036B00EC9FB346DB9C77F74E0076391ABBB26C7806FB158BB54FF6B509B3A6DA
          B6BAE605B70EB7133E9BB8D4E7C10D3E63F2049B36719C976D210A8B9B0AD615
          795A97E5462DEE3BFF4BCCB5145C93BCAED982858BB0DC4CF82BE00AB046841F
          06AD5A356AE6BC05B2410ED9D22E00E55EAA5316C9B10153723E7819744A02E9
          392C965A68F81B8F9554C3BD0B7B9DA1808E0DD6EFE311772B0A5CF7DD7B1F7B
          E6996772E01A7906B259D84AB20A5A966D960BB84E9C3EDBFA5CA825FE9ED759
          C14162AEFFB8D50A0EBE4D202BB03D3480B608367B749E6CE0408B010C26AB76
          82F4D9E39FB07657BF6B5BDDFFB56D78D717D6E78ECF6DB37BBFB2A77F1EBBD4
          80541CC3B579CA56FFD1113613CBFF8A62B0A94C60EFEF6223278FB35EAF2E50
          5E8391F6CEC8A59307B84127AA4ED0D0DF077836796A64456C7F29B896642894
          32D76C4583900370C542CEA9A79240802B7EAED965B34F5899000CB28AADBB4E
          6F0FD8004461A9841D0396BC477E079EAFD7671DBBEDB65BBC22049A2D7A3961
          B3DB6DBBB5F5ECD1CD139B2F2B737537C3B46C4D7E75D88D37DCC8EEBFFFFEDC
          2A26A2FEB24111215795E4AE599A6D960BB8FEE755454AED79AD15EC7B8398EB
          8D5670E04D6A02D98304B239A04D41F630D8AC98EC226C56FAAC6BB3A1CFA66C
          F6A847ACF145AF0A543FB3756EFDD87ADDF2B175BBE923BBF9B3A1CB1D580378
          6DBE4AA57C78E80A07D85930D80FF7B09F274EB5359E9A6DDBC97B80542CC54D
          003929434BB2914306D9979F7CE83756B0D728995D1C035DD6CFFF9798EB9207
          4229B8E692BFC8150B2900AD3592AEC05C89D0A2124256234F18AC6C15690502
          B4532F4828608DCABCF8BB2203841C00B8EEBCD30EF6E8A30F7BC86CD653E3C0
          03F6933FEADA49A6B3A59404BCD40B4971D2EFFD0560352EBA74EA2C5FE79B73
          062D186B84F366735D2C0F1960B91BB4868E9F6AEB9E2D50DCF90AE9ADFFB682
          FD04B0B4FDFF23A00D90955410201B4CF6306483543238026D56BA2C46B060B3
          473C60354FFFAFF5B8E903EB71E307D6F586BED6F6BAF7EDB8977EB6A973967F
          22942CA8FD396F9ACD797BB7243A6B298C574BB32D86AE3900ECB727DB73C317
          5ACDC7A7DBF3436796185C99F907AA4ED08BCF3C658D946EAD733B955E963400
          8BE5F5B2826771DFFBFF015CC3E2EDD54DB502F8BF6AD0CA826B94ED8E643BCD
          E571D242958229735EE8DF9AC4E047463140926839D24086510A29A05D5BB15F
          016A68AE80EFB1C71C65AFBCF292BBC2D1EF51D2FCB4534FB6CD36DDD813E62C
          0DB806B0E627795FC4B8059BD5795C76D965367E7CC2C0C390156C3C820AB2EC
          757901EDDF66AE0FBCA7CC54BB5C6605BB5F69057B5D63057B8BC1EE237980B6
          EFF585409B65B34806074B32086DD6D96C469B15B32D2F906D7DE5EBD6F9DFEF
          58FB6BDEB2E657BE699BDDF589FD38665A8901A8A42CB0A8EDFE9C36D866BFD0
          7B857911B8914B1AEC0281AC0DBCC5CEF8D66CB77767DA4CDDBC25396E6E7058
          EB0DD75CE9462CCAB8447D2C2CA5C581E4B27E5E52700D4F011E4B92B8656996
          5BCB67DB84B946CB7A0B3039E12D105E023C8656B93CBC0528AD9D9FB8259B72
          D0135493E45971F12419C75B801A5A0060547F5DB4C4CBB2790B847FA99761A1
          447A9AE01C4F8FAE9DBBD8D65B6EE5C741C6B500261E3164794972F5DF7DF7DE
          ED19CA60AA5EB34CE1C3E10110257948407E779AB01C1FE35CE871FA7D34DB8A
          15CA259E1899E57DF61ECDB2D47C602D0A68D90FAE5BC81BC72A70E1CB2FBFCC
          85F166F30A64535E66E58FE5718FFD2D709D3E7BAE6D73918C51DBFD4BE07AB9
          15EC2180DDF3EA4541765F40568C76FF94CDE64036C366015A182D6C16A03DE4
          4EAB77F6D3D6FEEA37ACE5E5AF5953B52657BC6E777CFE478980A724E054926D
          168C785DC10635578C1F6CCA88F185B5FF36B181C3FAD9666F9AF51D55325F5D
          4FF0FCC6AB76C905E73A53055CB36E28CB0A9EC57DAF145C8B2FA4579C2B5651
          E0BA48F2102A960AD448F71759B1025CD14623274061D2F36503D7A86D45DC3F
          290D9908EBD4503E5B19B7B6DA624B3BF8A07FB84B58B0BAC2C8B9240003F679
          D1BF2E70FF56B4556480A8CCCB73C096C6929FF0E2DF7E1B909435272004062B
          E6FB9AF2EC1EF5CF23DC20E6B97933CBFC5C96B5BCF7D806229105D57C8980EF
          02AE0442ECBDF7DEF6C4134FE4CA8267DDDEF20308F2BD06FE0EC8FE2D70FDE4
          9761566F7FB1D56D2FB4825D2F5583C14A1E80C5EE719540361F6853D9C02503
          35801603D841025A67B36A07DE62958EBECF9A5FFC92B554E3B1FE052FD8CEF7
          7E6CE3662C9FA4272501D6D866EE976724E0BAA20C5C02D9D900EC477BD9D53F
          CCB5133ED7B24B57B4B863E4E67EEFCDD7ECBC334FCBC90030D8C8DF5A1C482E
          EBE7A5E0BA62C035E7E694F17325DD1FCC959483801FCC350BAE85F977970D5C
          61BF51CE26C25661AD1418DC74E34DECF4534FCB957981BD163AE227290761AE
          2CF7014F5CB03060F11C80055C792F4097282E0A677AFDAD94F5B28FAF543CF2
          B8638F765920C03500369B6B78919CB502D658A5654136FF9E065CAB54AA6C7B
          ECB187EBAEA1B766CBBE2C4F305DAE9AEBB90F2AB9CA36E75BC1F602D79D2E96
          EE7A8924821464771593759085CD0A68738C16C940208B64E06C560630378209
          64D356F7D447ADE985CFD99AE73F6B8DD5EA9FF7AC3DF1CD906201A738405A96
          CFFF9C39C2663FDF253170AD40FDD51E2CB0A1FDEEB233FB990D51A04171C7EA
          E5A05F7DC94E5052600208B8B1082060C0C16297153C8BFB5E29B8AE58707526
          A5EC6D30D700D7C9E3E56E9749961DCC7579806B14294416204936005EA34A65
          DB72F32DECE61B6FCAE5439D366D5A6176A954A7061CF7D97B4F77B982A162D4
          8281D2780DB8E2C38AE63A74C8602F6F1E9172E13140799833CF38CDBF93D55C
          F3E5812CA30DE61AC0BAB87B96FD55AD5CC5B657F6ADD34F3FDD992B4980A22A
          C18A4C940DD02E33739DABA081ADCE91EFEAC6A70B5C2FB0821D04B03B481E70
          904D811626BB9B4076B7549305648B62B30EB462B27AAC70E86D56EFAC27ACC1
          D94FAA3D65D54F7BDCB6BAE51D1B36B9E4C69EE28069693F9FDFFFF615CE5EE7
          891D2F786D337BA85F7F7B6978C9C0F5B107EFB33D77D9D197471D542B0B9065
          C095B4926B71405AD4E7A5E0BA62C035345737B0480E0060D15CA9444081C2CE
          EDDB79C6AA4840BD3C34D7900588D4A2E2ABA71AACAE7CB892058E39EA68EBFB
          DEFB7E0CFC855FA8974697C59F86AF2A96FE081C00446961C882C57A114901AC
          D72B4B733A842B173EB2E488B8F9A6FFD83A6BAF95D35CF3E50080360BA44549
          0045DDAB802B9A6BB76EDD6C8B2DB6C8C91BD93C037F67D95FDC7797195CBF1E
          38C25A1EA465FFA602D76DCF551383DD0E169B02ED8E02DA00D95DC468910D1C
          64251B049B750398DA3EA9116CEFEBACEAD1775BDDD31FB3DAA73D6AB5C4602B
          9FF4885DF4EA77C532B9A505CCA5D9FECF698364DCEAB942D92B810B0B1F2863
          DF7F728B7DA08AC6C51D1F9AEB83F7DC69DB6CBE891B0142732DE98DB72CC0CA
          774AC175C5806BC8026ECD06D0D03AD3322FE3478F72F083BD7A291619A09607
          B802AAEC87E42A18B370C582BDC2622F3CFF021BF8AB34D234D934FEA1910F35
          0C5254F52548C02B42C8A00573F5CC587A8E318B6A1118B8BA76E99418B1D264
          2FACBA00D600E8071FB8CFB6DE6A8B249B555ADF2D7FB9BF3870CD2FB699BDAF
          0157DCC9DAB66D6BBD7BF7CE69AE2B2380E06F31D7C7DFED6765B63CD30A3617
          B86E7DB6E4817392B6DD797F05D99D2E4A803624034016460BC8BA362B80956C
          50461E06D58EBBD76A9CF4A0553FE141AB70ECFDD6FCDCA7ECEDFE238B059BE2
          C0E8EF7E3EBFDF452BD473004DF74F01ECD897B7B377864CB0A94A1DB0A46366
          5905B86EBA419F1C5B85B5461DAB6505CFE2BEF77F015CA924BA72BD0564E481
          118AB5BA614B5AABD77E12839D3C7192D22A26E08A510BE68A2C40FBBBB200FB
          2003188FB055F2B8D6AB5DCBCE3AED547BFDD5D71CDCC3A01549A61DFC059403
          07F4F772E424BA819D86210BD68A5B16201B81049B6EB291BB6F9136324A7147
          AA4740F623954D27AF03E5592007B813721F4671CD7C3FD600E0E2EE55FAAA6D
          EB36D694CABDCABA45E9F9499326B9BC5154B86BD6056B79B8632D3373BDF841
          65A85AE7B8045CB738C30A00DAADCECA00ADD82C4C36D82C4C7647816CBE360B
          C8C26677BBC2CAEE7FBD551673A5553946810687DF69EB5EF9BC4D9AB9F20D59
          F9C0B670F4FB36EB092578591119B4522D77AEC075E243F5ED879FDF562ED862
          C055C68407EEBEC33658A797BB0C51378A1A529170A430CC71D9E2B51777E3FE
          FF06AEF97EAEB56A5655A992A44C4CD3C6F5BC6C378F51226779B9627DF8DEDB
          9E748786E5DC8D2C0B04A84A2119D6F9E953A7799915001690005C6197B85079
          D2155F4914BD9A28EA3AE5BF17A915798411632CAB55ADAADD75DBADF6D9279F
          BA312B6481306679891481EB2FAAC4FBC4E38F5A8DEA55738C15900DF60AC0E2
          EF0A73DD7EBB6D72115991D52CF213F0FA8B4F3EB69B6FB8DE811D606DAB2AAE
          3052B725C830E6E72823165E313C62B4E573FCBA97CC5C1B5B9B56AD55EAA799
          3568D0C8FAF5FBCE468FD6B210739CEC71F909B2C315ABB8E57E493F5F26709D
          AB99F5D02BE582B5F6D192054EB182CD4E4B403607B40259075AD8AC40969695
          0CD066015A3780A54630B1DA3207DC60E58EBCC3CA1F71BB953D1CF7ACDBEC90
          FBDEF359E6EF32CFBFFB7D7285CE7E6DD32407EC0A326CCD127B5D20F01EF1C9
          855E1C7149C74CAA3DC07543655B6FDA90F2D96B78899352702DE9AD5F7484D6
          AA0257678479E08AA700115253264DB6766DDA7A8556CF8C2570A5B961E76F80
          2B552B426260DF303DC0F5C3F7DE4D12B6A4E0CAF88BC42D9ED05C93C1E7CA6E
          75D38D3758B5AA959DB902A611A185EE1AE08A9B16850B23AACB19AB8841922E
          52FAB2C0F5E7EFBFB3A71F7FCCCB72039E006C165C5B8B0D73AE24248A2AC5A1
          C31607AE1DDB77B0C68D9BA850652D7BEDB5376CC080DF04AA7275D3B9AD96E0
          3A61CA0CDBF63485B6F63ECA0A363A4946AD93AD6013812C40BB790AB439360B
          A34D6503B4D92C9BC50806C8D204B2650E9061EB60790DD0FE21372D3D5EF1CA
          37AB1C58736E599F9E9CD4D55A41AE593304DAF3E59530ECF5036CECAC2527D2
          0E70A5AC09C01A8EEEB05752E515B7645AD6CF4B99EBF2D15CF399AB1BB49402
          339B157FEEEC39067B9D3C9EEAAF6D9DB57A655DB1D6E501AE5DDAB5F30A04E4
          6FC598D5AB5B57DB6EAB2DED4F956AE7B701579706F4177EB85E8F4AE0F8C6EB
          AFBA959F3CAEB0D50054DCB1B26E5830DB83FF71A0836BAC12025CC35776C8EF
          BF39A003AECEC605B0481EF906DAC899C167806AE4D258BCB74063EBAC2AB60D
          1B36B68A152BDB1D77DCA5F4835F6995403E5AD86B52FA6545FD2D13731D3676
          92AD73B88C59BD8EB4820D240D6C78BC40F64481AC80364076B3538B00DA60B3
          62B4DB66B45900579A6C19051C9491345040DB4FEE5A07FEC71EFEA8FF6A03AE
          F37E7DC0A6DF5DD1A6DF91D4CFF22C57CBD1FF15709DA77D0E7D66631B3B6974
          B1CC35D15CD775490019008085BD2692C0F29503627FA5E0BA22C0757692CE4F
          6896AD7C8BF60A6B1D356CB8586B1B0756FC50C3CAEFBE9ECBC85CDD754F75AD
          A2982020BBEB8E3BD819A79C2C2495E62BCC41F3F568311D5B18B3706502249F
          7EEA093BE8C0FD7DD91FA1AF3C02AE91D715C316E07BBC4A9B03A42105449272
          5E93F865C4903FECFB6FBEF6CAB1C14401D058FE0788C6EB70D3E21C8A63AEED
          DBB6B3FAF51B5AA54A5594F2F05FF6EEBBEFA79240121C919FB3757902ED3281
          EBEFC3C759877DB4B4EF75B815AC7F4C02B01B0860B3200B9B85C96E2A9075A0
          5D8C360B9B956C50469A6C99BDAEB232F21E28B38F0C5C72D92A73C0BFED957E
          83561B709D3FF2039B765F5D9B7A7B814DBBABBC72B4AADD534E205B66B9A529
          44771DFF781B9B3AEEA762C035F116D872930D9462B08E2FA598D99774B32D0F
          C02D05D7E50FAE7F2AE9B92F930562D92429001286A3B75F7FCD19260DA3532E
          27C062BC37FE9A62B0E889D6AB0050FE5A72C081FBEE638F3DF4A0D726739629
          3F5B582B0D9D3574609E8F1C31CCAEBDE62AAFAE8B24008802AC61D8C2058BD7
          18B4F024F8F775D738DB7570CD48023C4716983363BACD9C3AC535650034EE63
          260FEED900DA60B4E16A589CDB21FA385245032503AF275D79BBEDB6B3071F7C
          30570C3380353F04767901EC3281EBC06163ADDD1E629E3D0EB18275FF69057D
          240FAC27905DFFD80CD09E90910C52A00D90CD022D9E06920DCAC885ABACBC08
          CA288CB6CC1E3270C947B6E27ED7DABB3FAEB80C584BABC32E9CF4AB4D7BB0B5
          4DBDB58CC0B58AB719F7D02AD8744A71079BFD1B9A2C6C78F6C355CDC67C5022
          70DD7AB38DFD66C408802615CBA5A281342279969DD59682EB8A01574006F0F1
          E8A574098D3E496294471EB8DF97CCD48AA2B26938DBBBEE98D74A62C80CA31C
          7EB37809C086014BF22BF0DBF8A47A3504D86B5AF535F2B96278FBB5FFCF76DE
          59A7CB0086214CBAAF0C4BA1B70673F514820257AAC2DE75E7EDC939A56561A8
          6536372DD79363B4FAAC7BE74E5E22DBCF51E7C53D1D062C24020C58806FB81B
          96045C9128221497B48777DC7EAB27F8F604326ED84AA498A2F4D7BF0BB2CB04
          AE03868CB6D6BB6889DFF51F326A1D21AF01C90380ECBA29C8AE27900DA085CD
          6E18402BD920C76633DAACF4D93272E32ABBD3BFACECCE1759D95DE4B625265B
          69EF2BEDFD1F574D645651C0BB70C6689BF6F83A36E5968A36F5CE5ADEA6DDAD
          26909D2AA9609A8C5D80ECF41464BDC4CBD2026DFA9D05C35F5B22B872533E78
          F7DDEEE70AA8E2E78A3575C9375C29B8160E98D5C7A0057325DE3E1F5C01DC4F
          3FF9C86EBBE946AB59B58A58AB2A4DA4E01A869DBF03AED982845F7EF1998D48
          2BE53ACB14737577303456FD45B2136A92FDFC7D3F3BF9F86314C955D1811580
          85B50690F1880E0BB892EBF5FEFBEEC9490200EC0C958689808260B380EF5ADD
          BBF939AE51ABBA3356721407A002AE802DE01A3EAFE17AB8A4082DA486D080C9
          1B7BEB2D3765021A564370FD55E0DA6A272DF33B1F60056B1D26C396E481B5D5
          D611D03AC8C266E5491020BB7EC80629C86E82010C369B4A06F23628BBD59956
          6EBB73ADECF6E75BD91D1488204DB69C40F6F56F7E5B6D64813F67A9E6FD535B
          D8A49BABDB943BEAD9943BEBD9D4BBEB0B58AB8BCD16247281DAF4005919A760
          A24BA5CD3AB896B1E2C0959BF289871EB23D77DED99DC00963240147E8527FBD
          E1B2F5934A996BC4C62FAD2B567E01C2ECEB2890E7CC3253A5B4A596B7B04E4A
          4157AB54DE8E3BEA08FBE8FD776438525DAAB9CA38A5628A5EB6074BBA2AFACE
          9EAE6AB6322A5178F17E79846CB3C5A6D25C5BF8F77DA99B32469EA3B1A3B523
          0D355AA39626DADAAEC14756289820CEF9F890222BE06DD0B563073762B56AD1
          D293B33CFEE8639E141B23163A2FC01AFD02987A2972425ED352DAF7DD75BBED
          BBE76E4AF252D58F8BE308908D282D720510D24AEE81975F7AC1992BFB605F24
          CC4E9863615E58007DE3F5D7F37D02B00027B932221911B2172422A48100D6FC
          1CAEF92907E9AB06EA1B2AC1521FED82F3CFB6217FFC969C5F7A3EB0D7FC7A5A
          7F97B5F2FD6562AE43474DB0B5F6110076D8D70A7A1E2CED55F2C05A8726CD81
          36C366910C1C68972C1B9491645076CB33ACECD66759D96D24156CA94705243C
          D9F7FBD5065C17CE1C6BD39ED852E05AD726DFB1A65A639B7257139B7C5B4D9B
          7C538118AD1A207B5B21D0E6D82C405B12D9C04BCC94B50523DE5CB22CA001F0
          F4A38FDA7E4A4A01B8529A187FC5583695826B71C363F9335740348035803696
          CD3C520ABA6AC57276F41187DA07EFBEE5156BA9563B67C654071ADABC59336D
          FAE4496E54FAEC2339D76BF94D35531AFB002C00748096D6A639BE9E5AFA0A58
          EBD7AE2E40AAE1DE23303E809506B027609F148D64F98D21ABB14AB05F7DE555
          4685548C57340036F11048FAC713AD641AA074BDD25CEEBAE3760E84EDC42E39
          1EC095F38F2002820B30769D75E6E9F6E61BAFE5C08C7D458973F61F49B779BE
          D5669BFA3ED91F20C94A2CF266C05A91BF96CE152B99881AA93F00D79A35AAD8
          69A79E683FFEA0041EE9B9257245A1D6CD5DB3BC3C0896095CA7AB6ED33E876A
          E9DE46CCB5FB81D25E0F5A14647B03B262B47F01D9AC6C90B2D98D60B3A9A781
          24833272E52AB38558F1A6C80667D8F5CF7CB8FA80EBD4E136F5A10D6DE24D0D
          6CF2ED2D04AE2D04AEAD6CF22DB56CD27F0A1C6027DF9C02AC40764A802C9201
          0DC9200559AFD355946CC0FB0F55B605A3DF2B165C9F7BF2693B78BF03549AB8
          91B56BA1DC0202595C74DC7FF12FDE02A5CC7551B85DFEE01A5A26E0C0A006D4
          82650284804FF5CA15ECA8C30F91EBD1DBCE5CE7CE9C66B3A64D76A09DA78293
          0EB40A2C983F7B869D7DFA29B6F9C61B4812A82440EC609DDACBCFB585744705
          35B468AA65739BE65A3A3773DF660015D60ABBF30956BFD5B93D410749C1402C
          F81897C292CF7B952A54B40FFB7E90B85D4902983D73564E06C86AA4B04D9826
          8F80EBE9279FE086D4BA02ABB62D88144B7E0F800D160B6BC50DEBFA7F5F6B1F
          7FF441A1962C5023528BFDC11CA94C10D2C0EEBBEDE2E0CA313319303110D011
          13534C2C0EBEB0765CB6D2E78B0BEE200884467F55AF52DE8E3CF41FF68E5275
          527137A76FE78036B9435629B8DAECA976D2A972956AB18F95E9B69FDA815646
          204B2BE8291D7611361BB28174D9D066DD0016B201201BEE5C025A77E7926480
          FFEC0627D831373CB3DA80EBFC31DFD9A4BB7B0B5C9BD9A4DBDADAA4DBDB0960
          DBD9C41B6BD8847F17D8A41BD43220EB409B65B329C8E6CB068B80ACC075D663
          6BD8C2719F170BAE6FBEFCBA9D79F2E9D6A8AE6EEE3515D5D248EC41B1E2ED5B
          B62C05D774902C7EA0AC18700D806129CE808F6539CB673EE3354BEA3B6EB9D1
          3EFDF07DFBE483F7ECE3BEEFDA07EFBC69EFBFF5BA673A3BF394136DE7EDB6B6
          DA352A5BA3FAB5AD63BB9656BF6E0D6BD2680D6BD7BA9975EED0DA5A3693CED9
          4065AB05A84802E1860788B795FEEE00A510D488FBC782DF54805A4F8FFBEEBB
          AF5D71C515F6D24B2FE5E69B6C4AC1C48A9E96731108A28F7A926BAF2230CF36
          5A6F1DEBD2BEB5B3655833BFCFF90276FC3EE789064B800146B2DF95C735BB0C
          CFED8B5A5AA9010F303FE9C4E35D6FE5D88309A331B3EF1C33263A2B955D4A12
          2D47A45DCB6672535C730DAB51B59C6DB3E52676E945E7C94B61A616072A4DAF
          F38989243A63D582AB3AE2CAEB545CB0D9EE56A6B300B6CBBE6AFB5B99AE6A01
          B4C16673401B209B4A06006D48067D52C9C0B559805620BBA1D86CEFA36DFD63
          FF6333E7942C81F4D25AFF9776FBB9BFBF6593EE58CB26DCDCD626DED6C926DE
          DE59ADBD8DBFAEB28DBFA6C00176E2F56A29C84EBAB190CD06A3CD67B36E0013
          9B75239898AC97E07EA68D2D9C5C8C2B9664818FDFFBD0AEBAE40A6B58474104
          7294066061ADB0D852E65AE89F59F46059FEE01ACBE3D061DD8ACEB2546CD297
          F0028DFAD2117B75EB6C3B6FBF8DFDF3B083ED1FFBEF6307EDB7B7EDBAC3B6B6
          F76E3BDB1E3BEF204658D5AA493E005801D30E6D5BD81AB5ABF973D82B4C0CB0
          755696863E07C806C801B0802BC953AA54AEE88C1570EDAC2AAC7DFBF6B53FFE
          F8C3B104509D3D5B20F317C696C8149EDC5A86351A8C73C6F4C90EF630568095
          86C6CBA411AC95F3C7A005A0FFF4E3F75E42DBAB17A4895BB2E01AEFF15BE79E
          7396F7554C4CEC07E6CA0A807DD387B112084D7B8900DB4472450AAECD9BD4B3
          7A75AADAC61BAC63471F7988036B806B7831C47DB24AC115507AEEC5B7AD8A00
          B5A0ED9E56B6D35E09C83AD08AC93AC81E9030D9EE920C7AE4B1592483BFC806
          195D364076AD7FDA9ABB9C675FFCBC7A780CCCFCF22E9B704B77B52E02D76E36
          11A0BDA5BD8DBBB29C8DBB4AFEA900ECB529C8A640EB6C56203B29950C26C364
          D5DC0026D90003984B066A0EB47A3DFBA50DECCF994B4E5683D1E1FBAFBEB5BB
          6FBDD3996B13394AB76EDADC0D5B8BCA02593960F5F416C877E45E11AFFFAAC0
          2E7F700D600300780EC0F11C360650A09B0242000340C1B23DB79CD6E7E1141F
          39793BB753482AE025C60A8BA5C15659E2C2C668119107C0B92C20200A70C25A
          8F0F2A6556AEBCE232BBF3CE3BED871F7EF0AE600CE78308204B4BDC9212E6CA
          B29D06B84E9830CE060F1A90E4B15853955DA5F7E2FA8524012806F03918EAB7
          DBB76B6363C78CF212DAF8F1BA514CFB645FC158035C61B6575C7EA94F4021A7
          B0CF68EC9BFEF4CC595426508BE78B0558812B06BF964DC4AAD5574D1AD5B175
          7B77B75D7624D7C12C970660AE217B64830A62B259DCBD589CA2BFCC062D2ECC
          E0AF3EB5B5B712C36CBEAB956DBF8795ED2890EDB8B7803605D9CE62B3806C3E
          D0C264B3B281032D46B05436E8139E0662B3EB0A70D5AE78E88DD5421A98FAEA
          6936F6FA0E36FE965E36FED6B504AE7D6CFC0DCD6DCC25CA6675798140560D90
          BD7A51A00D468B649065B353F264030076AADE9BF5F6BE6E415E626E0181EB80
          9F7E95C7C063F212D00014B8B66D2E4621C3D6A2E9E822626BF5D55C57049816
          1F79B36CE05A9CB740B055067C87362D1D5401D7000280830623639B606A186A
          D04AA3B864A17F67B22D0C0C3D1206EBC7902694417FF5043362B0FE9CB0511C
          F105E2E44825690A11522FBEF09CFDF8E38F5EA88F282BFEC2797EC68C19B920
          8178DFF5550A09921A30950686CB55EBEBAF3EB33594DCA645A3BACA21DCDCC1
          9DDFE63C38AF609B5420E8BD564FF7294D12D348B3C52B2205EC7C7085D9FEE7
          867F5BB74EED7D3F1C3F1E0ED1573C02AEEC1F60CD7A4D2CE99A2461E1F5A455
          2B3F8100B667B78EB6D1FA6BCBF56DBA832B61E41C1B13C86A01AE78172F18FA
          8B9D7D9E2A09B4DED30A5AEE6C65DBED9E82EC5E0259B54E7BA76C16C920055A
          B15967B2C1667B653C0D9CC9A6EE5C596DB6EB21B6F58937DAD419B35729C02E
          98F4874D7C642F1B7B43371B77CB3A36FEB63E36E1F6F56CCC95B56DCC450536
          E6B20460170BB2D7492E08D90090459B15A3CD012C6C1656ABF7E67C7161B1E7
          8A83376191EFBCF1A66EC484B5220B646BD12F8F88ACFC7D141744E0AE32B24A
          47A826CF278C1FEB499F830D64E3E75754CDF8E2994521B862397EFFBD77ECFC
          F3CE513DA8AA89DB948C44B1EC8D4285B0B4252D4363E0073B85990208B1ACE5
          BB00252089961880C4E738F4933C053729229568E50A0A7C5B1CFD7B76EDE4EE
          53B5AA55F69CAB7C174B3DCCB7050C126F00011D567AE40096E414FEBBF79EBB
          6C8422AA608851DE84FE27D2CA93B09030468101716DE279802C9314862E564A
          FD7FFEC55E5505572A5ED03718D368003DE7ECEC557D54475E0B040FECB8C376
          89C12A351811C54F886FFEC4172E5A77DF759BBB9DE151413FB9A4226904E64E
          1F71AE61C40AF65A9C410B56CD758365B76BD9D4BA746CE30D83A17CDD1C5C9D
          5567B4DF701B2BFE1E5AF216CBE42D00A3B221DFDB5BB7DE68CD081668BEA395
          6BBBABB71CC8762882CD664036910D900CF034906C803B57B87465DDB9F4BCDC
          FA47DB8B1FACDA84D9B37E78DEC6DDBC5ED26E595FC0BA898DBBA9A78DBCB0BC
          8DFA57818D167BA58DB954001B407B451E9B45320064694569B302DCA97756B7
          79BF3D5D22709D38769CFDF8ED77622B023469AEB0D7456AD1538F7E39E718F8
          BF00AEB8FC2C0BB8C6800F00002068E112159A2180D049A5D0BB7468EBEC3691
          08DAE54AB910E2CAEB48AA42C2169E03BE24B56ED74A2B14012D29FA00B26A55
          2BBA9B511B3149CA545F7ED92576E71DB7D96F037FB52993273AA4C114A74F9F
          2E077EA29312300560C97615E1AD006DE43AE57968B19167E0D38F3F7127FC7A
          62E218B15872BB2CA1E5774C3A806B3D19BA36DF6C132F3C580854C0AA077DFD
          E52FC0F7A5179FB563FF79788EB1BA614B8C1D70A50FB37A2BBF571CB0FACA40
          C702B8A21103B06D5A2A57AC64956183F175055453AF81540609E356228BFCBD
          BF6506D705C306D8B4FFDE64175FACD480CDF6B0326D76CE016C02B4BB2540DB
          8106D0C268251BE40C60196D3607B4196DB657EACE05D0763AD0763FFD169B36
          73D5B0D73F65599CFCF23936E6FADE36F6968D6DDCAD1BDBF83BB6B2D15736B7
          11E714086093364A0C76D4C58B02ED9894CD8E056825198C4332A0A5409B3582
          4DD47B531FEA640BA716AF31C324A629A9C724397FB768129E02490AB97A3595
          5D08602D05D7258C8E45B33445696D98EBB282ABFB79A67EA801B461F966898B
          3C002B837DC24871CBE275EDEA553CD51F5158D4AFE239450229B9420344F14F
          AD5AB1825767651B0018BFD0A38F3AD263F70993A54E15A1AB1100C0927E9A72
          0550FF2A5B4E3A92726763EBC3D733D86C48065E6F0ABF57A1E2DB6FBE65A79E
          7292D5D1F1A2EF02AC00169E0B61606AD7B6A503FDAEBBECE4401CC00E5879D6
          2FB5C531D7F7DF7BCBAEBEFC12AB5BB39A7B07E061E1FB1618C28A434A89DFCA
          4A048B5B51C05C61AC1C27130286C086F56A59FF1FBF7360C56B20D220C64450
          68645B45E00A7B9D73DFBFECF3BB6FB51EBB28AB5593EDF3C03561B2099B15D0
          B6CFC806328025B20192814096D62DF134C8490618C182CD763BC82A28FAEBE9
          B7BF2C96D12DAD074049B69F33F42B1B73EBD636E6A68D6DCC2D9BDAD83BB616
          C86E68C3CFAD6CC3CE52FED5F39336F28242901D2DA01D9D022D6C36271B04C8
          A6DAAC1BC0C464BD0974A7BFB26F89CE91489AF9F24FFC538FBDBA75775F57B4
          5702093CF97129B816C1900A97A49148243F428B289E6505D7D002C3728E010B
          568A870080C16B4076DDB57AB8970021A4A79C70ACFB8D9E78C271AE8D520915
          C03CF288C31CC8CE38FD54972BAEBEEA0ABBE6EA2BEDBA6BAFB6CF3EFDD8A8A6
          3A7EDC184FA2324985FF381F0C473C124A9BB5C207502E2E4149801D6C1530A5
          056B750961162E4B668F3EFC886DBBCD56D25C55674BE01A9E0A304BC01009A4
          B56402C0F580FDF7B5E79EFDAF4B0211E515E09A3D8EE47912B9F5C7E0811E5C
          11063FD83D4C13235EB86465196BF4F792A41A8C6F802B0D29A35E9DEA56AB7A
          2525C379C599EBDC39337C42FAABCF2BDE127FEF6F9999AB83D2EBAA057ECD3F
          EDCE87DF1473DD4BDA6BA13C10C09AFF58281B60004B40366704CB7A1A648116
          0358FB7D6DED032FB651E3F5BBFCF64A6A7F4A8F99FCF28536FA868D04AC5B0A
          64B7B27177ED64232E6B65434F51EE5581EBB0B30B6CB818EC8873D5CE2B04D9
          91920B726C3603B4A1CD66D92CC6B009D796B739BF3C5EA273F37470D4B717B8
          6EB06E1F01AA8C1C92063C4A4B59804AC175D181F117A3595AC17479826B780B
          84F12ADFA085460AD0EE22B7ABEBAEBADC9E7AEC6125897EC49E79F2317BE6BF
          4FD90BCF3F6BCF3EF3B4C7E23FF2F083F6FC73CF3840BDF6EACBF6CEDB6FDA27
          1F7FE86DD8D03F6CDCD8D1460DAB9C5688AE99A71B86DE990F11F91149592D1C
          E60AB8464E01B6F56A0402D7BBEFBCCB8D64495ED544C77483162E61A9337F43
          81D91A756BFAC4F0CDD75F3A738D00048481A234D79005C68D1D693F7DF78D03
          292C957D02ACCE36D360826CE45B49820800D49004903160AD756A56B1575F7C
          CE3D0560AE806B92952CF190F05234AB521600DCE64D1A6FC38FDADC66BE74BF
          ED73B62AC1D6DFDACAB6D965B10C36C76461B3C80678197400641377AE42368B
          010C362B5D364096C7F69AEDAF7DB444E0B3BCC077E62F6FDBE85B77B4D13701
          ACDB085877B3D1FFD9D8FE38A5820D11B80E3D43EDCCA40DCF035967B3C805C8
          06E8B2006C116C769CD8EC58E9B513EF461228591630D804C03A4F8F5B6DB6B9
          FBBAB66B211F48456811A9B524705D523C76711AEDFFAAE6BA38708DAC4C210B
          FC1DE68A24100EEE210B04AB0ABD15E085B1925B60AA221D89D022222B9BEB14
          0B3B039EC7B0B647382A8F1808C983EAE9FB52400D36C8923FEA716541350C57
          8BF3E5E4FDD84764C0CA191E91A05411E1A6FFDC68BD7A76F7042A61CC02B858
          B673EEAE310B5C5BEA3DDCAA98048AD25CE35A141E5FE2533B7EDC28FBADFF4F
          1E9106D36722025801D8E85B37E0A5DE0225D15DD1CE433F67228065C35E5F7B
          E9F9D49895144AF4FB60750257006CECD377D9B82336B0FEDF7C6FEDB6534E80
          465B170BAE8BB2D9549B5D04685336EBC10985DA6C41E7FDAC9C0C600FBEF4D1
          4A01D8F99347DAB8C78FB351FF91BE7ACB8E36E68EDD6C8CC075C8590D6CD071
          0502D8021B72AADA696AA727403B4C201B4CD6D9AC98ACB7005AD86C002D4630
          2403B5D102E0191F5E52E2F3C2823B4765406014FBEFBD8F74D6DAEE2DB008B0
          2E46732D055731FE34BD5F80EBBBEFBCE545F2FE0EB846EC7F0C7E74429EB35C
          0EA316895B8E39F230D58DFAD0C35F49CEE2C95B7051C2FFD3A3A0923CA7949D
          66E0B3CC0FC08DF228F118CC10A00A50CC02E85F81ACE8A56ED60D29D2F061FC
          728095E6FAEB2FFDEDFC73CF73BFD9AE32C4B99780DC9C1A8AA5C25C03F49A8A
          1D7650F4D655575E6EC3870D5924E94B18B41607AE1E2DA589C619ABD8315203
          E1BEE8AEC158798FC636397F5E92662FA6450A468E95890077B51A552BD803CA
          854C1041E28E95E4990D708D3C0F7F4F1458C6C42D5956386BCC08FB71EF756C
          CE7F4EB5373FFEC96AF79021AAE97656AE5DA1E6BA3889E02FEFA3CDB683CD66
          3D0D1605DA82367B5AC34D8EB1373FFDA1C440B42C2CF64FCD6493DFBED146FE
          671B1B75EB2E36EAB65D6DCC3DFBDBB08BBBDA6F4716D8A0E30B6CF04965BCFD
          71B21A400BC8AAE5D86C2A190C13C80E4F2503D767530398CB0662B223F5DEB8
          FFB4B079A34B5ED2065900E6AAC24B76D2710A1B548D2074D755ED2DE0253864
          7CC936B4C155ED8A9535DE389064CA3C872B16114259700D17AC28A1C3B27249
          FA5EC4C007C8C2B6827145400146ACC88A05B09253007075B077FD31C92F0A03
          8D257A58F4D141DDC04475BDE5F8970F76710C78113850EB5FDFF7DEB7138F3F
          C1D3F791DE32AAE3A2BDE22D10462692A46CB2F1FA76CBCD37DAE4491372D9AF
          1227ACA2BD05726006B8CA17164316864026248015DD35C03512D604B816ABBB
          A6E1B9E18FCB44807BD7CD375CE7D16611FE9ACDA51046B8BFDBC57F4F734D75
          CF618FDF665FF6AC68F6EA7DF6D0EBDF5BE5367BCBC0B5EDB2016C18C0DC0896
          950D0AFD660B5AEF662DB73ED1BEFC71C5552998FEF5B336EAE6DDD47615B8EE
          6163EE3BC4865FB3890D3CBCACFDF6CF02FBFDB8B262AF6AC70B604F503B1190
          159B5583CD0ECDB0592403B45998EC22DA6C6A04C3E360EAEBA72CD564E1C98C
          B1E26AC976EB8D3759EF6E3D9CB9AE514331E8C5C802C52DFD97F47971B2C0FF
          65700DDD311855780A84533FEFE32570C231FF5C24E5A05BADC94A95FA9DC6A0
          FEAB55BD084B3BB5A068F88FA6E0B53CAB42B997817678C179E7DB16929F2A55
          2C2FB6AA895C209AAB362C70050859C603AE5B6DB9A927DF2617EDC7D288BFFC
          F273FBEEBB7EF6CDB749EBD72FBF7DADF7BEB62FBFF8C413DAECB7D7EEB6D946
          EBBB0110572C5A364F4336414E49C135A92B479496FC7105AE1811BFFFEE6B97
          06985CF3C175956BAEC10817481BFAE6A04DECDB5E15CCBE7CCDEE78F12BAB2C
          7DF4EF006C8ED53A9B4DDDB95C9F4D986C418B9DADED96C7D947FD062C152895
          84C5CEECDFD746DF79A08DBC797701EBDE02D6C3C46077B4018757B1018716D8
          C0A3CAD96FB4A3CBDAEFC726CD813605D984CD2E5E36181E402B363B4C72C298
          7FB7B60513062ED579E4469200F6A1FBEEB71DB7DED67557C0D5CB2EAF226F81
          FFCBE01A7A2B20CB321903164C2BA2A6781FE64ACAC1BE4AD4620B13A686337B
          E8A4F9ACB42880CDD6D972604DC8E5A26D190AEF65C361E377392E767CC07EFB
          DBDA6BF5F6642C18B482CD7BA00561A669562C64815E3DBBDAFEFBED63175F74
          A1EA569D2777CD7FD9395A159C77C1F9DECE3F3FBF9DABF7D4CE3BCB418F7486
          7D7AF7F4E57F9435A72F23E4B524095B72009CE6BAE57873C637B157AEC11BAF
          BFEC7D5F280324C6ACD5461608B09AD8F7157BBF7B45FB6E835AB6E09397ECC9
          F77EB2BAF8AA2EB5065BB49CE006B088027390957742F39DACD18647DA8BEF7D
          BD54C0B424809D35E0631B75F76136E2E6BD6CE46DFBD998FB8FB29137ED61BF
          1E5AD3FA1F5860038E286F038F2867038F14B8AA0D3C4A4C16903D46E0EA205B
          C6417690982C6C7670806C2A1B0C15980E0B6D16639818EEB48F6E5CEAE3F711
          45B678B577E57F78D1B9E73BB8E229F0FF3BB86601A7A44BB795250B64238860
          AEBC0EEF011EAB5428EB69EFDE7FFB8D045CA531C25CBDD4887C40B30CD40B16
          A6BEA13CCE5F282D56795EE72AA136CFDDFA5E04B8FAADA1ED97F62F6489F01E
          E0B5BB64697F9B6DB2A975EAD031890023894AC65004B846362E5CB11AA3C5AA
          5021F905EA28714C2D7DC79B22CB68B56BE7B79A7AAFA655AD52C18D594C42E8
          D5B8AD01AEC802045C4462EE60AB25D15D61D8B86301AE9EFB160943063892E5
          DC7337E5679244E52113157A0A2C7DFFE5F7F77291053C09846E8EDFAE3CD9DE
          6E5960FD366B68F6CE63F661BFC1D6651BE566ADB7A595699D1F64B00C9A6CBE
          DFAC40B6A0D52E565586AF2BEF7CCEE6CC5D723C7E71AC75C64FEF09588F14B0
          EE2B603DC8C63C78AC0DBF710FFBE5E09AF6F33E05D6FF900ADE7E3DB4BCFD7A
          58793159350016A0FD274C564D20EB6C36950C8A64B3E8B202D93FA4DB8EBB67
          275B386BD252832B7EAE0BD2EA9C23870E5386ACBED6A1551BCF8885C7C0FFAF
          CC7569F210646FF69501AE59E6CAF300566481C8D49FCDE70AB81286397D9A92
          63679867B82C05A002A459602D0A5C036473736E09C1356BFC8AE082AC2C8151
          0BCF94AE9DBB58CBE62D3CCB1621CE1887306A0560450EDBBA4AD68D2B161509
          3A756C6F6DDA28C9B78C60B4A6AA82406BA6E4428B36E584151013DDC57E7061
          0340F13E88DC0968D6D19F2589CCCA458C0958A3F47CEE58C55C61C7175F74BE
          CB02180F311A2EEA86B51A812BC0357BE410EBB7DF7AF64EEB02FB6CAD2A36E7
          C9EB6CDC842976C8D9F75A99663B2686AE142097CB632A1900B0054D77B01D8E
          B8CC7EFA6DD8520315BEAC533FFFAF8DBCE3501B71CB0136EACEC36DEC2327DB
          D06B76B49FF6A96C3FEE55603F1F54D17E39A882B7FEFF503B582D05D95F0159
          182D402B9075D9406CD68156201B40EB4CD6B5593DCADB60D8854D6CCE904F97
          FA78E96BCF182FFF438C5AD4B51F35649875EBD0C93AB6568C3AF95C57902CD0
          92BC9D792D5BEA7845CA024B03ACD9256E30B1ACBBD18A3068E56B81BEAC555F
          B96126CD754A7416DE02688B802B06AD7C70CDB2D5A29E03B4C172B3A01ACFD3
          05CD120C4885D34E165CD17C23FC35B620BA6BBCC2AC01D6A66B2A2042390BBC
          30621A9DE586AD34B78087FA4A2620C7015E05AD5BB5B03555A890D65289BA9B
          2B6497D68294988BB4047C01D76C72169F94D2F0D748CE1219C762228BEA0F8B
          930A88CA42BAC01809B886416B6BD59E3BF1044A7ECF71B7365A61D997900A96
          96FB2FBAFD7263AEC10A277DF2A67DBA71437BB76D817DD8A58C12991CAA1292
          53145DF5BD75DC4CC50AEB6FA5E5FC0E25F2872D310003B26D76F528B1FA7D0E
          B1ABEE7ECEC64F9A5622D09A3F71944D7CFD561B71EB2162AB87DAE8FB4F10B0
          9E6A83CEDBD8BEDFB99CFDB07B39FB69BF4AF6D3FE15ED67DA018520FB4B80EC
          C162B28708609DCD0A5C53D900A075900DD9C08D6065ECF7A3F136A860533FBA
          B344C75814E38ECBE856653158FC10A985B4CF5E7B7B86F9766D5B3BCBC06A4F
          3D2332CF533F89842A9454E67D12829004240AD56593BEB452BE82962A0342E3
          B937E5E82CCEA0C59291DFC8F7169839BD30F352B67C34833BC94894DCD011AD
          83FF26F94367AA98DD22F5EE6171B3A93B25ABFA1C2D59F59A9228B9A6253375
          A8BCA599EE272A82893050F64F713CC242239A29F68D93FED9679DE1A54908C4
          F0C2789258BC8653AC0496E0F2539C1741F8BD12EA8A41CBC1559240C802CB3A
          8C9734E194649FB10CCE2D87D11CD386833D61A2CF3EF5785234506CB2832CF9
          3041000B8005BC60B1A1B99244067025710BF71C0C96DCAE30D3A6CA35DC5409
          8692C7C2D644F9129A50E810864BFCBF72240468662B2B00ACB0DA70712B4910
          817B33A4C7EAF2802602328B51D961FDF5C88E450217DD7769ADB0D05B1767D0
          2AA96B1B7DBFDCC1152018F1E8CDF691986BDFAEE5ECDD3605F6D36E9D6DC1D7
          AFDB8C5973EDFA7BDFB0667D942FA0F1B6CA49B0BD8209965D1E280A7C0B5A88
          210B64BB6D7F92DDF9C49B3661F2F42201EC4F0DBE193F7F68A31F39576C551A
          EB9DC7DA9847CFB211771C6D3F1FD1CEFA6D5360DFEF5AC17ED8ABB25A25FB61
          9F4AF6236DDF04681D6C33409B63B302D9AC6C9063B301B44715D86F872BB7C0
          D32739401427552CEE732E32AE32A48F0B579D77DE79C74E38E1046705DCD4A4
          7D43FB0264B9C1A97EC90D4FA62A1281D0A85B1FB595B25AEDCA04D7ACF336D1
          3CB4248B93C230652CE5868FDAF6BFFCF0BD7DFFCDD7F6CD679FD9873ADF579F
          7FDE5E7EF6596FAFBFF8A2BDF3DA6BF6FE9BCAEAFFF65B9E019F7D00A8EC8F24
          CD01DABE0CC4093F2D94471001AE58397065F003AE02D6ACCCB234C694D83680
          95C7C5822BB47319FE5604B8FA8423568D8BD88FDF7D658F3E74AF3BF3C3FE90
          0200D760840017A907013C2FCB22008381C25CB9E7A8840083255177932662A7
          DE240164DA9A9A8C696C430042E74EED1C5CF13E488C67DCA7892F2D21B1D9CA
          04C55D0F0095E386617BC58634D13819CB7AAFD55DBEC4137375BCB2C6ACD516
          5CFF94103EF88673AC6F27B1D75E95EDDD7605F641E77236F6CA7F9A4D1B6663
          A6CE16C8BE6EDDB63ED9CA68395FD0786B2DEBB757FAC2E5A3CB122586A742C1
          1A5B58F30D0EB7F3FEFD988D1D37D9814CDCDF660FEF6FE35FBAD986DF7A94C0
          F45801ECD93646EDF70BB6B57E3BD5B0AFB72AB06F77AD64DFED5ED9BEDBADB2
          7DBF87C0754F3581EC8F7B07C80A60C56883CDFE7C609E6490D1667F4DD9EC80
          23CADAAF328A8DBA7D0F5BA85239CB0AAC7C2F1CC6C32791E5DC77DF7D67975D
          76996DB0C106D6AD6B673973B7F50CF4242DCEB157DDE83058127F00AA3C6FD2
          10AD4BF9443361B32B135CA3B26896B5C68D1E114A0BE7CEF1AAA877DF7E9BFD
          FBEAABEC8A8B2EB2630E3FDC76DB6107DB76F3CD6DEB4D37B59DB7DDD60EDC7B
          6F7FFFA4E38EB5871F7AC026A759A1A8381AECD5AB99A6F5A0426B23E5601244
          A02AA930D7FF11705D063CCEFB4A121D95734582C131E1C0AAE587FBF9277DED
          86EBAEB4BAB5AA3A038C18FDA8321BBEC024A001F400D72E9DDB7BDAC3A8044B
          D1C2C6CE5E650FF0B6A8E61A5A6CCD9AD55DAFEDDEAD931BB09019A8FAEA9560
          E5FE8581306483D05F8B03D7C888C5717B391A19C870C5625FED958C7CC4F03F
          3C5823DFA0B5DA822B837FA1966C03FE75A4F5ED58601FF5AA621FF4AC62EFB6
          9216BB51239B78FF450EB233A517BEFEE14F76C4E9B759DBCD8EB18AADB4B447
          3668B29DE729C00856A6F52ECA5BB08BCB088B6B6C0330F31D745DF6515EAE5A
          2D373AD2763FF21ABBFF998FB50C9C6E0B460A545FBFDB46DC7D8A8DB8EB441B
          FDD8F96AE7D9E0ABF6B3EFF66A665F6C52605F6F5341005BC5FAED5CD9BEDD45
          6DD71460015981EDF77BA44C36801626BB9F582C4D4CF6E70353D900C980164C
          F6D0B2D67F3FE9ACD76C69447EFD1D60E5BBC801E86194E908DD0CCBEE7BEFBD
          67D75C738DBBCCC05A61AF30578C0BDCE434D2D6B16C0758790EB8F27A55816B
          64A6FF6BF8A196FE1AE8940AB9E68ACB6DCF5D7771C9816346536E25F6437270
          1E61DD34CE0170A45E3DD2C80107EC6793E4CC1EC99F23DE9EC1C4BE093385C1
          C25C937CAE4AA7B78AC0355F27FEFBC059923D6480352DEFCD84E3D16302D837
          5F7BD14E39F118AB59ADA25BDDA3BC0BCFB3F20040B8ED969B89FD9FA1BE7CD3
          3EFFEC131BF0EB2FD6FF979FBCFDFCF38F4AD6FD73DA785ED87EF8E947A3E1EB
          FAF9671F19D9B128CE889F6B802B2C166F816CD6B14890B32480E57861D61DDB
          48FF4DC1155F5726024A6E7FDBEF4B2F4393D3E0D392DBAB35B83ABB9A394300
          FB4F07D80F7B56B68FD6AE6E7DC560DF6951605F6EDE4C89504EB7854349EE30
          5FCBF759F6C1E7BFDAF5F7BD627B1D7DAD75DAF458ABDE593EAD72C12A6825E0
          6C26860BBBD5923FD7784F9F91DEB08AF213B4DDE828DBF9B02BEDD25B9FB3B7
          FAFEA8B21454D29C6A0B07C968F4CA2D36F2BED36DC4FD67DA98279500E691F3
          EDF7CBF6B56FF76C659FAF5F20602D635F6D5BD9BEDEAE8A7DBD7D15FB6607B5
          1D2B3BC8E6032D8C1690FD7ECF1468736C3601DA9F52904D809626DD5646B1A1
          576D65F326149F4EB024C00B530D9F481E91086894F1A0F01CCB3198030053B5
          4A25EBD8A15DA2C1A27D490A203728394183B5526A39670403B856A2E69A2DFB
          11D131D9F7486A72FAC92759EF1EDD3DE51EA9F9024CD189619994B7016401D7
          4675EB7A9A3ECA9B74EBD6C57EFAE907D58C1AB4A80F632A0944BA3934D7FFEB
          E0CA0484E5DC570B32B4E183FBDC7F1FB77DF7DAD54BCC004E9174DAA3D5D21A
          5A3C4793DD7FEF3DEC86EBAF7136188965C8DAE5CFC50E274E8C3651CF0BDB84
          49138D3656DB0D1B3AC84BC91041B5C1BABD13D62A60055423AB18F24A30D728
          08B9388005543B290D228D09C18155EC95C9A07AB54AEEEB3A78D06F85CC3DD5
          FE1336FFD7BF55AEB966C161819663BF5D76BCF5ED52D63E901FECC702D88F7A
          57B3F73B95B777E5B6F5C9FA6BD8AF27ED64D35F95CFD9D89F7436BAA80B282D
          B1D0464E9C611F7CA952262F2849EFFDAFDB55B73C6F97DFF8AC5D71D373FEFC
          967B5FB3C79EFBD8DEFBBCBF0D192D6F0569BA36436E2D2A816D7F7C61F33E78
          D0C63D71998D7AF45F36FA7101EAE397D8B0DB4FB2FE276F655F6DD7D83EE95D
          C63E5DAFAC80BEB27DB55555FB72AB2A7A54DB4600BBAD9A80F69BED2B0B6805
          B000ED4E099BFD2E65B32E1938D0666403E9B23FC166F74536A095B31FF710B0
          5EBDBDCD9FF4F7196BF46DD66D269BD8D835EF11231C44A3A47230572A72C2CC
          0054C0151608C383B502AE805300ECCA04D79005C2A005B0B28C8765F2DE45FF
          BAC036DD7003CFCC1F4CBB7E2D2541D62490D589015A986CE7B66D65B0E8E4E7
          5FB66C81BDF1C66B3672E470D75D69B15FCF22953A8DBFFDD61B0EAEC827FF57
          996B802B6CDE33F50B5C1F79F01EDB72B30D3D9B54F88AA2BB02A8C15E597A57
          2853A095C54EF6C0FD77E774CCC897002B9CAE74888CE9A41556457083AC0C92
          B424098DFC786564BAEFAEDB6D8B4D36B45AF27B4577053C59CAA359E7076B2C
          89B9C25A910478749FD7145C9119F0ABBDEFDE3B15A9D52F674C2D2E8860B502
          57F7819D37D786DC7E8983EA073272F1088BA57DD0B582BD27CF82F73B5614B8
          35B701A7EE6CA3EE39D7A6BFF790FD39B0AFD9E86F554DED77B3D9A3CDE62A6F
          E5BC094AA1AEC7997AAD0C5236F6175545F8CCFEFC4106B30F1EB3296FDC6913
          9FBBD64603AA4F2A79C403E7DAA06B8EB49F4FDCC6BEDAA9A57DDCBB927DD443
          A0BE6E79FB7CE3AAF6F926B42AF6C5666A9B57B12FB750DB520D90DD3A05D900
          5A40962690CDB159012C201B40FB038C160398D8EC0F7B9495B7817209DC7698
          2D983EE16F4B01D9492BBB848C1874DE0B2DF6C30FDEB773CE3ED375D7B0DA22
          11605CA08448DD9A353C11335AABEBAD62B3ABCA5B202A8C16A6C84BD2D43120
          278E1DE3C7DBA5437B9F04980CDC08274313C0CA84C071C7B1F31E9F61ACF3C9
          45D2C8934F3EEEE197B0A7C822C580CF669C82B95EA868A2550DAE2B5F1A5854
          738D8436002BD2C0C5179EE34620CFD92A2F00802A425F791DA907D15CC9F6C5
          321B70CCA6422C2EE229A2CBBC84F7ECE932306915ABBCAE575E7A91E78E6D92
          56968D105B403612659724FC35AA11C0BCD15BC9B20573055C8F3FEE28AF2F16
          19C622FFEC6A2F0BE42F6F473FFF80DCB41A253A2C001B20AB470C5F4806E8B2
          EF772810C3AD2576D9CE7E387C231B70DEDEF6C7BF8FB1E1779E69231FB8D046
          3D2C16FAE8255ADAEBF1E18BF4DE0536FCEEB36CC8CD27DAEF571D61FDCFDADD
          BE3F6C43FB72FBF6F6499FBAF6419772D657FBFCB07B59FB789DCAF6E9FA55ED
          D30DABA95595065CD81C64374D40D6815620EB4C5620FB950096E66C56001B6C
          F65B6403B459186D0664BFDBA14046B02A36E6A94B759FCE5DAEC0EA9A36C947
          BCBEFCA256E69C2FA758C07DF7DE6D7BEE21C944A5959108D060910900AAC870
          4FC910582B6C36CB04DBC8A791D6BAB1186DEA8AD51ABD161FC7BC16B90858C2
          450D2DF45C07380137068359CAE0153246367C938597BB5C89A906F0B9C149E0
          870BD5C8A1433C333FCBFC60D7210590430196D9788D24328DF7910760AFFC3E
          C6BC2A92449E78E231FB56C9A563900773E57518B460AEA79D7AB2FB71B24F00
          3A009BC760F54B624959E7F6F0CB8C256C3CC2BC48DCF271DF77737EAE38B253
          5922FA27AE69E4545DDCF2B4248A6A71DBFC351354525B2CDCC4D05B01248FC2
          4AA3B200D8EEB2E877EDD0C6D92B008BFFEEA9271E67837EFF55EE73BA3F750D
          5D72498D65F9CBECECBDCB1DEC0113143154A62AC0F9930FDE93F1F21667AE14
          6D64F98F148041ABA83C038BBB2E2E05A40D706592F0E28EBA57EBCB4D6BF7DD
          76B2C71F7B24771FC4EA297BBCF9E3ACA413E00A71C55A926638F5DB4FADDFFE
          EB5BDFF602BB1E629101B259B05DABAA7DD0ADA2BC0DCA89D10A6CB5EDFB1DCA
          0B24A5DBF6AA6E1FAF5BD33ED9A0AE7DB2E11A9215EAFAEB0F7B8915EBF3F7DB
          97F7ED0170C0FA83EEC96F20477CBC368F6AEB5615E80A60D753DB206D29C8E6
          D82C202B36FB65B0D9900C82CDA2CDA6409B930C3082ED5CC1BD0D7E3EB2834D
          F9F4B9E50EAAB97C0E69E6A400D9F01A88D7186B060EE82FE3C03B6EC4025CD1
          20B1E22209E02D00A00242C15C0157C0C94145450F9BD717E0EA115F577F2D70
          5E12B802AC002DCC123D1730E439A9E7A64F2D2C35121300E0C1B2709634BE70
          9502F8783D5A460696F23FF4FBC68F15D6CA3E8940033C79A4858C11796C2359
          38BFDB5D7A2BE1976FBEF9BA0D92AEC66FC05E317091B1097DD10791C0E4A30F
          FBBA2C80B740841087818C47745DFAA5387FD66C8ED1FC9CAE51C994EA030EAE
          E415C02A4F3628129FE74D94E10F9C05C86509FD5D12C0FE055C737EAEC9B1ED
          B5FB4EEE8645513FCFDD9A26C90EA005B8A806BBDEDABDECAEDB6E56026F65C2
          12F30CED366497C41BA1F048E21EF0F349144FFF9FEFE2D83F66C450CFBF4049
          19266DFC5B0158F2BC864490DFBF455D9B902EC2AB01BD15807569413EB59D3A
          B6B5EBFF7DAD1300983300EF72861756CC54AE286E962AE2F3950EAE1E5DA424
          C183AE3B532CB28600502C5660FA5790453A48D92DC0CB36F23A80E102CA1F4A
          BF45C3E5D15FEB7D3E5F645F7C3FBB8F1C80A720BB0E405BCD3E016461B3006D
          B0592403DAA66A4806B48C64F0256C166D3605598C605F6D296F836DCBC9FB60
          7F9B33EAB71506ACE18A85012B062040C56BC02A19A40B1D40B0D4EEBDD71E39
          600560091E0050D12FB30EFF914DCB9961CA5801551AAFDB6A99BD2470A53C34
          E01A52038F14D7C3A011CC35091A488C71C1D400D32C6380B94E9830CE7ED1B1
          BFF2C2F31EE8000B0660430608960DAB8E630C2357C80238B2AFB1461DFBFCF3
          4F8DB2D0FC060C99419463560213021598849005F0B20870653FF13CE791B084
          4082706A8F5C02D9D70C66ACDD187E88D07AEFADD773F95C71D60F700D80CD67
          B1CB30B64BF89545658108200058A72919FEDE7BEC6C15A45BB76B2D077F016B
          0385B786D700462240B6BE8A2452B5F59E3B6E4DB34C25AC15800D97B7E4FA16
          1E52960C44B8AF97F0962C00939F3066A40D1AF08BAF842839CE4A20978630AD
          021BBEAF4B5C4D50723C0D7AE058C92BB066C3A4922C2E5FE44120C10C851CC3
          B73A007669F4D5A23A7B95806BB0AFC95FBC6FDF1EB4912FD93FE8262DB62890
          CD67B6CBF975916CD6650335B15907D81CD026B2418ECDBA6C5059AFCBB9C7C1
          0F8774B609EF3DB1424135FA8E9B334215B909A2EE51BC975D9291FEAD46F5AA
          AE4162E802A8DC9D49CC12A0CD466885E3FC229159A92CD05206B1E264014223
          01EC900428194D3ED788D0E25899006270C544902DC10CF83118D149EFBBEB4E
          9730D6A8553339CED468057BF5C92065D61C6F80AB03AFB665898F63FAEFBF0F
          CC19B4C2250B1041730D171C9265C35C997CD86FBEA18CDF75A02D01B8660BE7
          E5572D8D2082CF3FFE2065AD497967C035FA240C948B2C9D8B90804A889EC56C
          56E88AE52C365A9AB16BABCD37721F5796D218B222090A7A2BA0859E89CF2BB1
          FACF3DFD84B370D86724FD8E5A65F43BC6AC60AF8BACB47484D001263E2405A4
          8189634739B877EFD4DE2B1FD08F2487C1FF1506CB2A204A982FE99A78C8AB00
          348C71248189E4DE1453247F2F75CA06E91EC94A1849204B22BDF117F76DB6F4
          7871FDBF4AC1D519988C16A39EBCDDBEDCB1631274D0BDC25F59EC7206D4BFB0
          E474FF0EB462B34806CE664336C867B318C160B41B57B04FFB2851CD6E4D6CF8
          BD17C8D6B6FCBC018A73C7CA1F789160B970299964B607D8B8C177DA717BD720
          9107585ED322FCD5B54C816D8756CA9F49E48CC0A5512D31DCDA0A9395340070
          355D43CED70A0D2D8EB9627C005C61AC51029A1B77D284898BD4650AF73122CC
          18787808C4CD1DCFB1F25FAC14755442C500878401C0718CE4507030D5F105CB
          F6E3961B96FBEBEA9C58E26FB4D106B9A8ACF04A60FFF44D4E16109053BF8ABA
          4FE8D268B8EC3B0C6525D55CF325019815914B91B885CFC9FA74D4E1877881BC
          1953C496BC0A011151893192C18BBFF2D4A9537393671674B38CF6EF26CD8E89
          2D174010D9A160F35327F9D2BCCFDA3DAC6AA5B2D6BE4DE22B8ADEDAB34B077F
          04B078AC27803AE78C53BDBA4212AB3F35E73F1CD794D5C9BC79CAE4850A931A
          5E73656452700D5900263F6FD6742F81431832E04A4415608A3B562489016C8B
          0B22E0987119436F85B9C2C0C95780A4409219982B76098A3F6240259A2F2677
          084B1C23CFF129CF25102F0E59F5F92A07D70091B92A4E36ECBE6BEC8BEDDA38
          C87EA0BC041FE11BBB92807591DF494116C9E0E300DA60B31B54B14FD696616C
          2DF9EA6ED74046B4D36DF690FE2B85AD6601375F87CBBFD630B208F104602966
          17E1882CB3B3D24018B51AD651044B0A5EED9B35778356B37A093BECD8A2A5AD
          D5B963B1E01A06AD08540064A72BAE3F982B376B940F296405490E4D06203738
          8D68AAFBEFBFD7D6E9D5D3811A06ECD16402501AC749821A40BF5EB5EA3E11A0
          C1766DDFDE270924095CD01E79E4219718D81FD15ABEF414339EA8F782DDC3B2
          60AEA79F768A7F877E0050D91F8F802D12814B034B60AE210744DED17C7900F7
          1FDA8EDB6E65679D76B2CB02EE4F2A70A5940A6009B83280B3AC896B1B9F05EB
          2FC1D82E76932CB846745C943C01DCD084F16FEDDAA96D62D44AFD5AA3644A04
          14A0B95E7FCD954A7DF99A27A16169EF80AD7B9084281E94400145012B2D2691
          9C9FB6782BC9683C820EFD59FDC1C4C331ECBCDDD6B69E72BBC2F801D7AC5F6B
          49B2638547039206EE635436A001CC84DA524A1D9FF0F5FAACE3F7494CEC49E0
          49724DE2780B25B762BBD637586DC03507B213C6D888476EB27EFBAEEB5AAA07
          20F4A8B84A24033784A1CBAE53558630745EF4E1F2D66FAFCE36ECAE8B1546FB
          FB4A07D5E8A7A22E6F56804747A40122DCE800C88F3F7CE7E59BDDED4AEC32BC
          04005ADECB1A89002D401590EDD4B295B56B2A435731B2007AAB67C8D2921C8F
          047E03201F3C70808D1A31D24135E48B903560690C3C3C06B2CC959BFCD043FE
          E1ACD5A3C7747C041044141900C8F1C25A5D1210830D7D14E313CC9C41139547
          BD0FD2627E2C3F23674118B32E5142E71DB6DF56F956CB1B3EB40069A73632E2
          487EF0882FFD1E8FC5816BD492CA967761204766AC484508A3451A18F2FB0007
          13BC05F86320C390F80B161BEF470E89257911946CD8275B2D095C014A268006
          6B28BE5F1A65DB564969EABA2A9B8DEE4AA37E165201E0DAAB5B67BBF3D69BDC
          C7359B0C25DCDDC2B589557651E04A1AC524798F261AB1DF3933B4A21DF687F6
          DFDC3D0660FCB056E480481253125900C61A19B15CCA90418B86D7412BB16E3C
          06285D53463ED4FF923FF5DB72C92BBC1793492DC7B033124149FA79B503D79C
          A6A8CC47933E7ADD065C7C947DB14D6B970B00DA0F148CF011C6AB15CD68A5FF
          7ED8AD7CC2A2F5F8D9A68DADFF19FBDAB8D71FB7F9AABD53DCB27D457F9E05D2
          229FE3B82D2680509F2CB7E6B844F0C4E38F2A59F3210E56780BF08846E99670
          FC46A5AF86140070B5516B2F606DD744834B56FB56F83BEA66A415A61E142B10
          F086410B8F03F68BEE0A70F77DE76DFB6DC040A3A8220C8D2C5E3C07503C2F2D
          B5C0B42CE67DCA38F308D3DD71FB1D722E58EC0FDD95657FE8A1E192155E0D4C
          00306D5EC36E8F38E230312219FA08E5C4ED8A028029C02209FCACC8AD8F3FFA
          C02EBFF8224517EDE51160802B4C1580065C237D23BFDB40499EB3516C7F79AE
          A5264697A83C80012B978044AC2B6A6AC16C29F772E1B96779A1BCB7DF7ACD06
          FF3EC8A39682A5F2989D88788D84825C1003BE24037CC9DB24567140AD509699
          6F5F7FF599DDF8EF6B54557863072674D5CE8AC36FDE507EA275E41BDD402B9F
          BAD57D990D23E4731825115AF7DE73878D1E35CC5960787E84EC50E8729568EE
          853A6692A8C72BDA2A9F0192C4D79F7FE27DE3A563D2A43080295E03F46984C1
          16270BC0B25B364E7C74FD799AC4857DC05C69789454974D627B4DAED7509EE6
          D38FBD3F6629841F17318EDB99F50CF9E0E60CC6C5F7FE6A0BAE59709A37699C
          8D7DED491B70D151F6F59E3D1D5813572B019F82123E10F07ED833F5185036AE
          12032F008A0782BECB3E7C5F9DCBE4C275BFDCA9A3FD72E6FE36EABF77CBFA5F
          B292D72B1A5463FF2501575859360A89E743870C566DF86F3DDA09B042CB44BF
          ECD6A183030A6C15D60AC876500ECF00D6B692085A098C9704AEEE8625CBAE87
          A00A8871F807C06FBBE946FBE2B3CF1D5801CF48349A7D0DD84E545E5A8096E4
          CC23860DB75E3D7A3A6B8DAC5DEEDAA57DC7321D5609F88574C1F1D238FEEA15
          2B7A6496CC44365DDA1D924368693CC7F586C42E30D63EBDD7F2400526039876
          B063D82B8DC90220E5779704AE61BDCE96790118F0018D252D9F91611FD058BB
          6737DB6BB79DED98A38FB02F3FFF4221BA4A22A27C11F965B0C38802CB87FD87
          6659FCF02E065AD388B564C99E44AEB1A4BFE3F69B3DDACA7D4BD33CA8BEA416
          48B56854D7FAF4EC6C6D9A3670168B518B461001DB930C65C81FBFD9C081BFBA
          BC13724F385B791EDA145843EAC819199186A64DF692E384BF12A145FFD15780
          21D2408F2E1D733972A3E8E39200D66D046B6A15A6492058AC57814DFD5C3BCA
          57B7B5826B482C43DED9DD76DBC5AEBBEE1AEF8BD94A16940B70502014E01A45
          224BD2F7FF13E09A05ACF99AD5A6FFF4958D16E00DBCF868791B6C6C9F6FD34A
          D6FDFA690458D9C437561E080EC0629E80B0379EABF1997F8EAE2B702504F7F3
          2D5B488AE863BF9EAB84D99225A6F6FB58062A19837423AC2CC05C9ADF29EEE2
          86253C4A347BBECAD4876FC694C9F6CE1BAFDB89C71E2343413BAB54AEACD5A8
          52D997D9805530D8002B18212C163FD7D662A8D10A8D5BE47955A38E921AFB88
          BCB180F7969B6E62FFB9FE061B397C84B355DAE48993DC3D8BBB17961AA0CB7B
          541ABDE2B2CB3D39338C957DD0006C1AF968013A96E9FC569776ED5C13AD5DA9
          B203EDE6EBAD6F871E70802FEFA64E9FA25497890618AE586F2960E0D24B2EB2
          B6CA924FD41A7203C0CA6483FECC24C3FE60AB110A1BFD521CB886512B96AE00
          29EE57B0D8005F982BA9F398E0081BAD5CA99CD59566BCF5D65BDBA5975EEA86
          ACD05661AFB460795ED34A7F118957DC7D501C730DB984FB83A8BEFFDC706DE2
          FFA9E373C6489A3E313EC0A99DC0B39396E975094995760C73C5B8D54DBEA211
          29450D2D96DA7DD65DDB0E3A707FFBFEFB6F7346A270B90A6210E01AB97C91AD
          3EFDE4035BAB5737F70A809D721C1134E06C332F90A038A3566B4DF8DCA75106
          9C49225224925BA0678F2E9E7783FBA09DB2C7B555900D2567A8FD3571F2A45C
          52F23902572FADB3149577FFE7C0351F80F0ED983B7EB44DFBFE0B9BF0CEF3CE
          3209B5FDFDAA533C694CFF730FB65FCED8DF5BFFB3FF61032E3CD27EBBE244FB
          E3E60B6CE413B7DBF8B79EB129DF7C6C73460FF352354B0370AB72DBE2061532
          0003863871E4019E635848D2C9CD970FE1AFF6E8830FB84410390688C9C720E4
          4950C45C234AABAD24015EAF2937A525816B542470877E315680303C138E3CFC
          087BEA89276DCCA8D19ED91E760AA0525181B2DB53264DB67163C6DAEBAFBE66
          E79C75B66DB8FE06D6081FDB3410C113B1A4EE58E135108627E40180B07EF51A
          B6599FF5ECAC134FB2271E52F8345AAEACF1480311620B4B7AF5D5979585FE38
          CFDD8A7B1ABF81D10C2067B2C120C60483F65AAFA65CC0F43C1BB0B05880C5CF
          572D96FFB0D4D05AD7EADEC58D2818B4008848A9171553EBD55DC37AF6EC697B
          EEB9A7B3231A009B05D770BCCF4A07C5DD07C5816B482530F97BEFB9CBF6DD67
          0FCFC70A0BF5C4D45AF2A3A9E2D3DA5EC7DF01B728D2FFE93C89D00A2B7C304A
          2CF0A41D24EC7A83F5FBB841F10781A6B3635F47248EF9E1E79CB0D805DE9E52
          98F2C9271DE7C9B60334A36E165A2BEF45DDAC00DAE264019701DC16A07488D2
          8899240057AE035513D05DC918475878A74E1DDC75AFBEBC6AB6DB6E1B1B3B7E
          9C3357D836E0EADEE3FF97C0B52400E7CE756A25D9F67F659B6207956E564FC0
          91862002AA3432F08F19A1C436841B4AD7264FEAAF4AF776EB8DFFB11A956438
          A85CD9810A8085C1AD59A7AE5BE261AE30D925B96201AE44D3B0B4A6B19CEFD6
          A9A303174059BD6A35EBD8BE83ADBBF63A06D81E7CD03FEC88C30EB71DB6DBDE
          FAACB3AE75EED8C96AC8F2DF5A06B41EDDBA5BAD1A351D5059B2D30055C01AB9
          81F7DD682660AD52AE9C6DB2DE7A76D231C7D85CA596FC53D6762A11103E1B7A
          1FCF09244012785CBAF3AEBB28F2487EB018330058F7A4903B1AC70CD8861C11
          01114C1401EED92A0BD9E7C14CA35E569476010018CC0044EF1E5D73BA2CFA2C
          9F61B1EED8B1A3F2203450A299B23ACEE16ED4F2FA553A979001B23E97C55EFF
          126D90001B007BD38D37D8CE3BEDA0D2D9655D878CF2E084BDE26E15FEAD8013
          32008103802E7EA478134451C1D031890404B06082F708B493EB90002BAC3BAA
          DD2687995402008C61CDCDC58859F2470E81300E223D603863C2A22F015E1E97
          1835A7E30D4F01CE81F3C115CB831204B24C244CB234A4018EB767CFEE56AD5A
          151B326CA8B3D5243417635B02AE711D8AEBE2FF79E6FABF0286CBFB388BBBB0
          E10A93738C4EC11680C52DCB4BA0CC223268818D1E3ECCBEFAEC53193036D5CD
          DBD5C10580CD66E00FFD31F20814F5181E08917315308C2085C8254B10034C61
          DD757ADB3A6BAF659B6FB6892FCFC95CCF67F8990278BC87B53F720A10B24B03
          A803FCD83F6DF79D77B2CB2EFA97477391244823C14BC0001CEE98AE3645E78C
          AB0F4BD0A79F7ED2761290D413B8E2FB4B236398B35881420026BF13E702AB8D
          0C628B0357981083157000245822F31A5F4A9240933F942CFB7C1EDBB01D4CAF
          8D8C676B6AA2A8A4090E70E50FF61A4C290B46CB0B64B33916A8C2B0D5969B7B
          B009FD11201713469456E175F8EF2279C0D401C26A552BEABAC9C759D791FC15
          3CE253DD4A007BEDB557BB86992DEFC3A401A8872480DB16BF4F100740D756FE
          A954927586293065DFB4E85F1EE96FFA78492D641A8E33B4702F214365028129
          138007D6A49A2BE5683866F4D7214386F8E496F516C8AE1E8A1B83A5E0AA4086
          E50D7C2B637FC55DD85C76234AA4A46E4EE1DB1989A21D5CA93FA59979B29640
          77DE7A8B1CDC0F93D1A0B355AB50C1D6A851C397C8689A80AB5BCB89C95E4C8B
          F231B1CC46BF24E98AD7EED260EBDAA5532E810CC964184800693D85A87AC214
          DDE09DB534E3399F31C8D14201B5C87F00C8756AD7D64116CD927D236F7CFDF9
          677E1ED3941754A3D6C135F21530C160CC6230A3C33EFAE8C30EAE84C6020000
          3FC7C7B130D0C247370C6901E201EA8B035796B300A95731D573C000E0E439CB
          4F3EAB23C6C7FBBCC700675B4FAA43A8AD560A949DC6B0C51FEC3598521852B2
          83FBEFEAAE4C3E61E4C3456F938D37F40986E00B8E1170039C6087B841B12CC7
          A8C46394D28EDA5A35316E91E3354D75499FD29F2CB3AFBCF2725F31840B19E7
          0068F15E849A728DB6D97A4B9F506900A7978C91EEEACC5F1313150ECA972BF0
          CF38368E913E5C12B8E6572C70FFD6D453808994C99C7BCE2778FD2EEC955A5E
          3C075C932017FCB00B2581924A03C5826B7183B8F4F395D30313C6FE9AB32267
          B34AE587E8E5B4ACB49409CBADA25AC47EF3982B7121D68764F0C76F03E5E378
          AAEDB0CDD6AE9D6274A9564999B548B22D83064C22966CB001C02FE2FF3DBB96
          185FE492E5E665B0C00C196CD100524085ED788F6D3C5C55EFD1005CBECB2005
          64D9867D54AA283F546DC7C038FCB0435440EF0797369CB1921354A04A391818
          B9FBB3A6134BA4922390E0B5D75E718305B95EC96F1B2919BDBE58312D8E6F79
          3FB696C7462B4D64B0D7B163C7E68028F23078DED34C4E866C0831F7C3B23477
          BF42EF146BFCE79187ABA6544FF7F7847902381879002F96FA3159D493065B34
          9825D72D025578E4FA612CBAF9A6FFF8D29FBF441A488246D0BF3D594A2A5DB1
          9A29A76BC235E018F82E930F401AF710F702F7445CB3E2AE03DF2DBAC94D4E20
          1A2B24EE27CE99067BA5717C24FA8949D9E58BD4EFB524A3BE145C4BD24BABC1
          3601AE3188B20681ECE1E5C262B371E2F9CF230D5CFEFB02A79953A7D8A47163
          9558E44DBBF7CE3BEC8A4B2E56528ECDDD07D4B553A57F8B904E5845E2345F58
          593612C1642B7F660740805730C6C8D815EF73B3630C61B9C6408A65222008B8
          124983B3FF91F2617DF699A79D71A31D3B0B17730560BD3A6C66F0E6A491340A
          0C3FC63BEEB8CD594A30644F68A3FD030AD94920FF39DBAC88D69604DFDDBBDB
          5A6BADE5BEAC5C47D86A76291D136996BD16EB9297C9EC94BF6D48477894FCEB
          C2F36DC71DB6F308356AAE013C09FBD4EA81F051359877B07158E5A24D811602
          535F5EAB3139724DB7D87C5325D0BED7251926878405269E1B11F61C095EB8AE
          C8127C1FB003DCF13CE077D85F846F0770C7E4BBA4EB013817DD1280E63E03B8
          23EF06E7DC5CBFBD8E809E505826E7580125C53313EDB5247FA5E05A925E5A0D
          B6015CB380BA3870CD1DEA12C015DD35C21CFD464FD94B30589CB989EE8A84C7
          78194C975BCA8431A3EDF69B6FB24B2EBCC00117CB3A9A2AAE5CE5C57860952C
          29191831C878CECDCB72319AEB9A99E563540A65B0A0B72119909D0A26454E04
          52C2BDF4E2F3EEF0CF40E4D838C6388F5C62E634E432DE8F6C5BE16B0993E539
          03060D90348430D9C1837FF7E42EBFA95AEC30A547C41778716D88CAC5AC8836
          61C20437602129B164066093748CA4C1234B7FB2348DBF2CD02E33C0462E017C
          81057EC846E4811821C31FA54FFE50BF902E923EA14C0EFDF3ABEA62F13CDBB2
          FDC1F7870DFDC3BFCFFB6444C388CA35CB252A47EF47834D5D0303E40972F945
          B5B6E277C78E19E5FBE035FBA39A2FFBE73DAE0F8FF13B8BBB265CDB6C635FD1
          D807C7CA3946E3F7A9D9C671C7788059478EE1C2AA19C5834229B816DF47ABC5
          16806BBE0B4B006C51832B97DDA828900DE69A01566E20000BFF585A24918EE4
          26E1CA45E1B90FFABE67B7DF768B5D71F9A576E619A7D9812A02B8DBAE3BDBF6
          725F616917CC13D0A485353E58204C83F7610DB013C097F4807C1730DD6BCFDD
          E512B4975D79C56576F75D772862E80B1F480C3606648029C7999F9039DC7A18
          0C308F5882B2FCCC822D039A251F801B4B3F1E01DBC86FB0321FC78C19E3A0CA
          1F8FB056FE00D74820920FAE7F176023D72A7D1AD79F3495B865C1342391097D
          C473E2EDC70900310E2EAEF17DEE238CA60076006B002880C56F6107E0DE0ADB
          40DC73FC36DFE3FBBCC7BED836AE13915F5C27AE2D8DE7CB7A9D007C7E8F4905
          60E7D869BC8EE3E35EF331904A1989345032F65A0AAEAB0574167F10802B7F59
          205D1C9375C1BD385920F37918B8B229F8B24B463E8FB2280166DCFCCCEEBF29
          1287A4271411FCCF0DFF76ED6EC30DD6B3B57BF792837637F70CC84A04002B4B
          2FF434CA7FB30D5E030033796789987AE4E107ED75E9A29EAA50038063891B9C
          C7603C01B4493A3B966C49A263DF5E033892B44404507E755906673091C84110
          E0BCB8C7ACC4B03C9FC35AE37A66332FF15E806BFE24FA77C135D202D2A75CD7
          F08DF6EB9DFA9EE6F74BB62F8BECA3B4C05FEC9BC798040348E3B7E2BEE2F701
          E16C96B29C74A0EFBB7F36A5D0D348B26091F1FBCB7A1DB2CC39BB8F08B801E4
          B3A9137D8597B6E2476C0912B7946427A5DBACF81E0870CD07D860B3598386EB
          42C5C80291C4386EF8781D2C06506316F78C5629C0F9AC9DCEE4E137CB7B611C
          8B1CA90C92D1A346F8F20BC64945049276B3DC220A87987E9664A3546980B2C6
          0C1E1A80CD6FC11A72409F4A163018F61B59966280856E0733CDBA1605D0E6BF
          1F450A8B4A735864C9932CCB5F81CFE33AC2580157F4C9A88D166E58F9D999FE
          2EB8E6EE11F44F26A6143830E00488F03CEB3215CC2DFA31FFD127E5F49A6501
          327B7FE5002B23E3E4D821811F842AEB1E8865794C96F99363494095EBBCB8C6
          FE429EE03701F845A50A564904E324AB3AEED1525960C563DD4AFF8525816B76
          D0C5A0CCDEF4C110E231971D3E1D0459708CE50FCBA5C8791A915D71B307C308
          E6E89A94121C93F4D9DDBE94848590D6646935D3264C1C6393E4C40F1385EDF2
          C88D1C12442E34178776DDC0BC1F40999525005EC0DE3F277B3F8383CAA16E28
          49B22AE5123EA74098CD2E0FE06601383E0B2D308C2C2519B4CB7F9B240B5618
          4CE231648100DA00DF6CB6A625AD6096F419D733402CDCF5429F8E3E09F61F09
          5E8A63F67C1E135BDC67F11BDC277E2FC9A383200F970832324F52E65C1F2972
          6F910287DA677632CD4E82D96B57D43529EE78DD152DBC17D20986DFE65EE37E
          F60C5F4A839865D5C96F16FF572A0B14DF47ABC516F9E09A2CFDD109744BA5C5
          E018005EEE456E499E20230D374C4E80ED93946E8BD6354AD2FDA1B1650746DC
          C00146F13A49EEAC7D2B094B587E67CC14BB9D258D4E65CDE7AB2CFACC99895E
          E88C63BE188825E0177F598B31032C403C71344F40525C2A5DE227920480CDB9
          26CFB52F81F96CE50D98A3CDF8C88F13B0F59229C977191C85C6AE34E3BFB625
          F4967E20633EE1B75E09803CA2C1B8D27E2D1C9849D91C67E99EA19E7E2CCCE0
          EFC79B2E5BFFF27E26394A3E338E0930F94E12343079F2E4BF00ACF7A4AEF7A4
          494A602D6D96BF7CAB75A164902C5D7340933BA7CC7B4568EEB9E34E01370B26
          312927F74E028AD9FDC7F36C4997E47ECB5436A0EFD4D77875CC553AC10594EE
          D61FA906FD7E123B0C3FD8B9B393F7B85FB3A09F05D27C1928A4A160CE850C33
          61D2D9D7D94934775FA7896BFC58F47CC2F8B19EC83C5A2E4565B0FCDCDDBCF8
          27A5E05A824E5A1D36C9826BF678B269DB3C4D1A09A795056AFCC409DE18900C
          5896DC94CD98AC0C63B03F0C375EA82F7D0C4301204BE33521A31830301A8CD7
          CD46D1C0D9B3921CB1DC7C0CF4313232CD9E2383C7B4899AED31464C54EED6D1
          36799C5CBA547D60FCB8913669F2589B327582EF73AC986B1846D80F291161B5
          347E8FC6E7B4F1CA8E14915561E4A0D0E11C65279AAE73193752A9ED14343061
          CA541B3741E7367E8C4D9B38565995F45D67C92373868A497A9F73278FC18471
          B0681D97183599B8262A41CFE4496373C7C1E7C9FBE3FC3D92CC709CB4307AF0
          5E1C37FB8DE785EF4DF03E677BDF47FA48BFD162DFEC93EDB84E71ADC88C8506
          3B5DA1BCE3C78FB7112346F835C4A19DF7484DC8B63CE25D10DF4B8257D84F62
          98C9F66D1C3BBF4BE337593DF03EAB148E119986169FC3DE62C511DBF19DDCF5
          4AEF8338BFB82F589DC4F9220FC5759EA7490D1FE4912386C8383922D73F5CA7
          91CA3AE7D74CF925E87B9EB3DF912386E5E4295E87A12CCE8DDF896DC31895BB
          6EFA8C7B371A7DC3FD4EE31EE7FD48A21EF71EF77BCE6897F64D5CFBD08A13A0
          2DFEAF145C8BEFA3D5628BF016C81ECCECD9498624667C061E0C3434B2C47D46
          2E3183E5B2A2481306CDF061B8AFC8C5065716B9A0D07053213DDC00E9A22374
          23F39A473EA3FAEA1069A3BCC655A97FFF9F3D57E71F8307BA5BCCEFBFFF2E37
          9D61BED41F36546E37A3E5C63478800D1E30C8860F1E61A3868EF4DFFC43EFFD
          363071E1E1B7683CC7E527E7EEA3DFC3350A771F7E8BDF1DA63223C3476A3FA3
          46F9B631D0F0C51D376AB817B0E3B807FD31D8FA2B11CDB0C1BFE9B77FF1705E
          CE176D973CA9E8BAE3C78DF2014DE21872CB0E1CF09374DFDF6CE81F43BC4F86
          0E495C74DCC567F01FA9FBCF003FD7649BC4ED07971DDC81D8EFF0A1C3FCBC7F
          FF4DC7A0F7426366BB70118AF738F6AC5B51BC1FFBA52FB94E00298F84C0124C
          3074E850FBE9271DAB1E793F7B4DF35FF31DF227D077EC1737237E37EB1A45BF
          F05E9C0BDB714EBCA6BFD0C5315286BB13DFA5A199738EF9E711AE51E10A45FF
          85EB54F61CB906F4FDE891A3FC377EF9F9FBA41FF5BB94E3A6FFF9DD1F94450B
          8D7E805CBE382EF6C17743C30FF729BE4B8B630F97AA70A18BBEA62FB8D7B8AF
          794EFF703F73AFF13ADCF0182F9007EE3DDCCDB8F7B3FDC47EC3CE9030F7E2FF
          4AC1B5F83E5A2DB6083FD76C74D63C157C9B33573E90696289AFBFFEDA8EFAE7
          11EE279A44D734C939C687A37443453A9152AD09D151FABC01B1FC5418905B14
          EF931188CF22BF25AF231CB08D1CFCEB3750A8AA5A0365A7679F9D3A74541081
          423B1522D94449941B2A8972D7F61D958EAE8DD20F2A8D9B22BA9A2A59461207
          9E445EE131C0EF111AC96F924F937043E2B989F7A7714C1C431392A990B14ADB
          464417C10B448911D34E8139CE83E3E478AA56A9942B6183DF6C0B5552C0ED8B
          F0493236454043439D43CB1649C146229092505485C1929C46256DD8AE91CE11
          C779521FE2B7CB3ED80EEF87264A64D358151078AF814AA044C4193EBC7C37BC
          22DC295DBF81633E8F7C1EDE137CC63112C0B086522812FE4A3001095C1A91B8
          9C72354AA0D344A1C77C4EF416DB54AB564DE9F1DAF936F595BBB681D22C722C
          CD741D62FBC6CA3FCB77D807DBF25DB621290E8DDF257563249921F69EA8BBAC
          8F7275252FC17D0ECF0E22B7228B18E711D158717EE1C3CC35A0BF89A2E33770
          B7631FDC8F6B52E8527D1B9FD1B734F21810DA4AF4176900E94BFA887D718E75
          95E7227CA3D927DF8F7C101C07FBA6F15B6C177DECC10CDA967B83C6BD1F8DFB
          9EE78440D7A5E4BC8E99AC58DCFBDC93DC7F9C9387F0EA3D822B8E38FC507BFE
          B96752FDB578582805D7E2FB68B5D802708D10C8C8F729D933A44877D7F9E69B
          6F3C951E371F217F4986A224910671FDE4ABE42602D83AAB1E5657B942F11EE0
          169F9115A88306136007A07103F21E375E0FB94DF1596F15AD6BA5426FDCD064
          B8EADEB98BE7416DA644CA3D3A13F7DF528F3D358893A272DDBA76F0BC99B865
          45B20C8E238E25F268C66F122193035C958AE9DABD9BB246B5F763E1FB802A99
          F1BB755610830627C9503AB45736231D1FA9FB18C4004DFBB6ED1C5C19A4846C
          02F0F8E00216EDDAAADE5697F6399730F7CD15E874D5B9746897A4A06BAE5A4B
          2D9441A95D9BF84E4BFF1D7C72D98E7DAFA99221AD545194ED236C33422AE977
          9EF319E0CA23BFCD731ABF1993600BEA7529372D60D85E691FBB74517F75EAE4
          600950F2487217C017A00430D9CECF4FFDDDB6B5F6A7E3EEA0A4E7343E03A4D9
          67E7CE9D7D7F6C43BFF01DCE89C83A72069033951488DD3B77C8A5DFA3CF38FE
          F051E6D8E35ECA868CB21DAFA379262CBD069878E49A708E5C7B8E89638BC828
          AE29C9AAF97D1A204BC296AE14404C93BF709E9C33AF69BE1FF55DE420E0BD2E
          BA97E94B7E8FD7D1B7BCC73DC6FDCB6F719F716F715F733F330668DC6BBCC723
          DB412298E8D9179324E0CA9822FFC22B2FBF986ACEC5C34229B816DF47ABC516
          D9DC0211B1335BD61C2AA4606E418BFBE4934FBC4C30839F9B958A990C18D2DC
          E14B4ABED0CE5DBBD8DA7ABE96A29F7ACB17951620DB47A1A5BCDFAB570F0751
          6E4A008FCF695D04D01BC88775CBAD36D56F74D66FB457F1B83E4AF7B791F5E9
          D5DB53CF6DD047D50334B0D65EAB8F0642371F48EBAED3CB9327AFBB562F1F00
          0C10F6DB4165937BA9F85CE7AE9DBCC500E0730665B76E5DACA9126DB00DA1A1
          000F20B1619F756DD3F5D6B28DFAF4F2E3ECD9ADA3F5EEA9F3D2B990B690D6AD
          4B77EBDEB5870657329174EFD1D9BA75EFE4E7C6B9ACD55BFEB5EBF6F4BE22A4
          B6BB7E0B705AA7F7DAFA9E9235EB3B1D3B3098DB3890AEDDBB875A771D5767F5
          A5FAAED7DAFA8DAEDAAE9DBEAB41AADF0458F81EF1E98028FBA431D8E3BCD7D2
          EFF39B349EF7527A3B26BE1E3D7A380802A0BD7BF7B60D37DCD043611D8C04AC
          9C3F8DF35F7BEDB51D5CD75947C7AD635DABA7AE632F5D533DF6EAC535ED9DFB
          2EC00448F33EC7DBA695404AC04A9587384E8E85547E006C802DC7B4B12AE772
          ECB0C4CD36DDD88FB16BD7AEFE3D808BCFB85671CEB13FCE9DEFC7F9D107A4F1
          EBBDCEDA7E0F9278875494C96BF5A9AA0B50A5B5A3EE1FEE1522F398C40035CE
          75FDF5D74FEE075D377CA8494DE8139C7E83FEA325D72BF95D9EF39BDCF3DC43
          DCE3DCDB84B44210782F5EAFABFB92F70054EE77B6653BEE45BEBFFE7AEBFAFE
          985808B97EE595574A8C07A5E05AE2AE5AB51BE6CB026E1DD6217932DFB45CB1
          6776971B8B5B58558B281A5546BD9C34BE93725D429B0D611F2B7B64470A7F40
          DEE3F3302685959C28193E9B3A45E55870BD12B24F9F24277F028BFC60E6CA18
          304C4F16BAC7C05C4916FC6134086B2BC78676E54EFEB2FACFD571924279812C
          C35E39208DD0C15A1DCEE3894F6AA22FF3E706A75143F47B72ED91B599E39923
          8F85E953C67B02174A387B2D39AA1C488B4E7288A24BCB5791CC5832C0B9E55B
          2D2A95727C18A962299044A44DF732D1B895E185B0603E4946E459A1227C5327
          4F4BAA27A405F5A2FE17E7CE7163F8C9860F27EE63492DAF9C4B5226322AACFF
          51A0D0BD3ED25CAE9C7336690BAF73659F59BEB8334352832C7C64F93C021030
          9061F4C2988797079520F09208034DCE936401E91A7531F1C6480337388F9C0B
          9E8EC9F79BFA3ABBDF275E2058E3D30441EC33FC45395FF4788C915CEF19F214
          70AF0EBF37B52F5DA72953752DA871268F8D59B393B230896BE04C1B3F61B45F
          EF59B374ACD456CB444A857F763644358E277CB3F90C036F843BE7D21BEA7871
          C1E2FEC678E5556753FFDC6C5049782AF0E8F5BDB84FD3F2E7B99B71094F4AC1
          B524BDB41A6C1306ADFC082D970816083C04B0D3A6032449C8646EC030503468
          12A0D48D36874897243351B6450DA5782F7C40B36E473C77A3997CFFE6CB9566
          8106F39F73F5C3A9670E9F4F9BA9DFD12099A1C101F031EE031C22CD5CC4F827
          79E9332DA25FC28507771C0D447E0F6D1997ABB9F3547902571DCE4B8372924A
          D624388A7B9606C002A27994D22EB5396051A701B258DCE37C00DB4879876B16
          60C38EA64E26E76BE2BE83DB913B9103609A9498A470CD01C019EC5EB22675C3
          F292D8DA0F033B0677004EB8256501281B15E5BEBD72C38AC4263CC7F2CF7502
          CCB89EE12D904BCC13FD9A167B6402A0444E802A7D3065CA349FE072C97E380F
          F529DE01EE7BAAFD73DCBC8E80916C55DC70ADA23FE2F87C0277F09BEDDF63A2
          F4BC016932F638D76C704A0070CE67599322D76BDE1CED0B9C555FE285425F73
          917D325CA8BED664CDFD8CB71635D6B2FD984D021F008B97409C47846F67834C
          C28D2EAA5244F419400BC0863B17632571DF4AB2609534C5603E4C9482EB6A00
          9C253984225DB152C6100C163C09302BF4334437A0DA260EF6D9CFFFFAABF937
          51FE402EFC0654B9D0CFD6DD26F1B7956FAA5CC8D5E4D74AB968189606506CEA
          253ED263F4C73463D322FB5DC40733F1AB64727086CE86A9BF6B9C6861C86BBA
          ADFBF2A664CE4B722400984B300D331230E7587FBA7D612AB96CA6F900D9F09B
          CDF3EF2CECEC1C53F612D91C63F8E5E6BD0E96B9C879A4FBC926C10E261BEF45
          76ACEC55F3CF52D69A0F02FE76942461333F0E260C26ACD48F3473BF145EFBA4
          CF16F5514D6A76C5B178FFA6C0CCF392E5954DEF9974C5E03EABA9EB2DA7E135
          56DDD7D82FB21AF74F7A2D497616FA577AE1FC7CE2BCD2F77C128C0B1BF7C962
          0657F65CD8245BAE3C564959225392319ABF4D29B82E4BAFAD82EFFC155CD3A0
          80141CB84F69BED8CD25500A100C5048EFBD4C1ABAFC53C91F40F9AF0B912B1D
          997133A72FA994247ECBE23819243180F44A0B4A3F3EDECAE052E610D2811D00
          CBB9C150619029962760926097486C3A10F93059A2270112F1970C525A008083
          340116292EF96BB13CDF53CE393EBF57324103D9008274C2F289259D60169D3D
          F2FA689199A588FE732DA3F8BF458021D3FFD96FC69E5C5A0088BCD3B080D29F
          C9F9F8B947BFFAF927C523B3412609D02D8FBF6415C2EFE7824222AE21BD16C9
          6F454BA3EDE2A7F3FB2E7B0161BB712259F0659B25FC45F8309B14799FFFCDD3
          2E05D7BFD9812BEBEB45822BCB28818A874D3A844812D07F3978F11B2D1D54E9
          20F171B684BFFC193D7F535F2E079064018561A1DF4B80131196F0541D0C189B
          92149EA23A26B09BB9F1F3074EEE47D3090440F026F6949E674C26BE298396C8
          21FFEDF84BBEFBE7428E25CB5C7364CFB7CD159E8355234BE86013A922BBB314
          5C1DD8132460C99A30BCB49803AFF29691F97D9965A6450DE6608FF118DB6441
          C00F2B03C2F9EC3F0E71515CC9806B3A61790E09E424AE07E0B448DFF12266C5
          BF32D6C883C0B1648F75C9F70EC7C08DA0EB915E3C7ED327483E4279F1A7E924
          999EE7E2F659D42A2B77E9334FB2DFCF07D3BFF45DDAAFD9F32B6A9F257DAF14
          5C4BDA53AB78BB22C155BA14461DFE7C90E8460D90CD0DAE00D8145C17379717
          07AAC9E927FA68B0C76497C13492B7F1BD15C4EB85F44F62B5393CBD9CAB03E4
          290D58F2C30A5960B1E0AABD43C33178CC97B143A1B4D37582C4C7CC8B398343
          48596B21E006AB27AC953E4A8C61AE3F6AB2497E9BA560721C804CD22F840CE7
          81AB7F900157C0544BD42CB8FAB2363B576406A91F5E091969D2C725DFBEA8FD
          66BB32F697E46EA01F388F14E0F43CFA2B5612C9B50BC02C64912507D0F8C5A2
          1E31062571FACCBBCCB25C15BF7B533CE5B5EADDEAB812FD3B66CA244475D1BF
          2C30F23C2B4DC4674BAB952EED755AD2D9F25929B816D743ABC9E77F01576720
          422D5A065467A7CF7363DD6FD224B6DA7545C06529077B611764185D308E9C61
          2CCB7E744C0B0486327A75ACD5DA1A55686C63C62BB7A70E14B344806B329233
          2D8F3EF132D15975AEE37FB5AEF52B59B97A1DED8709E9FB30534E2F0569C0C1
          CFDB0723C89920FB42E53BF0BF8474FA0400D8FB5680653A5F245E0BE8BB4966
          83428D3A62DD935D3BE0A780EB09C8D2FD0633CAAFB914FD571453CAD7F58A5A
          AAC67BF90C367B6B66F5EC9CE49B9BBCD2E34D25165F0548C7E65D563A4CCACE
          1A1733F366197772C9926B9D3547C6EBFC79B2F035D74A577FCE34EB5E577EB0
          551AD91F53148A4B3FA64B1A3057FE0E3A16EEEBF4BE4827BC92CA1345F5D1E2
          FADD6F09F5517C277FBB6CFF2ECBF352705D965E5B05DFF12002BF1BB08A0FB7
          9FDE7FDA0A0ACA5B41D9EA8A9E29AB627D55AC62D5063660DA6C1BEF37696EFC
          A76B2F92A7242890189B5866EB0E062CD0DAD85E96769B3BC4FE7BEF355650A1
          AE1D75C55D09B3F06D939BDDD94EC8017AE11673FFA904921296C1F693349066
          58AF1A9DAC49412B1B3C61B60692435DF2DBDE1254F33C2BBE93845961C8C0E8
          94632F78014CFED17A35A86005753BDBD7DAB5F705A49663E0AB2E19043383B1
          32F968FFB37FB083B6EF6465CB55B28232B5AD408F441B5555AB59BE86BDFBCD
          EFFC9AF620564502974C429C3836B703A5833CE17BEA9559A3AD7D93FA56AD4A
          43936798FA36399E643620F10CE0C5396ABF0B46D823F75DAF3EAD995EC3641B
          F902A8C9CDC8C592445BCE47B85C0E16FAC9418D634D6410FEDC58E82D5F57E7
          A033AB0CFA63DE386F94C32E28505F96A9E1BF9C0827EC6C863D75FB39565B35
          D34EFFD78DA66E76A8E33307CFF9E92C92D1379948B0FD0738FB84180982D0BA
          61CC7EE49CAF92CECC1965EBD4EC662D0ADADA3079440C9F374541069DAD46F9
          FA3633057907F34CF219EFFBD438E9D735FA99ED758EDCEB09B74DEF2BBF3F63
          02A4AF0A85A8B4F7B4C1747BE9EE4BAD96EE83332EBDDEC70CE0EE2B33EF8BF4
          9CD36924A7DDA77ABD7F9E1E0A575BE98792EF65FE4AC1F52F5DB27ABEE14104
          1C1A4C75C237B64E93B202D69AB6C57E27FB010F1934C6D66CD6DE7E9F044364
          4666F6D705CFD8951CF6C4DA162CE436D2E7F8C3028EBA5164D4F765B7CDFDDD
          9EBFE3222BA852CF8EB8F26EC3F3D0071EA9D9708B02AFF432F25E2516DEE4A6
          4EC022015F39FCE82726DA7A75BA0A5C5BD8EF13679B08273BD20689CFA0B340
          6DCB21C224FD8625135108B568A9A096D88E4DFBC3BA34AC6905B53ADA771C94
          236A22E6F2C0CB000AFF190E028639F32B3B62C7765650BE92DDF7D49B9E458B
          DFF8C70E3B594501CC4997DD9E0E0CED14A6AB1DF900F431C6444696AD04F338
          4B5FD132092D105049AA006FA6F34132C3A4843601137902EBF000EDA1F6D47D
          575941C5DA7E6DF84EB244973BDB3C86B5FA4300E0B8AECF30FCF9040428F026
          939A5E264A36008B51289D40384FAFE0EB57C966A744D001C7A5007DEEF49CBE
          1A655FBEFDB84FCA675D70B5EDBAD39E9AF4E45BECDF64329A602FDE7D9ED510
          E09C73F9AD36525FE57C7DF6F38B9A1C0BC718F321328A2FE39D2E17F65368EB
          C9E4C2F9312D8DD36266A4AD5D7B6D6B56D0C186C8754ADEC239ADC8EF29BF0F
          E99F4444F2FBC98F4F002B1F63FF6D7DEE79D1F1CBE53E4F67FEF95C17FACEFB
          17A2A03B6EA18B482EE5D0EF53D3FBD7168EB7E76E39C7D6D0B99E76F1F53A32
          7DA69666EBF07BDA2714EE513D49F2A8F106D24621B34EC6422227E5FF9582EB
          5FBA64F57C0370754D4C17F7B7B7EEF29BA2A07A7BFB5674700E6E315C7767A2
          0CFC0976F96907F820A958B68C065375FB7DAC0F732D0167DBDE3B6C659BF4EC
          60F7DC72A597A72E57BEB295119872A31CBE7D6F6BC4BE6915D61020B4B07B9F
          795B4039CA0EDDA6871D71F4297AAF956DB4EF09BE84331B6BE71DBD8FD5D4F6
          1554B9B3A04C051B3A9601215FD8E96229B514A259A6990D9A3C5D4C48DBEBBD
          B51BD756CD2DD5CAAAD2CDDEFB5499AFB417CF33E483827FDCA8536C9D46AAA5
          C539A85D76EAC9D6A16507816B67FB054AC524336D8855D667D4EFAA58A5AEBD
          F5F590946D25BBF2BF793FDBA162AE0565CBDADD4FBCE003EDCFE913AD7DC3A6
          3AC76A76D37FDFB11D77DEC1FA746F67271F75988EBFBC6DB4CF3FFD98ECCF91
          76F9C9BB793F562853CBCA576B663F4CFC9369438737D87A34AC66656A74B041
          1C8F00B28B427D6B1594D13195B772E5AAD93BDFFEA27717DAC13BAC65F5BC4F
          B5D2A8D8CE6E7BEC9D64D2983FD12E3E657FABAD72D1DE77BA4E956B76575FC8
          48A9A9E882B30E75865D51C759A152737BBDDF1067FF09003079A8D7A60EB7EE
          75F84D7DBF5C152BA8DCC65EFD62981F7FCECC4967CC15C0CDFEDDAE3CE3504D
          9C8DADEF5783ECC2E30FB33B9F7ECFFBCC668FB703B7EEE64C8EFEF663AD523B
          E987E9E3ADF71A95BD1F9CF1566C66EF7D37CAA6E087ABDED8B05B4B7BE0DF57
          FAB1D2A765AA37B797FB0D4FF6FBA7D8EAB401C9F19517685F70A1755D6303F5
          474BFB63F2084DF133AC5BAD0ED6B26C5301DC246BD5A8991DBAE31E76E9C9C7
          24DF519F74E9B5B14D52E6ACB6CD743F96AD6D773EF34D72BF2C141C4EFFDDBA
          34AA936C2BC65DA6663D9BE2003DCE8ED8BEBBA2023BD8CDB7DFA1D58A8EBB6C
          1D2BA8D1CEDEFD72A01DB9E33A7ECF72EF1414D4D0678DEC86A7FB26E73B6FA4
          5D72CA5E1A1BE5F5790DAB54A5B90DD0C924F7E870BBF2A43DD273AD692F7F3E
          BCF07AC43D973E96826B5E87ACAE2F739AEBFC69F6C61D67F960DD62EFD36DA8
          0FA274560594C40C0EDFA65702ACE90D5750B68A95AFD1DC7E9BA8DA439A75FF
          B1FD165617504D6FF8E406AB60C3662EB083B65DBB105CCBE966AED0D2EE7EFC
          25DD7083EDE8ED056E65EB6A70B5B10D763F42BF3AD5F6D9A1A755D7F7195894
          AA2E904451ADBA06CE846172F89F66BD6B75B196054D6DD8F8511A8653AD4DE3
          1A7E5397D1202C2868A2E3EA6ABFE88E86BFF9DCEF7E987A63E1443F46CEA142
          99B27E3EE51920757ADACF026F9B33DA7A352CB02A1A5095FCF8B5ECAFD3C5BE
          1759816D61F072809DF5931DBA6D272B5745C053AEBA5514903110CB695FD56A
          35B1DF26CFB13D76DCDA8FDFFBA35C05DB6CFF436D8280639FDD3670B061FBAA
          1A68650A242BD4ED6803266A9298F287F56E2849A6760FFB59B467E19C617E8C
          9574FED50B2A5AC5F2B534F935B5DF264CB743B65FDB1AFAF19713C034B7075F
          E8EB6CFCE0EDD7CB4D1E94942E2B89A7A0A0BE4067A4BDFBC5CB5659EF25C7AA
          DFA9DCD6014B50954835B0A75902BDC655BD9F1270A9AAEF37B482DA9DECC7F1
          0A28804F29AA2CA17F4C463F59D74605D661EDAD6CAC5EF6EFFB9C6DB0D7F136
          CA816A861DB6DD5AC97DA33E659281ED4FD5F7BAAFA932E7E96F9429AF7E2C5B
          DF0A6AB6B6415366A8AF67F9BD18F74015AE918EB7519F3D6D882B3F23ED906D
          3AA6130B137D055D7F9553AFD0C6068C1F64930482EBD6ED2E99A0A18D5C30CC
          3A29D497F3E17A705F5628CF39E9DAAA5FCBEBDA1594D1EFD75ADB7E816A6AC2
          5FBB81E49DF43E29CB716B8219CAC268E6203B7A3B4DAABC57967B4DE753C0BE
          9A5A87AE5BD801DB74F73E8B49ADA05C7DBB5313ED240DA6FD76DAC46AB3CFB2
          E57CA22C5FA06B2992D07FD20CFBF593C7ACB13EAB427F5768682F7E352A95CE
          5239210320A5E0BABAA269DE7125E00A339D2E703DC76FC06DF63DDE071B5A6A
          921F7A8E4DF9E55D6B5B4703B2EA9ACEA800DEB933C73A48DDF3CCCB1A2C6687
          6EBD9135D0EBF32FBBC18168EC2F9F598B9AE5AD3FEBF60563ECE9DB2ED64D5A
          DB4EBEEE119BEC0359A364D60F02A98EF69FFF7E90CCEEFA9B34F0436B565DBF
          55A3810D9C98A8910BA78FF3017AD70B4FDA2851ACB51B6C64AD3598A68CFBDD
          DEFBEA45672FDBECBEB72F13CF3BF538BFF9FFF3CC3B3EC07D59B840BC70BE8A
          E0FDDACF6A566B6EC32728FC12D89D3ECCBA376EE0E0CA717EFDEE93CEDE93CC
          9AD35528518CBA4253BBF985AF7D3F2909D64E7FB2C305AE095888B99411C069
          A0765F77731B3B9DC5DC7C3B74BB8D1C441F78F2F9747F539552F01BAB51BBB1
          55AAD1CC868FD3318965755596AC82F20DEDAEA7DFD2C90FB7B5D7101856EC64
          03D5CFDF7DF1BC6DB3E74EC9325A4BDA534F3C499F35B1DB9F7953E733DC5EBE
          EB5F1AE49593A5E702458B0DF8D85AABEFCAD75C537D9738AFFD397BB2F56C5C
          C71E79E2697BFB93CF1CECC9C730593B858DD1EF7C7F362B14EDF3BBB79FB432
          3A9FEDF738D027134EFAFC534FD12450DEEE78FAED74D0274B5B8543D9900F1F
          F4EB7EDE4597259F89F516546B6BCF7CAF24E7BC96CC810EC96AE18CCB6F72E6
          F9E5472FE837CAD8AEFA0DF78AD0DAFAFCB34EF3EB76D77F5FF5FB897BF1828B
          AF73296542FF4FAD790D26C1AE365033E6F89F3EB40EB50A044CAA32A1DE9EA7
          E8A75EB5D6B2C6655BD8A019CA53AB33EAA149B195265A6502B6CECD1AFAEFDF
          FDE47FBD2FCF3DF11F0EDC05BA0E83C6CEB66E2D740D2AB5B057BFFCC37EFEF8
          2507F63DF6D8239D986778C1CCDB1FD3F59931D80EDBB6BB33DD53AFBC4B5D33
          C746FCF69335ACD4DAEA556AA73D4FB0A7EEBDC02AEB3C4EBBF4269BE0FD37C3
          46F7FFD21AD76862952BAC992CF5B53AEAD4487294AEE52DBAEEDFBDF7A44F34
          E49618A5092A5921C46A2B1D18E94329B82EDA1FABED2B075744CA791A5E337E
          B74E6B6A362F5FD336D9FB9FC90A71E202EBD3B6A3BDFBD40D564B005620A63A
          58579EA5E17CB13C58C0DD4F3DE737ECE1DB6D6B0D05366F7FF55B0226D37EB5
          9EF50BC476188413ECA53B2EF5D9FE942BEF4B3EE7EE99F5BD1DB253177BE147
          C5DAF39E40FE8F0F1EB0FACCE2351ADB20AD5701B599B3273893BCF7C5876DA2
          0C545D6BAF2B706D6ED3460DB4CFBE7A49A05D603BED7D702293219965404381
          AB097C2C1CAE41FAA1D5D4B274D084B189FC306B84756E20C654AB8FFDA651FF
          EDBB4FF9A0066CF8D61C09712CD727ABB979C825141DF8ACFE76A0A48E820AF5
          ED8667BF48F45137BD29A473211467B29DB0FD9662EBE5242BFC9A2C65F5FECF
          EFBFE46CB546D5FA366CACF63A6DB81BB00A2A37B31B1F7B43A36AA440A2A296
          C05D758C663FBEF3B46DA541EE130FE7A6C612DE250401E18B7749C72E5F313D
          DE85F6F3878F3AE32A5BB5A10DD649C8EB54B1F563ADBB327E3DFEC8D3DE2F89
          C1719E40E0769F108EBDF476D7065D165830D8FABDF7A8952D5FCEB6D9ED0007
          4B075834653DF2BB49AC00273C41E1BF83AC65ABC6922BCAE95E28EF936DB2EC
          AE67EDD7DED546D2553A8667EFBAD8EAE8FD732FBFD6F7F1ED27EFE837EAD876
          BB1E92AC90524323FA65B24298E54CEEFD6F06DA5466B449BF5B8F7A628A757B
          F9FDC404DCAA4A81FDA22E9CA9A39C376BBA755B633DAB57BE95FD36F577F5F7
          38EB21E6DA548C72C2BCB1F208E964F525230D9EB240BFBFD09EB9F36CBFCEA7
          5C76ABF72D124B410DC055B981DF7FCE5759DC4F898C939CFF2C1E670FD08AA1
          9715546D61AFF41BAD5F967E3B63BCAD5D731DE9BD5DB5EFE9F6FCBD6738389F
          75F135C9751798F6FBE04D67AB9565CF70531ED75D292E915B6E7EFC7DED5F23
          62FE08FDD604BBE7A107ECB86B1FF1FBADA88AB0A5E0EA9DBAFAFFE5640184FE
          B963ECBFF7DF20A0828D55B372652ABA8659BFCA1A3675D40FB60B605286A594
          96935A5AC280BAF65CDFC691D843007DC056DB88F555B40FBEFD3D01CA29BFDA
          5ACDAADAAF30D7F993EDA5BBAED03EF144104B28D3C49E78FA65FDE6403B60C7
          EEF6E2B7E331BFE80F83D8403B6CC7DE3E580BF4FB05E5B5ECD3EFADBD4E1F1B
          336BA44D1113EBD5706D1F385395D065FAACE19E9E0F66C5F6E5CA34762DF10F
          1955128301E8C0DE7520B26AC3600A2A245A1D6CD835BD1ABD6C40BA24ECD50C
          8BB7D863B98AAEF596ADD5D27E9FB0C0ADCE2E09C0B8A7FD62FFD87963B19D46
          76DDD39F26C02480488C664C1D93ECC82D36D32451DEDEE93730055706D50479
          196C91D3F212E9A4AC35EBB39D8DE760270DB60D603435BBD8CF2C1F668F4B96
          A0921ECAF832560053BBAD0DD5F2DCE68EB6E7EFBE42EF713EF5EDBE479FD6C9
          8E547FAEADA56EE564A98B2CC0B96AD93C7BDA2C7BF0DEBB7C42A4315995295B
          C94EBEE26E29DC29B8A2654A8A682DC02F27D9A44C391938FD771B5AF9AA5AB2
          8BF1274636CE73B87DFDA5560DBA5FB6DB239DD83C547486B56DD4DAAA566E60
          6FF51BE03DFFCC7D573B8B77862F3969E6D449D6B2511BDD43F2B2F06539C758
          D32AD458D3864C1E2303DA445B5313D3875FFF92B06169EADD1B6A8550BDB3FD
          0A62CD1B2140EC91DC4B95B8A72AE83AD6B7BAE51AD9501929A7FE39CE3AC948
          D95C603BE3CF99D2637BDA9A65DBDBE0712A0A28B07BFEDE7FF9F19C7AC98D0E
          F6FB6F0FB836B737BE51E29E69236DAD86BAF69CB7182AF75539AD0E46D0E7B3
          FFB07F6CA77150694D7BF3DB513E412F9C31D1D6AAB996352BDB45FB9A63CFDD
          73BE9303FF7EF97AF6C8E3FFF5DC117BEFB09DCB4D100126A18A1A4B2D7A6C63
          63D5958FDF77AB1F8FEBCFDAE6B0CBEE4F565C45F8E29682EBEA8FAB7E849EB8
          C59F61D585DD4DB4CF3E7AC3C1D3B53631AAF73F1FE0B3ED8285936D0F0103E0
          E40353A0008CE0674A428C8374F3B0D4FAB85FFFE4C6983ED23A36A96B83C763
          64D12D3C7BB49871431F500532E2BCFFF9F76E20D867FBF5EDBD6F46244B5877
          B79AACC133C9F6DF615BFF1DD75CCB9677C0C6D0316FCE04197DBA59C3724D6D
          ECF8713A326EFA4962021A68721DF3412ADD132070B6E9D6DF70A39A63DD1A89
          297213EB26BFE4BC336CD79DF71073ED2400E5A0954065DA30D737CBEBFCD85F
          59F9D40E9E94F8D2C24CFD6FF6503B68C70DB58F9A76CB936FA73EB63057383D
          BF3ADDFEB1F926564FE0FCFE37BFA4320827A0B39C3342E7B64E0228156BD936
          7B1D925ACF758C937EB40D9AE81CAAB692912B61CFED9A36F47E40CF2D409FAD
          DECE8668C9EF139196C01D1A3772907FFFEB9F13ABF35CF5E98EDBA6BA32D7B1
          ACEDB0E7E13E297CF9E1EB099879AB6D5BED798C5F43FA36F10BC00B8155CC18
          EB2C2981E5AD1B9B04AE65F5BBE8EB390D5B5E00E79C7CB033E7BB1E7B3159C6
          BA86B3C02E3DE9089F40CEBCF4DA649532678C756AAA091B50A956C757044258
          19EBEA5879D72FE9EBBA6EB41AA4443868F8F575CD3FF9F2BBE4B8742FB56F58
          DBCAD66863BF8FE7DC05D9B386257D52A1AA9D72E115B6E796BB59830AD56CB4
          74EB2973C65BE7461DAD51D986366BCE4C7984F4149B6C2EBF68041BB347EEBC
          DCF5CD332EB9C9AFEB013B6CA03E6F20C01CA4E34FEED5D6CABD8A3E9A4C80E5
          6DD8045DBBD963ECC01D37D1B86868EF7C33C83D1A168AB976AFDF45D7BA99FA
          51F7C74C493D8D6AF87D5EAE6243FB58D7DFFB4C13C65E3B73CF301954B31DF6
          3A34BDE7CDFA7DFAA64FF209EBAF90AC24721A5472CBC55F29B82EDA1FABEDAB
          70C54A00368D805A98D8D9B90999D5611E09F00934187873F5B9322C81CA7C9E
          733371B79C24CE3FB931F42D0AFEF9BEF90CDD93F7B006A7DFC33A2FE3C64CDE
          D67B097801F4DA420C15B0F06A99C9D125473247C7C0DDAA9630536D8FD55A46
          16CF70A5F7C2ADCB594FBA9E763F470635EE5F2E186A17947BF6B34D96FE2CF3
          FC156BE134A987BFA38D62F9EAD2C002904F2E53E971F1C8B09DA530CCC48353
          07E769F016FA71BBAFA3333E7C7034746088DA86DF74C6CE5A7BBED07DEACFB2
          526B52ABD3DEBE57373B306134F268323D4D97CDD3FC82F19DA44F6732A6D9D4
          CF8AEDF53EDFD35A9EF7128B349D36DD5DE63827AE32BFEFE085EE99A8DB9A87
          C802A64FE68B224A6FF7D800ED1FED33E73A048A12DDA6EBC3F7DD452A65F62E
          3DD03FBA57F80CC6EFC11F7FB2BD14C7F41A998A4FDA5C04182DEB390EBD4FB0
          0AC7EAD74D1BA647E4920AC6BAB8B649B4958E513E62C9049F9E08D9C5F46A8E
          D8B3EF34F53A8B1BA8308083DFD576F15B0BA6F875E27E4E7C4BB92FF5C86448
          0E0A5757D91F465165814BAF43F22EEE594927785FFA04C7FDE8DD6933E83BEF
          637E73B29F13D78A63769D9B89DFFB92DF4C5CBEB8367E2D5D7E59F4AF145CFF
          D225ABE71B1144900CCA1414F4E89555C5461D50FCC688E62A5C3218D578858F
          AABB6BB9F77302B5FE47DE55BD4DB44EF2394BC6E439BFE7C1072C2F130756FF
          CC235BDC619337E4AFE91E8B09DBC81D4CEA6CEE9AA85AA16F2C4786CAC8F664
          D24A006D21F951DD1F3249499764710298F836835D656DD2FDE07AEF00EB0708
          40E27F1827948A9EDE17208EB64BB2BC6893246B57E2F89DA24C64CFA2C7387D
          9F37D2DFD6B6B30504B9894716EADFDE78D475406482267D76B53F1864748DFB
          66267D4917FAA179FF25E7459F07E8F0E80E7469DE048220BC1FFC20357095D6
          300E0F30617B2AEB26D73449BFE83910C41CDDA7D98131ED7B7E9B905E9F2592
          49D0EF93C22B94F355F51DF944925E572AE6EA3C1600D6F4546EBFC954E4C798
          82914FCEF42497C8BFAE9DB85F70E253CA4442C49B5F7D3E4ABF9FF8DD720594
          23D7C137C1AD387FFF49BF08DC03689C78F7C6E54D7C5FDD5F99BE4A2FF5FC99
          A980EFF7091FB0DF644266BFB3D547F30985667B47509E30B9E1879BBCE47813
          DD3FF931F7B648FB8CF34C64ABF4ABDCAB7A39490D43DD7C5874DE5F29B8FEA5
          4B56CF371657FD75F53CDAD2A32AED81D21E2805D7FF917BA0145CFF472E54E9
          6196F640DA03A5E0FA3F722B9482EBFFC8852A3DCCD21E2805D7D27BA0B4074A
          7BA0B407565C0FFC3FBAC7AA3252BEE1970000000049454E44AE426082}
        mmHeight = 20638
        mmLeft = 7938
        mmTop = 3969
        mmWidth = 50271
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 31750
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 14552
        mmLeft = 265
        mmTop = 17198
        mmWidth = 30692
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 14552
        mmLeft = 30692
        mmTop = 17198
        mmWidth = 253736
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Brush.Color = cl3DLight
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 284163
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 13494
        mmLeft = 265
        mmTop = 3967
        mmWidth = 30692
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 13494
        mmLeft = 30692
        mmTop = 3969
        mmWidth = 253736
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'cod_chamado'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 1588
        mmTop = 265
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'nome_cliente'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 14817
        mmTop = 265
        mmWidth = 65617
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'desc_status'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 82286
        mmTop = 265
        mmWidth = 43392
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'data_chamado'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 200819
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'data_final'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 224367
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'tempo_gasto'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 267759
        mmTop = 265
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'desc_categoria'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 127529
        mmTop = 265
        mmWidth = 48419
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'origem_chamado'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 177271
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'prazo_fim_chamdo'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 246857
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'funcionario_emp'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 1323
        mmTop = 8996
        mmWidth = 28840
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 265
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine51: TppLine
        UserName = 'Line51'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 282576
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine56: TppLine
        UserName = 'Line56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 14023
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine59: TppLine
        UserName = 'Line59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 81227
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine60: TppLine
        UserName = 'Line60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 126207
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine61: TppLine
        UserName = 'Line61'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 176477
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine64: TppLine
        UserName = 'Line64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 198702
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine66: TppLine
        UserName = 'Line66'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 221986
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine68: TppLine
        UserName = 'Line68'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 246063
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine69: TppLine
        UserName = 'Line69'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 265642
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Procedimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 5027
        mmTop = 17992
        mmWidth = 21431
        BandType = 4
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Adotado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 8996
        mmTop = 21696
        mmWidth = 13494
        BandType = 4
      end
      object ppmmoSolicitacao: TppMemo
        OnPrint = ppmmoSolicitacaoPrint
        UserName = 'mmoSolicitacao'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 12171
        mmLeft = 32279
        mmTop = 4498
        mmWidth = 250825
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppmmoProcedimento: TppMemo
        OnPrint = ppmmoProcedimentoPrint
        UserName = 'mmoSolicitacao1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 13229
        mmLeft = 32279
        mmTop = 17992
        mmWidth = 250825
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'nome_usuario_resp'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 2381
        mmTop = 26194
        mmWidth = 25929
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 22225
      mmPrintPosition = 0
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 0
        mmWidth = 284163
        BandType = 8
      end
      object ppLabel1: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Tempo Gasto: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 212725
        mmTop = 1058
        mmWidth = 36513
        BandType = 8
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'tempo_gasto'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 254530
        mmTop = 1058
        mmWidth = 24606
        BandType = 8
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 6085
        mmWidth = 284163
        BandType = 8
      end
      object ppLine52: TppLine
        UserName = 'Line52'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 265
        mmTop = 0
        mmWidth = 1588
        BandType = 8
      end
      object ppLine53: TppLine
        UserName = 'Line53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 282840
        mmTop = 0
        mmWidth = 1588
        BandType = 8
      end
      object ppLine54: TppLine
        UserName = 'Line54'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 207698
        mmTop = 0
        mmWidth = 1588
        BandType = 8
      end
      object ppLine55: TppLine
        UserName = 'Line55'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 252413
        mmTop = 0
        mmWidth = 1588
        BandType = 8
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Brush.Color = cl3DLight
        mmHeight = 4763
        mmLeft = 265
        mmTop = 6085
        mmWidth = 284163
        BandType = 8
      end
      object ppLabel16: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CPA - Controle de Projetos e Atendimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 6615
        mmWidth = 80698
        BandType = 8
      end
    end
  end
  object qryReport: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select c.*, r.* '
      'from chamado c, report_visita r '
      'where c.cod_chamado = r.cod_chamado '
      'and c.data_chamado = r.data_chamado')
    SQLConnection = dmPrincipal.conpg
    Left = 448
    Top = 304
    object qryReportcod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object qryReportcod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qryReportcod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object qryReportcod_categoria: TIntegerField
      FieldName = 'cod_categoria'
    end
    object qryReportnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object qryReportdesc_status: TStringField
      FieldName = 'desc_status'
      Size = 60
    end
    object qryReportdesc_categoria: TStringField
      FieldName = 'desc_categoria'
      Size = 60
    end
    object qryReportdata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object qryReporthora_chamado: TTimeField
      FieldName = 'hora_chamado'
    end
    object qryReportprazo_fim_chamdo: TDateField
      FieldName = 'prazo_fim_chamdo'
    end
    object qryReportchamado_automatico: TStringField
      FieldName = 'chamado_automatico'
      Size = 1
    end
    object qryReportnivel_prioridade: TStringField
      FieldName = 'nivel_prioridade'
      Size = 1
    end
    object qryReportdescricao_chamado: TStringField
      FieldName = 'descricao_chamado'
      Size = 2000
    end
    object qryReportcaminho_arq: TStringField
      FieldName = 'caminho_arq'
      Size = 200
    end
    object qryReportcod_usuario_resp: TIntegerField
      FieldName = 'cod_usuario_resp'
    end
    object qryReportnome_usuario_resp: TStringField
      FieldName = 'nome_usuario_resp'
      Size = 60
    end
    object qryReportnome_usuario_abriu: TStringField
      FieldName = 'nome_usuario_abriu'
      Size = 60
    end
    object qryReportcod_usuario_abriu: TIntegerField
      FieldName = 'cod_usuario_abriu'
    end
    object qryReportfuncionario_emp: TStringField
      FieldName = 'funcionario_emp'
      Size = 60
    end
    object qryReportorigem_chamado: TStringField
      FieldName = 'origem_chamado'
    end
    object qryReporttempo_gasto: TFMTBCDField
      FieldName = 'tempo_gasto'
      Precision = 15
      Size = 2
    end
    object qryReportdata_final: TDateField
      FieldName = 'data_final'
    end
    object qryReporthora_final: TTimeField
      FieldName = 'hora_final'
    end
    object qryReportgera_compromisso: TStringField
      FieldName = 'gera_compromisso'
      Size = 1
    end
    object qryReporttempo_cobranca: TFMTBCDField
      FieldName = 'tempo_cobranca'
      Precision = 15
      Size = 2
    end
    object qryReportreincidencia: TStringField
      FieldName = 'reincidencia'
      Size = 1
    end
    object qryReporthora_gravacao: TTimeField
      FieldName = 'hora_gravacao'
    end
    object qryReportdata_gravacao: TDateField
      FieldName = 'data_gravacao'
    end
    object qryReportsolicitacao: TStringField
      FieldName = 'solicitacao'
      Size = 2000
    end
    object qryReportproc_adotado: TStringField
      FieldName = 'proc_adotado'
      Size = 2000
    end
    object qryReportemail_solicitante: TStringField
      FieldName = 'email_solicitante'
      Size = 100
    end
    object qryReportgera_cronograma_alt: TStringField
      FieldName = 'gera_cronograma_alt'
      Size = 1
    end
    object qryReportcod_report: TIntegerField
      FieldName = 'cod_report'
    end
    object qryReportcod_cliente_1: TIntegerField
      FieldName = 'cod_cliente_1'
    end
    object qryReportmotivo_treinamento: TStringField
      FieldName = 'motivo_treinamento'
      Size = 1
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
    object qryReporttempo_gasto_1: TFMTBCDField
      FieldName = 'tempo_gasto_1'
      Precision = 15
      Size = 2
    end
    object qryReportnome_usuario: TStringField
      FieldName = 'nome_usuario'
      Size = 60
    end
    object qryReportnome_cliente_1: TStringField
      FieldName = 'nome_cliente_1'
      Size = 60
    end
    object qryReportcontato: TStringField
      FieldName = 'contato'
      Size = 50
    end
    object qryReportresultados: TStringField
      FieldName = 'resultados'
      Size = 1000
    end
    object qryReportcod_compromisso: TIntegerField
      FieldName = 'cod_compromisso'
    end
    object qryReportcod_chamado_1: TIntegerField
      FieldName = 'cod_chamado_1'
    end
    object qryReportdata_chamado_1: TDateField
      FieldName = 'data_chamado_1'
    end
    object qryReporthora_ini: TTimeField
      FieldName = 'hora_ini'
    end
    object qryReporthora_fim: TTimeField
      FieldName = 'hora_fim'
    end
    object qryReportcaminho_arq_1: TStringField
      FieldName = 'caminho_arq_1'
      Size = 200
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
    object qryReportdetalhamento_motivo: TStringField
      FieldName = 'detalhamento_motivo'
      Size = 1000
    end
  end
  object dspReport: TDataSetProvider
    DataSet = qryReport
    Left = 480
    Top = 304
  end
  object cdsReport: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReport'
    Left = 512
    Top = 304
    object cdsReportcod_chamado: TIntegerField
      FieldName = 'cod_chamado'
    end
    object cdsReportcod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object cdsReportcod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object cdsReportcod_categoria: TIntegerField
      FieldName = 'cod_categoria'
    end
    object cdsReportnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object cdsReportdesc_status: TStringField
      FieldName = 'desc_status'
      Size = 60
    end
    object cdsReportdesc_categoria: TStringField
      FieldName = 'desc_categoria'
      Size = 60
    end
    object cdsReportdata_chamado: TDateField
      FieldName = 'data_chamado'
    end
    object cdsReporthora_chamado: TTimeField
      FieldName = 'hora_chamado'
    end
    object cdsReportprazo_fim_chamdo: TDateField
      FieldName = 'prazo_fim_chamdo'
    end
    object cdsReportchamado_automatico: TStringField
      FieldName = 'chamado_automatico'
      Size = 1
    end
    object cdsReportnivel_prioridade: TStringField
      FieldName = 'nivel_prioridade'
      Size = 1
    end
    object cdsReportdescricao_chamado: TStringField
      FieldName = 'descricao_chamado'
      Size = 2000
    end
    object cdsReportcaminho_arq: TStringField
      FieldName = 'caminho_arq'
      Size = 200
    end
    object cdsReportcod_usuario_resp: TIntegerField
      FieldName = 'cod_usuario_resp'
    end
    object cdsReportnome_usuario_resp: TStringField
      FieldName = 'nome_usuario_resp'
      Size = 60
    end
    object cdsReportnome_usuario_abriu: TStringField
      FieldName = 'nome_usuario_abriu'
      Size = 60
    end
    object cdsReportcod_usuario_abriu: TIntegerField
      FieldName = 'cod_usuario_abriu'
    end
    object cdsReportfuncionario_emp: TStringField
      FieldName = 'funcionario_emp'
      Size = 60
    end
    object cdsReportorigem_chamado: TStringField
      FieldName = 'origem_chamado'
    end
    object cdsReporttempo_gasto: TFMTBCDField
      FieldName = 'tempo_gasto'
      Precision = 15
      Size = 2
    end
    object cdsReportdata_final: TDateField
      FieldName = 'data_final'
    end
    object cdsReporthora_final: TTimeField
      FieldName = 'hora_final'
    end
    object cdsReportgera_compromisso: TStringField
      FieldName = 'gera_compromisso'
      Size = 1
    end
    object cdsReporttempo_cobranca: TFMTBCDField
      FieldName = 'tempo_cobranca'
      Precision = 15
      Size = 2
    end
    object cdsReportreincidencia: TStringField
      FieldName = 'reincidencia'
      Size = 1
    end
    object cdsReporthora_gravacao: TTimeField
      FieldName = 'hora_gravacao'
    end
    object cdsReportdata_gravacao: TDateField
      FieldName = 'data_gravacao'
    end
    object cdsReportsolicitacao: TStringField
      FieldName = 'solicitacao'
      Size = 2000
    end
    object cdsReportproc_adotado: TStringField
      FieldName = 'proc_adotado'
      Size = 2000
    end
    object cdsReportemail_solicitante: TStringField
      FieldName = 'email_solicitante'
      Size = 100
    end
    object cdsReportgera_cronograma_alt: TStringField
      FieldName = 'gera_cronograma_alt'
      Size = 1
    end
    object cdsReportcod_report: TIntegerField
      FieldName = 'cod_report'
    end
    object cdsReportcod_cliente_1: TIntegerField
      FieldName = 'cod_cliente_1'
    end
    object cdsReportmotivo_treinamento: TStringField
      FieldName = 'motivo_treinamento'
      Size = 1
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
      Size = 1
    end
    object cdsReportmotivo_nova_visita: TStringField
      FieldName = 'motivo_nova_visita'
      Size = 1000
    end
    object cdsReportcod_usuario_visita: TIntegerField
      FieldName = 'cod_usuario_visita'
    end
    object cdsReporttempo_gasto_1: TFMTBCDField
      FieldName = 'tempo_gasto_1'
      Precision = 15
      Size = 2
    end
    object cdsReportnome_usuario: TStringField
      FieldName = 'nome_usuario'
      Size = 60
    end
    object cdsReportnome_cliente_1: TStringField
      FieldName = 'nome_cliente_1'
      Size = 60
    end
    object cdsReportcontato: TStringField
      FieldName = 'contato'
      Size = 50
    end
    object cdsReportresultados: TStringField
      FieldName = 'resultados'
      Size = 1000
    end
    object cdsReportcod_compromisso: TIntegerField
      FieldName = 'cod_compromisso'
    end
    object cdsReportcod_chamado_1: TIntegerField
      FieldName = 'cod_chamado_1'
    end
    object cdsReportdata_chamado_1: TDateField
      FieldName = 'data_chamado_1'
    end
    object cdsReporthora_ini: TTimeField
      FieldName = 'hora_ini'
    end
    object cdsReporthora_fim: TTimeField
      FieldName = 'hora_fim'
    end
    object cdsReportcaminho_arq_1: TStringField
      FieldName = 'caminho_arq_1'
      Size = 200
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
    object cdsReportdetalhamento_motivo: TStringField
      FieldName = 'detalhamento_motivo'
      Size = 1000
    end
  end
  object dsReport: TDataSource
    DataSet = cdsReport
    Left = 544
    Top = 304
  end
  object pipe_report: TppDBPipeline
    DataSource = dsReport
    UserName = 'pipe_report'
    Left = 576
    Top = 304
    object pipe_reportppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'data_chamado'
      GuidCollationType = gcString
      DetailFieldName = 'data_chamado'
      DetailSortOrder = soAscending
    end
    object pipe_reportppMasterFieldLink2: TppMasterFieldLink
      MasterFieldName = 'cod_chamado'
      GuidCollationType = gcString
      DetailFieldName = 'cod_chamado'
      DetailSortOrder = soAscending
    end
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = pipe_report
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 576
    Top = 240
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pipe_report'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36777
      mmPrintPosition = 0
      object ppShape11: TppShape
        UserName = 'Shape8'
        mmHeight = 29898
        mmLeft = 265
        mmTop = 1058
        mmWidth = 284163
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cham.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 3175
        mmTop = 31485
        mmWidth = 9737
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 15610
        mmTop = 31485
        mmWidth = 10626
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 82286
        mmTop = 31485
        mmWidth = 9737
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt.Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 203730
        mmTop = 31485
        mmWidth = 12573
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt.Fim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 229130
        mmTop = 31485
        mmWidth = 9906
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tempo(Hr)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 267092
        mmTop = 31485
        mmWidth = 15833
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 127529
        mmTop = 31485
        mmWidth = 14690
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Origem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 180711
        mmTop = 31485
        mmWidth = 11134
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt.Prazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 249238
        mmTop = 31485
        mmWidth = 12912
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 529
        mmTop = 30692
        mmWidth = 283898
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 262404
        mmTop = 23283
        mmWidth = 16002
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label62'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 150019
        mmTop = 14817
        mmWidth = 13081
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'at'#233
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 140494
        mmTop = 14817
        mmWidth = 5080
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label66'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 120121
        mmTop = 14817
        mmWidth = 13081
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Chamados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 114300
        mmTop = 7938
        mmWidth = 58738
        BandType = 0
      end
      object ppLine42: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 265
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine43: TppLine
        UserName = 'Line34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 282576
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine45: TppLine
        UserName = 'Line35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 265
        mmTop = 36513
        mmWidth = 283898
        BandType = 0
      end
      object ppLine47: TppLine
        UserName = 'Line36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 14023
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine57: TppLine
        UserName = 'Line39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 81227
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine58: TppLine
        UserName = 'Line40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 126207
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine62: TppLine
        UserName = 'Line41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 176477
        mmTop = 30956
        mmWidth = 1852
        BandType = 0
      end
      object ppLine63: TppLine
        UserName = 'Line44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 198702
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine65: TppLine
        UserName = 'Line46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 221986
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine67: TppLine
        UserName = 'Line48'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 246063
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLine70: TppLine
        UserName = 'Line49'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 265642
        mmTop = 30692
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 273051
        mmTop = 2646
        mmWidth = 5556
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 279401
        mmTop = 2646
        mmWidth = 1323
        BandType = 0
      end
      object ppImage3: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000157
          000000850806000000EFB0BB88000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
          00BDE649444154785EED9D05981D55D6B53BEE4A94B8BB1120B8BBBB0F3EB8BB
          0EEE0383BB3B0CEE4E700F4E482021EEEECAFED7BBABF6EDCAA593EE84D8FC5F
          F793936B75EB569DAAB3CE3A6B5B8195FEADB41E9832658A95A4ADB4032AFDA1
          D21E28ED8115D603052B6CCFA53BFE4B0F940458D9A6F4AFB4074A7BE07FBF07
          4AC175255EC352705D899D5DFA53A53DB08A7BA0145C57E2052829B816B5DD84
          B1BFFEAD239DAF6F2FFCD36CC102FDF737FEFEFCF34F8BB670E142A32D58B0C0
          DBBC79F36CF6ECD93667CE1C7F9F3F1EE7CE9DEBEFF1C836F3E7CFF7EDE3FB4B
          3A9CF8ADD826BEC76B3E8BDFE679517F711C712CFC3EC7C171F25D8E85C676B1
          8FEC39AEACE71C53F44FF65CB2E7C87172FC348EBDA863FB1B97B6C45F9D3973
          BACD9A3543C7C175F63B4BC7C23DC0B59DEB8DE77CC6FB4BD70AEFAFECF965AF
          7FF4535C5BB68BFB307BDFD15FABF2AF145C5762EFAF2A70D5AD6FDC668E3F09
          E695F82F803006F57C0DA839B3671A8F73E7CCD24E05921A48BE633D4F7E40A0
          CBE04A1BDBFEC9406320B28D5A7C9F7DC5F6BCCF360B3438633FF11EDBCFD680
          E6FD590C6E359EF3FD797367FBF7F83D8E89C673067500008FB4DC7EF5DDB9FA
          5E8001DBF23C4022B6E33520410BD000388A6A457D1EDFCD825051FBF6BE04A4
          D23E5AE43C02C0D2BEA17F3867EF9B4C9F734CEC63C68C69B9C92D26A198C8F2
          27A1A200ACD89B837ED5EFFB31A4D73DAEA31FBFDEE37A718D788CFB20EE81C5
          3D66EF99FCE74C26FC711FC639716F02B4714E3366CCC84DF27CC604BA2AFF4A
          C17525F6FEAA0257C754FDE7E09A12BC7CD64337C4AC1F377230826C1731E819
          DC00DDD429937C008D183ED4860E196C837E1F68DF7FD7CF06FCFA8BFDF8C377
          F66DBFAFEDA71FBFB75F7EFED1BEFBF61B7FAFFF2F3FD9EFBF0DB0D1A346D884
          F1636DD2C4F13990CC816C3A381984EC3F0BB6E3C68EB66143FFC8FD16FBA7B1
          FF2F3EFFD43EFBF4633F86C1837E4BC02705758E7BC6F4A90E0853264FF46366
          DB7EDF7C65BFF6FFD98F29F6C57172CC1C2BEFFDFCD30FBE0D8FBCB7B8C679B3
          5DB4D82EBBAFD81FEF4563BF3CE791F388F3E1F56F037FF53672C4303FE65123
          87DBB4A993BDEFE917C02BFA8DD78092831AD7888987892D65F5713D17C7F24B
          3E149209943653403E76CC28EFF3689CCBC001FDBD1F781E7D973DE7A29E2FA9
          6FE913F613D7887BEB87EFBFB5F1E3C6789F70DE31F9C63D9ADC37ABEEAF145C
          5762DFAF0A7075A208B082AB3C26042037FB6797DDB1348E25161BB19CCF3286
          60898029C0F4DEBB6FDB3D77DF69D7FFFB5ABBF082F3EC88C30FB5BDF7DAC3B6
          DE6A0BDB78A30D6CD34D36B20DD6EF635B6CBEA9EDB0FDB6B6FF7EFBD849271E
          6F8F3CFCA0BDFACA4BF6EE3B6FF9200D8613837611F60ACB4C19E9A38F3C6497
          5F76891D78C07EB6ED365BD9669B6E6CEBF559C77AAFD5D3D65DA7B7FFC68927
          1C67D75C7DA50FBA2C93065C274F9A609F7FF6893DF7EC7FFD38FE71D001B6F3
          4E3BD89E7BEC66BBEEB293EDB5E7EEFE7CF7DD76B13D76DFD5DF8BE7BCCFE78B
          6B9C77F6B3EC7E78BEDBAE3BFB3EA3F11E8DD7F19C6D389E9D76DCDEFBEA9F47
          1E6E679E719A5D71F9A5DEC70F3E709F7DD0F73D9FC0989838A7608BD99541B0
          5807DE54BA89EB9B2FB504132CE950E0DAF05BB05526AAB7DF7AC34E39F9443F
          66AE09D7807E3860FF7D6D9FBDF7F4FB217B8E71AEF98FC5F52DFB601BAEC776
          DB6EEDD7E682F3CFF57B08B0E65C3936AE71AC044A7A4E2B62BB52705D11BDBA
          987DAE0A709D3787E52CC240C24C635915032ABB5C84B1CE9C3953CBCA193679
          F2E49C26CA601C376E9C0D1F3EDC2EBBE85F76FED967D9F65B6F659B6CB0BEF5
          E9BD96ADD5BD9BF5EED1DD5BDB962DAC51BD35AC41DD3AD6AE554BEBD2A1BD35
          69D8C05A376FE6AD4D8BE6D6B16D1BDB68BD3EB6D9461BDAA61B6E60FBEEB987
          9D7BE61976C72D37DB1FBF0DB4A91327681610E0CE9EE5CF674F9F669F7CD0D7
          AEBDF20A5BBB670FEBD5ADABB568B2A6EF9FC756CD9A7A6BBE66636BD6B891FF
          46E7F6EDECF5D75EC9B1D700F08913C6D9C30F3D60BBECBCA33559B391356BBA
          A6B568DED45AB76A614D9B34B6562D9B5BFB766DFCB16D9B56FEBC43FBB6BE0D
          AFD96E718DEFB46CD1CC1BDBF0BA79B326B9FD77EAD8DE3A77EAE0FB63BFD1DA
          B56D6D2D9B36F163EED1A5B39FC39A0DEAFBF9D1A7DD3A75F4473EE3718B4D36
          B69DB6DBD60E3E607F3BEFDC33EDB65B6F140BFF508CFA871CB03009220FCC41
          2249F56FAE79565B8E6B9F7DAF24C3212703A5CC15C0E39C393FFAB371A306B9
          D79C639BD62DBDEF785C525B52DFD267FC46F63A70BDD6EAD5C327EFC30E3DB8
          1050D17FD17D4B996B492EE7FF1FDBAC6C709D3F7781CD9D8D0144CBE3746065
          8D370CAA30928461079D0A809D3E7DBA8D1D3BD6FD723FFFFC737BE38D37EC89
          279EB05D76D8DE41B17E9DDA56B36A15AB56A9A2AD51ABA635AE5FCF41B46ECD
          1A56BD7225AB5DBD9A830480C7730097C6F7D81EF068B8465DDF1E600430F6DF
          7B2FBBEFAE3BEDCD575FB11FFA7D6383070EF0F6DE5B6FDA4DD7FFDB76D8666B
          AB53A3BA7FBF5EED5A56A34AE5DC7E78CD67FC566C73D595973B9B0930806DC1
          6AAEBBF66A07B91AD5AB5A83FA6B58DD3AB5AC56CDEAFE1A60E075CD1AD56C8D
          BAB56DCDC60D1D20D98ECF786F718DEFD5A95DD3BF5FBF5E5DDF8EFDD6AE55C3
          EAAD51C71A36A8E7FBE331F6C7EB460DEB5BD346FA1DF5158FF41193137D43E3
          7CE2DC38773E63A2EAD9B58B5607EB89F5EE6217FDEB3CAD206EF70905490419
          210C4DF9E019936C18F7E29E28F128CBC82DD3A74DB13EEBAEEDE7CD39471FD1
          079C7FF449F4C792FA6F499FD1877CCE35E2B7E277AA57ABE280DEAB67779708
          9029C20E9030FA55F757CA5C5762DFAF6C7075CF004963109739F3124B7D58F5
          63C0C5EBD059478C18E1607ACC31C7D88E3BEE68DDBB77B7366DDA58C3860DAD
          65CB960280860E6CED5BB74859625307B8260DEB3930B468D2C81B80993C5FD3
          D92CDF01806980078F802F0DD606B0F01E20C273BE0743851D37AE5FD7B769DD
          BC49EE37D9B66D4B98B018A5F6CF677C87E38BFDC28E6170A145B28C458FBCF6
          9AABAC439BD63E280178802A982FFBA2B568BEA61F67AD9A02E014CC1AD4AF93
          9C973E2BEA91F75A3615FBD523C7C53173EC4C2A4D1BD5F7DF818D366B9A9C37
          FB8165F33EDB463F3049D1071C1B7D088836AA57C7F7C3FE799FFDAFD920D96F
          93351BF8EFB46E05B35B5332496F974998445E7AF1791B360CA04DFEC24382E7
          3189CE9A35CB27D9F82B5E934D641A800C590236C92A804903D07376AEFE6502
          E13C61F03E493179886D2EEE91FD24FD9AFF483FF11B0DC4F65B791FD0879D3A
          B6D57EEB7BAB5EAD92A4A0CBEDA30FDFD3B1CDD0C207BD3531AEADAABF52705D
          893DBF32C175FEDC0458035C67CF9D63F317CA22BE5016F5F902592DBB67CD91
          B55CEFC16AF9FCA75F7EB6175F7EC9FE75F145D673AD5ED6424050512CB4B140
          AB0E035DCBB2666BC2B2D41AC354D51AADE1837CCD86751DD89A376960ED5A36
          B5A6FAAC59A37AD652E0B02600B386D8581D310E8104AF79CE366D004CEDAF79
          E306D64A83A64EF52AFE19AFF99CD6B85E6D6BDD6C4D6B2FF0E0FDE61A4C7CAF
          85065B1B004ACF79649B561A74FC26C7D2A7774F9DBF0C3CD3264B6298E16DEA
          C47176C3B55759A7B6AD049AB572BFCB7EF93EFB6AAB81DCA5631BAB5F5B6CA9
          7635AB57ABBA35D139B66CD628F98DE68D8B7C4CBEBFA6FF7EEB668D7D5F6B0A
          901BEA7778BF639B967E3E6D5B49C2D0EFD1979C337D42FFF01B756B544D3E53
          9FF03EE7BC56F72E56B75655EFF746F56BFBB9356E50C7AF01C744E3BC5B3465
          6269E0D7A3A1F687767BC9C5FFB2679F79DA860F1B62D3A64D5B441662824553
          CF4A454B725F0AADD697DCDC3B926D268F1FE780C804C4E44A43DE68DBBCB9AF
          645AAEC984974C96AD9A2413C8621FD57FDEBF453CD2A7ED5A6BF2D03976682D
          C9467DC87568DFA6B935AC57CBFBE5987F1E6AAFBEF4ACCD9949200EDE2AE11D
          B2120779E6A74AC17525F6FBCA02D72CB0220D2C9C2F7F5081A9BC01D3663655
          3A66802A60CBEBC38E38DC3A8B2555D752B49A186443B18EAED25379045C6B69
          69062038A00A4C19E03C32C8793F6E78C0AF53DB960E2C352A971770D44AC151
          1AA4067F3B314EC0AD7D2B699429F80264000CE0C200EB20665CBB5A65BDAEA2
          6D1A3A60F308A0B2FF0460013231EA4CCB7EDEA34B4707D43FE7010433A4DD4E
          B1E993C6DB0DD75CE9FB07E43916008EDF6C26A6D5424BF4B62DA47F8A21356D
          A8F3D43900EE8BFBBDEC6FB716E8456BAB7D761048B7D1F9D13AF9B936B44A65
          0BFC9CD61023E691FE295F506015CB145895F265AC7AA5F27E3C2DB42F009363
          0138AA542CE3FDDCA1AD560CEAEB96CD1AE87933FF1C2067DF4C664C783ED9A9
          C126D138D1329F7CE231FBFAEBAF73BEC12105C05E431EC2AD89BF2CD8668747
          0E5C05AC422E9B3B93C96A82AF3660E08068F78E1DAD7AC58A56BF562D6BD7A2
          85B5D76AA743AB56FE1C505D52E35E585CE3BA729E3CC6393391FB44A5470076
          8F5D77B0C71EBECF66CF98ACE39BA3154BEA2AB612C778F6A74AC1752576FCCA
          00570C58B405F3B47493DE3A639A7C520158F455B1B8057F268EE861BCE2F49F
          79E619BBE4924BAC51A346D6B469537F6CA1C1D0AC9996B1EDDA59E3C68D6D4D
          3190FA021F67AC02571A831C26D1BA85185BCB26CEB20004064134067CFDDAD5
          732C1440839155AD503665748083A4030111404783DDC1E20018400870633F01
          AA4D1AD4D5E762D21A68BC1F2D3E8FC74EED5ADB8431239DBD2E9C2BFFD79962
          6E6AF7DE71AB6DB7E566CE9261A5304CC09681CDEFC6BE01AC84092700CE3965
          7F2FFF39BF0B20678F35F6C167EC8BBED85C3AE989C71C69575F76915D73F9C5
          DE6EBCEE6A3BEFCCD3EC9003F6F5498789A64ECD2A3E81D1CF3CD2CFDDBBB4B7
          066BD474C0E51AC4B1D1173EB1A8CF429A41EF44FAC0108441680F79265C71C5
          65AEA787E1129085D1F2579C1C9073DF93C43465C2789B376BA633D8BD76DBD5
          258BD0D279DE5AF711AC1590E5B185EEA1E2C015B6BEB896BDB65C075E73FE71
          EF31C96FB85E6FBBF3B61B6DEEACA90EAE8934502A0BAC44885B753FB532C015
          500D700554E7CCD20D262757375C2DD0724EE01ACED523478EB4FEFDFBDB0517
          5C60BBEFBEBB952D5B56002A46288DB553A74E0EB475EAD4F106B8369716E64B
          5096C51AE8349EC7D2941B9E019EC8026BF863D70EB2BC0B5458EAD3BAB497F5
          5D400670F2D8A373075F2E03AA801BCFF9CC99A4061BEC148657AF563507127E
          03F0E27700417E270B68BC1F8083263B68C02F0200052A08604DE74FFBF0DDB7
          ECC273CE7490E737608A807EC8020DEAD410F0D7F4FDC09268FC5680FCE200D6
          07BCB68B6384B127D2888C567ACEFB75AA57B6DD76DCD6EEBCE53F3A8E37ADEF
          DBAFFB63BF2F3EB5B75F7BD91EBEEF6EDB67F75D6CD30DFA58B5CAE51C5499B8
          5812C764C67BB0355AF67C7D2270CD37595AA381622CC32007D0F694D167871D
          B6B3D75E7BCD060C18909B64274C9077460AAEDC1B59EF82A298AB1B089195A6
          09C4F478E3BFAF736D151D3CD1E35B599D6A3262D6ADEBF20040CB2300BBA4B6
          2470E53CB9CE71BEF42B133DF71F133CE0DAB15D4BBBE1BA2B75A975BD171064
          9106B7ACA2215FCA5C5762C7AF0C7065A20E292009862272CA3C1AA9309AC76C
          E2C489F6FCF3CFDB95575E69B56BCB2A2EF0C468554B4CA3AE0645FBF6EDDD80
          C52380DBB66D5BEBDAB5B30F721A033E9669B17CE63101C064E91FBA69B78EED
          DCE054A34A4537427516C09E7FF61976E2B14789F5EC2C230F4BCA442FACA665
          31CFD90680E820B0053030E8B0D4653F6E2C4A25822C6B65E001300032808891
          E7E7EFFB8961299A0B70554322183F7A848D1832C80ED8674FEB2D3D93A538C0
          0FB8D20041E480588A324900B6006330C4253DF2FB1C0740CB23DFE7380145B4
          D37F1EFE0FFBA8EFDBF6E77CB9490104D207D182912D00FFFE3F7E67CF3CF998
          F7553DC9252CF5E923981A1A304BE1EC35C84E3AF4B94B0A29C0D26F58D79106
          B0B8635DC7BA7FC3F5D7190119E11BBA70BEB477EE9525FC15FAC72E74FFD685
          D2E9FFC4502A067BD83F0E72B7BA8A65CB38B82205346D2043DB1A9228EAC950
          29B06DA6FB6B498DE38EE6FA7DA63101C644E89A3AE7E986D3355D3B8FC67DE5
          93E8FC52E6BA12A16DD5FFD4CA00571F2030D5B972C19A23676F07D7242C1547
          7D9CCF71A2C7791EF7956A552BBB0F224B472CB934FC2EB1F4A2D931205952F2
          DCDD87B444A7013E8069B2DC4D34CB609B0C1096D72C6F01882A92001878C71F
          7D947DF0EE3BEECB8A3164E6D42936638AF431B19FDF7FED6FAFBCF0BC1DB8EF
          3EB6E5A69BB80104AB388619F6C1200264DCD82180C5B80318BB512D65B0C112
          017DC0B59634DB375E7F59E72D6BB8DA9CD95A0E4F9D94D361A74F9E6043070D
          B4A38F3854C7B79E0F50066C4800B065F6D9A57D6B07C97CD921FF35C70420B8
          055FC7151306CF39562689BA35ABD971471D617DDF7953E72D6B3640A0C70892
          00A874B00E58AFBFFC829D70CC3FFDFCEB488BE6D878CEBEE817F6C775A0451F
          84FC80D4C171F01D7E93490AC353D78E1DD42F18C7749CBAD6B86DE5023832A1
          B44948DFA263260BAE1C2F9E17448AB9CB9740F6C76FFBD9D38F3FE6FA2B5E11
          61E0E211906D2EB969890D43DE625A18F9005824135FDD603044C649FBBA66D5
          4AB6B7583F1328E0EACCF5EFA5D2F85BA0512C73FD3B8050FADD92E56F5D967E
          2AEAAA7B1E8079C4EF8B0B095867CF4C425523728790D3179E7FD68E3DE628AB
          54B17CE21693FA70E22A0380861FA6BBC3A40EF5B8D7D01C24528D3396E389C1
          27B176F3885E0AD87696DE898E0A60D5172B3CE9B863EDBBAFBF1298E8F8640C
          A13120B38F7C06F05E75D9A51E2C90B87135B3AA15CBF920C24005A0D0000BF6
          0B330BC007600260592E0248F7DF779740606A6A394EC00C809D3261AC832C6C
          F6877E5FD925179E67DD2551B827442A698414D1A373FB44E3CBC81071FED9C7
          708D8231D357B8ABD100018E17F6497F0098EFBCF16AC2AE724090E665501F78
          BFD04F02DD07EFBDCBB6DB6A73FF1EE7DDB36B2767B39C377DE396734D24B16C
          8E63047CF84E30FD049493E004FA954726CE3B6EBFD523AD3C17439A17C09DEF
          9700AEE1A04FF872B8A4C062992499188E966194EB878F2EBFE56E7762ADC5C9
          02AEB52FAEE17686B14E7D8B4EEE2C3665AD7C87D50CFDB2CB0EDBBA7708AB15
          37689582EB8A03A16501AEFF85EF2C0E5C73C943D20895488482E1E18A4B2ED6
          CCBE9BBBC8C026C2B7D27D2E3508C2BF12AB6FD14DDFD14D9DDF12F7A8C4758A
          41CD23EE38EC134BF21EBBEC6C0F3D78BF0FE218C80C4A980F7EA8B924306922
          16D8D4FBEFBDE34B59003F74432603808B8114ECD0196CC6D89533EC488F045C
          CF39FBF41C73750387D80C2E3A0C3C7F941ECB607CFEBF4FBA4C515B462E2689
          306E318879CE79C5792EF6316F299B352E8591A9A6F4E3E38F3BCAFABE2F5940
          C7434B4020892AF2F8F8F439804788F1ED37DFE4C1114C26CE5653A061126B85
          0B5BDAB82EA17B6797D8F13C2CF1712C5C63FC8877DF7927BF0E9197C0A5024D
          D2B470CD8AC003CFD295E63408C61BF91B5C8BD5A470CC9147D806EBAEE3EE59
          B10209706DD568F1BAABB3D32530D7E877AE89036DEA1501C8BA1FACDEDB6CA3
          F593094B1313AB152689E20C757F8B9E2EE1CBA5CCB584D5015637C04D403449
          99178F493A3F25EF48194880178305D6B8DF5E7B8A9D75CA4545A18D31C01227
          7774BA248474718D41BA24700DBD8F9B1F708DE8AC138E39DA5E7EE98545128D
          704C9160834199CD6C85733A7E99DDBB75F1A89C8868C2F29D040B48CF4C97DA
          0CC6589E6775508C3D00D929271F9F0357F77B14B8163A982BDB95BC08686FBC
          F2A29D71CA890E60AB025C01A8C83896CB3426902551C9734F3F955AE3E56FEB
          C11A09E0BB6F7009C135EBE2E4D2071AA62655AE3BE1C8248921C289882BAEC5
          9C59D2E82529714F65734EB8349066204B0C5B4996B35C5E03812BFAEB867DD6
          CD812B93360D605D9EE01A6E67806BC8251BACDB3B0157AD484AC1750581DB7C
          DD04B315A134533E9ED9C67BF398CD34E3AC6E80B934C793DCF0BA87747E1823
          0055322091B0C353EDCDC5504284CA7CE96213C47EFE6315E54F8971011FD370
          5E678086F53EFC2B8B623DF15E6BC903D15A494AC8B6607718323AB5934EAB01
          4588EC6D37DD685F7DF1A50FD6902D601439238ACE038D181983C6FB5CA07F1C
          78902F5DD17A099F045CF1DB4CC245137D33DB8A02D7C3954826D83C8FD9B488
          3C8FB4896FBDF9BA9D75E6E90E084B02D725F54DFEF1C4EB608A3C2E8EB92629
          0D1337B9C8E1CA04048BFFE8FDF77CE28B4930DC9A8A025726BF00DC424F8242
          FF5167BB6943B20064E9CBBB6EBBD5FA7DF9452E21CB8C691801FF943B5F1264
          107AAB7B12A4609A05D7780EC89258859C1344B8450001324480EB6241B608E6
          9FEBC3D4D8B5087B4DB56DC0358CA24847AC4698307D4550CA5C974D1620BA73
          D88C05F6D1D8B9F6E41FB3EC8AEFA7DAF19F4DB67DDE9F605BBF39CED67F75AC
          F57C718CF578414D8FDDF5B8EECB636DF3D7C7D9EEEF4EB07F7E32C92EEC37D5
          EE1D38C3DE1E39DB064C959B9276BA3420B7AAB6653582DB159E01805636DFA8
          EB601986F6EE3B6FF8CDD7B1756B372CB0A4EAA99B10B727F42BC0046354F896
          2E0E4000D2E2C0D5976B02700C1A8001F1FFEFBEF986FD3168703209084401CE
          F06288E7BC862D31A879E4FD5B6FBEC5BA74EEE86E44A107E76482A296E0A9AF
          A7FB7B220BC84ABEA7928A44D2E67C700508B2E07AC6E9A7FA6FAD1A704DB257
          454BC291177A6A46408F70D208D3CD69977805F8049730D85855E45EE7822B8A
          06D7300AC100B7D96273BBFBF6DB8CC436E42598354393335E2629B846662D4F
          D29DE695CDCA021162CC676443C370865B16E08AFCE42BA394B9FE1D70CD7913
          64E4032608EE6F56313CE275814FB3AF504AC1B564E03A4BC007003EFCFB4C3B
          E6D3490E948D9F1A65951F1E6105F70EB382BB865AC1DD6AF7E839AFA3DD973E
          8F47DE679BBBD3EFE879F987865BFD27465A5701F0011F4CB41B7F9E6E9F8F9F
          6BD30460AB0A4097F4BB30567C58F16975804A1343CF956BCF3CB9F8889FDB74
          45AA60B85943008AE5BE797DC566376BEECC959B94B04C1EC3B73409292D7487
          C97FCE406E9361AEAD356068C15E7116475BC322CC604A92B5D4B7D123473968
          C6008DBCA2D9D4864C16F13A128AFCF2CB2FF6EEBBEFBA8B58243A89CC5518D8
          60B2598DAE506F4CC015E31CBE9DB8A101B091383B32E67B22EC34C1F49B6FBC
          E6A9FD3CF9C81234D76561AE59068BA68BB6FBE17B6FE7FC6E1D983CC823C907
          99EB170103FD3671EC388155277771F25C0CEA670F2B75505D3CB86625039E67
          23C878CEB9A05BC2A831066DBEF1069E9D0C23A31BB560A8A97B56A2B926D50F
          F8F344E3E4924D3D0CD81E601E337AA41B4A61AA1E4CA0BC09913FA238702D8A
          F937D50441CBEF77D7C1330DF61A61BFDF7FF365123CC2CAAD145C170FAEB053
          400E86B9D16BE3AC3A400A28028E01A280E6FDC3ADE081BFD1EED377037C53E0
          2DAF7D02B6470BC85F1E2E5625405B5D8016D68AB40AC802AE0006E9E5E6CC55
          0CBD1CA867CF9966AFBEF6829D71EA0949A8AA00A3495DF9A136D4E024B98696
          D7DDE562D58114797ADD5C0EE76D0556F94BFDFCD7C5812BC08A1103505DB301
          D1424D6DCCA8D136737A92253E0C23D98C5C0C56062DE1972411893231441291
          FA70830D36F0C00622C51C50D500CE240948A134902F0B34D1E7E44398261D11
          3048124727124A5421081079E3F5570DE64AF6AA5506AEBAD9237B9997AF9141
          0906396DCA54EBD4A1A383AB1B2205AC443B1507AE597D3C1F68791DF91C3C04
          59204B5F923E92E82BB457077DFC5FD3D23EA4AE8C043F24E2CEE68C650530E4
          8F419EB01C2987490AAD1C70451EF2DC0279CC359FC12E0BB8C25AC37088B193
          49E295179E7517BB52705D8CE63A64FA3CBBF9E7A9B6FECBA3ACD283B0CC9491
          FE5D105D5A004E1971197DAFFDB3A3EDCCAFA6D8571388745AB59A6D806A309D
          A47ED5CC84A5FD39D7860E1B64F7DE73BBADB74ECF24E9078610DDF080681B81
          0E800A9802AE3CF29A561CB86665812C6BE57B2C5701579681F5EBD475706DDB
          B2958D1C3EC20122D21A02A0806B7EDD28062E114211E3CEF60CEC830F3ED8D6
          5B6F3D075718AB675BD231231164D94B0416842C00B8D6D3394F10A3A2EE137D
          E396700C68A93E1D49B9D15C61AEAB0A5C5DE649E23D0A63FDB52467529A3461
          A27568A75CB0A907468493BAF6BA04E6DA42D73CDF009905D924E18D92A9085C
          D15FD15ED19CBFFCF413AF2E006022E3C47520CB5A726DE4E921AF862CB86284
          C428F6FC73CFB89B5FA458E45E80C566BD0516C7601707AEF9BAAB1B5653A35C
          80AB27B311B8E2D38BFBDA809F7F48FC5C4B996B2173FD76FC6CFB67DF31D6F0
          C1C15670CB402BB8FD772DF70789A5FE216639440C5540BBB400B93CB607D41D
          688759D50747D8766F8FB7978691556AD5806CD4E36329493A1612AF0836524F
          81F9F6F8630FD97EFBEE6995CA1524CEE4F83DCA121EC60CF4557C0623D434DC
          8D8A93058A62400EACA9AB128F2C0319A40C2C1CCAB1FC4F9F3ACD590F833340
          960901A0A585D124BB2C8EE5F1E38F3F6EFBEEBBB722C994492BF5CDC50FD793
          3213C0A0305CCF0895FAE03A83D56BC0B78E34D45F549A65625A4EC61DDE5339
          20EA40210D00AEE79C7DA66BAE68C64C12E8D38082B344183993C7128C2EC519
          B4F81C59E0F8A38FB40F3F7837E71696D4FB2A2CB6481FB90788808D4969DAA4
          896ED1A72F732E7469BCFE5FA59B447F65126CA9899416201BDE1C39DD52E7C4
          B9715E2435E79A55AD58C193927FFCE1470E4C1818131920B96E49E834798093
          2284BE1A48BD07FABEFFAE5D73C5E5EE8D826FAB0711C8B8E913AE8E97E784C2
          8666CCEB268AFEE3B5CB49C5F4AD7B86A4411A5C77DCAFC27324C095E08A2B2F
          BDC83EFDF0FDC582EBCA72CD5A6D5CB1FA8D9D6507BD39DCAADCFE8B15DCF093
          15DCACC7DB7FB5823B04B077FE265013C8DE0DC80A7401D9FBC4649707682ECB
          3E007898B46404A40A07590D8E952919388B90C3364C875CAD3C7790557DA551
          32826CB2F1FAD6B54B07772DE2264CC25193E421B84A01B46B689667091C832E
          7FF01505B445816BD6C890A4FB4B34B724076B33D7E142738D419A9508482282
          1410EF6513783398070F1E6C975E7AB1278E21E821021DF083F528AD34890CE7
          169154BCC7B63595ACFACB2F3FB71132D22C5291343566850B18E07AF65967E4
          C095010FC8AE1C704D4AE964CFDF2716C9024C4A13C78E71831646C23010717C
          CE60F334F2B83E250157E2FD0138F6837707D78B44E73B6FBF9D3DF6C8A37ECD
          08468963E3BA20D584F134262AB457FA91D486471D7E98EF0370F5BCB64AFEC3
          B1F23B3CA74F439BA76F79CEFB1EB955427045C2E0BAA3B306B846282CEC95C9
          EBB5979ECF0511AC2C30F58ECAFCAD7270FD63EA5C3BF61DB1C19B7FB0826BFB
          59C17FBE17B0FE28D62A80BD45007BABDA6DFD05B20304B229D0DE0DD00A64EF
          056457219B0598A5CF9611ABDDE6CDF1F685B4E19505B0806BE4629DAED46F31
          0086AA78DF175F7CE68993BDA52182497214455D65C095F47E18B500D5923057
          06F292C03562BF93A4D589959846F67F96B7A1B76633DF474ED1587A86B12BD8
          6DE8B077DD758792C97448DCB0C45E4316703623E395278F4913BB78F82A6C56
          ECB6862A0ABCAB3A5F8307FF9EABE29A785328A94D1AD4C0730C5AB862B9B780
          186B3EB806DB2A0E00E2F360595963D6E2996B02AE913025F728BD13801B3B72
          84032B004BDF7A52ED609D2500D79006F2274F402D3255617C62DFAC3A60B1FF
          BE56B907C628020B97B9B40617AB8BA95315ED9656C38DE8AC88022450046026
          6C392A2BC0540156FA0F30274B16EF01ACF17EBC2E69DF46041CEC15504D1292
          27116BEC63BFBD76F7A010D75CDDD8BB6A02095619B8CE95C074C77763ADC51D
          02D3CB3FB7826BBEB282EB05AE377C2B80FDCE0A6ED4FB37097001DA9B7F2E04
          5967B300ADD8AC836CCA661D68C52657856C806420235B15791C1CFFF9641B3B
          7BC10A07594F1BA870C360AF0C0032CE53988F4CF0843E12A114D14C0CACC8D8
          E44BF734CA259B89684992407C56527085B5305031667895585C7B32EC2C0B24
          D93224B13C0654237B176CE9C30FFB1A005BB95205379474ECA05488E8C61A50
          91D084505C424161E8B5AA57CA3157BEF78D229D00038C7EEE35905649F512DD
          02D760AE042D00AE800E833FD85548038B8B20CA82E9221E0C796CAC685940C7
          9302187D144C2B98EB8431A31D5CA99090ABDC90C6E92F89B9B6D244440B70CD
          DF3674506792BA5651E3AC72F972B6C76EBB3B7B0D700A4927092A880CFF89C4
          822C402297CBB4BA88E38BC0814E324402E2F4291200795D01DA9007A25FFDB1
          18E61ABECD91A721A94C91484318B2025CF175BDE9FA6B55C071AC7B3BC4449D
          CF607329144363CBA79E7FF3F52A01D7FE1366DAAECF888D5EF2B180F55301AB
          C0F5DA2FD504B0D701B2DF14826C0E68539085CDDEB618C9C0D92CDAEC52822C
          E09875D3425BE5356D6964033C0E2417749387C15BF29B5D912CD6D99FEEFC24
          0976F2F7C5175F7815CE0AE5CBA6654694A99DA4D069B864A4E2FB8BF686CF60
          AACB1607B025910582B94604102E3A30D760675997AC580A679DD4A31E3D5A6C
          30D95F9570E635D587AA5AA5925BA259F2230B3079908A8F1CA7911300765EAF
          4E754F46534D59A02EB9E4227B4FE1B41E1546D917012B6C2B982BE04005D1F3
          CE3D3BA9CF2420083615E0CAEB922C5D9795B9E6BBA9F92493CA0258EF61AD59
          CD956371705C02730D702D0C2A5874FBD041D957F8D1B2E2A852A1BC6DBFED76
          76D92597E662F3A31C5002FE890F2E201B462D821DCE3FEF9C5CF41FCC156908
          70256136E9079104E847126AF31E201B605B123D3B12B4D0C7006B36810F5A6B
          F8BA02B6575F7E898C7223DCDB215CFB6242CF82EA8A04D8950EAECFF61F672D
          6EFCCC0A2E78CF0A2EFDD00AAE10C05EF9899A40F66A18EC176A025A40F6DF02
          59075AE4823C368B6C1092418ECD4A36B80B469BD1669DC9A62019008A5E7A97
          98AE5A597C5CB50DAC1337AF6A6A55D5AA3F34C2AA08582BB0ECC77FF6CE647B
          D75A015FF6FBE0625CBFF49D4AFAECBC6FA67A74D88A0059BF29B8D1D55C6F15
          F3B9EAAAABBC8431868948D187E12A92A9900A2F49A5975A5BF332BF1707ACC5
          C9021192C9B235F214F09CD47601AE01A6EE8CAE7308A7F9EC4D1E6E5AE13580
          263B46D6EB9F553E9908AD70C562D9EFA19C92043060E5FBB9B22DB2C069A79D
          62AFBEFA720E5C31C6641DE1015A4A84030E1414045C43070C4D7269C1751117
          B1D41F7349B240FE849305D7A20C5AE199B124702D8CA44B8C5C7FD996B22BF8
          CB0A5CB37A2E12C1169B6D6EC71E7D8C33BFB84EE18615E0CA0A203C303EFDE4
          232F554EC26CF6C5CA05DD957E8C2A04FC0EECF5B0030FB44DE4FD015BE57326
          0937222E2573457385CD862CE0136D1A5CF0AFF3CEF66AB811C2CBBDB4D2C175
          450CFCA2F6B95003E9E2F7075BF90BDFB182F3DEB6828B01D7BE6A1F58C16529
          C806D05E25F00568B36CD68136950D900C68E8B4AECD4A364097A501B468B380
          2C5E0677483AB84DCFEF1C6CD504AEAD1528B0EECBE36CD77727D9D19F4CB573
          BE9A6E177D3BD3AEF8618E5DFED35CBBAAFF5CFBF780F976DDC0F976F9AFF3EC
          5F3FCDB1D3FBCDB2033E996E9BBD35C5BA3C3BCE1A087801E5823B04B6772686
          ADBF305C58AC3C0B76785B69EDA62F7F9900BE1A9A2B062D58DE86EB6F9014C0
          F3442C49AE4B8095E82B0C5761F0C91AA082C5028C2561AF4B62AE917333DC6F
          C25B802823B4C3AC453C062A4C28F223E44728F13EC09AFC2D7463DDBEFBECE5
          B207EE3EA442F4C1A53CA95E1141A906913E48760D93E573BC054E38E1387B51
          85FAC28508B7AC707E471EC02083A5FB82F3CFF5AAAF45816B498D2E45014461
          A294C5790BE07F9B780B641F615DF41BE08AC1095920BC05B2515A59D0CC1AB4
          8A03D7A816C0BEF0A165C541236CB55B97AEB6F38E4AE842DACA74D95CE8EFCA
          7B30C2045C71D97AFAA927FCDA500D18608D63E53700571A7D08B8DE79F3CD76
          D03EFB387B056079CF531296D0A0954DE1186915C3C015608B51EBD5575E70CD
          18E61A3912427609296A8532D79501AE9367CFB7839F16189EF9AA159CFB8615
          5C2870FD97DA45EF26207BC9FB85207B7900ADD86C80ECD562B339A0FD7A31DA
          6C80AC2403C0F6C65FACEC4DFDADFEFD836C931746D9117D27DAA5DF4CB31B7E
          9C65370940EFFB6D813D3AD4EC85F1661F29A17A7F79988C949D83EC947A6913
          450927ABB198C51985F7466835241CB697279A5D3B70A11DFAD10C05198CB30A
          F78F12D0A6D161480CC168792ED64BF8EDD7F28D5D9E7D4D3DAC794A92214F50
          1BA765E3F0E1C3ADA122B0DC599B0A9A45445A1566AF5F7C145671EC7549E01A
          DF8D2AA69100C64B1EA7062D6EEE2C6B8D819B05D6601889EF6EF8BD264B7A34
          E52D36DFD40D4FA444640988BE4AA0049307A56600D8DA352ABB2E0B733DEEB8
          639418FC595FC24E57B55274D74532390928DE7EEB0D970570808FE56B68AED9
          7479250180C569AE806C4468E567C5CA4E3659CD957EA34E55C802E190BF3CC0
          35A405D82B60C87D932B32A888B05E3D7ABA348127471C5392252BA97C19E04A
          5F5EFFEF6B7DD5442E09EE41F45B376AA62E6301A40D55D5E2FD37DFB4538F3F
          DEC1355604BC5F5CDF46B040A4760C1FD7C8EB0B9960C586FE7AC4210779BAC9
          2434BCB065F33704D07AC0461AE092CEE4CBE5A160790EF8A2F63561E65CDBE9
          012DF34F79C10ACE065C5F177315C09EFFA6A481B752A0159B05642F16C82E02
          B4920CAEC84806802C92816BB3806C9E6470BD8C61D77E6B3504AE7D9EFCC38E
          ED3BDEAEFA7A8A5DFFED54BBEEBB9976DD2F0BECE951669F0931FF908789829C
          849E42D8E16F085DEF32FB4E75EEBF38D9ECC343ECCFBE07D8C2BEFBD99F1F1C
          64F6E93166FD2E34FBE9467DF1BF42DDEF756FC9FD445F1F24C07D51007D6CBF
          79D6E69909921052469B65B302D8164F8E520E8439CB0D6029D732436904A7CA
          53E08DB774B39E7C8A552C5FC1430EBB75E8F0976000F743CD950659BDC035DF
          9A1B377A041A60D07240F48434B3BD5CF491471CE6062D72BD122441FED66E2A
          B54C0E56F2BBF21AC3178104570B903F5382F0C831E04BD9D4D7358208D05C91
          05FE2F816B005F18B4A2AC38F750DDDA75ACFE1AF56CEAE429BEB208A6977877
          24D7220C5B30FFFDF7DBC7D6EAD5C33D05C24BC43D063209B29910BAAAB2C56C
          791C3C74CF3DB6E9FAEBBB161BFEC4C5816B180D910160A8E18A15BEAF91509D
          24E91BF6595B09E1F7735FE1AC1CC084CD64914DA5B8C2C0B53888FE3BE03B6A
          EA6CDBE91E81E309CF58C1192F5AC1592F0B605FB1827304B2E7BC269015D09E
          2FA0BD4040EB6C16904DD92C401B92C1651F25204BBB2AD5669DCDA606B0AB05
          B8577C69F56EFEDEB67BEE0F3BFB6381EA9793ECE24F27D8259F4FB15BB5BCFF
          58D4738A96590BA70C10223E28BA7AB8CD7FAE9BCD7AA496CD7AA0BCCDBAB7C0
          66DD556033EF4CDA0C3DA7C56B1E67DDA3767F199BF550559BFB544BFBF3CD9D
          CC7EB8DA6CFC27A263D36D84C05A04D6D67B63BA95BD7764221B84F782BC095A
          2A0F42DF31CB0760BD44B6020800D8871F7ED8B6D96A6BDD704984146CA0C88C
          55AB29B846C1C4B817C3BA1BAF01D708EF252C931CA75433DD769BADAC57B7CE
          D6AD733B5BBB57575BAF778F5CDDAB1E5D3B78CAC20D375CDFFAF67DCF7EFF9D
          70C885364391441E029B7A0C040B7BE7ED371D5C3168FD5F61AE5EE23ACD5380
          F109708521A3D9D7AE59CB6A56AF6113C68D5F44CE61220C700D63167DB9CDD6
          5B3AB802A861D084654759170094D22F7D7AF5B20592B09ED43DBBEBF6DBE7CA
          C094C458182B827C3F57C035C277015E7269705FECB0FDD6BE628A6AB61C7B49
          C17579F8C6AE3083D6B8E9736CA7BB048AC73E29D62A703DFD39B5E7250D0864
          CF14C802B4E7A4407B6E166883CDE6C90697A5DA6C002D208B11EC924FACE675
          5FDA364FFF66677D38C62EFE649C9DF6DE183BF7C3B1F648FF293640F2DA8279
          A2AA3F5C690B5EE861731FAE6EB3EE1670D204963305AA33EF53BBBF848D6DF9
          8E9A7F5FA03BE7FEF236EFB92EF6E717A74B4FF8CA666AA9FECC38B30DDF9A2E
          4D56B910308411C22B9DB6E57F472F177F588A0D2209CC9134401DACD60A33ED
          A4104980754D859EE62755599D992B4BFF6C10416864A1C726E59F0B97A39181
          E9E38F3EB0FFA86AEA2107ED6B3B6DBF956DB6611FDB78BDB555D97553DB7F9F
          DD3D57C0CD376BB5915AB6792414965C0330E060ADBC1FB2C0FF45708551BAF1
          49116080AB5772D53D54A35A751B3582042849B9ED60B001AAF1881F738FEE5D
          AD53C7F6395FD95C8997D49D0DFFD6F5D65ACB76DF714776662F3FFBAC1D75E8
          A1CE5C234AABA4CC35803472FB46DAC448248E1B22951FFAACBB96FBEACE9891
          F8580398210B840C1386C490AA62425F6DC17596B2E7FCE32101DF110F5BC189
          4F095CFF9BB45333207B86640280F6AC9752A04532580C9B75461BDAAC8C6000
          ED457DADDCC51F58CF7BBEB7E3DF1A6EE7F61D65C72BC2EB38B55BFB4DB08193
          0B354E2A412E18F4B8CD796B479BF1500D9B013B05204B0AA8C56C3743800B58
          CF14D39D7D7F0531DAED24D0BE6C52AAECF611662D9E9B2C435BEA872B06DBFD
          F931F6FB34F906FE8D5CB6305780759E5CB14E3CF14467190EAE8DE511F03F08
          AE006C30D87CE6CA0D4FDE8400585CA860B09314D24AB1C101BF7C6F4306FD6A
          7F0CFCC5060FF8D97EF9FE1BFBE9FBAF6D90D8EAF0E15A4AA4FEAD915FC023B5
          52772CCFECA4CF61AE68AE780BFC5F61AEC15A3D60827CABD25CA3F6550325DE
          E19E1A32F88F5C529D2CB8BA7F6BEA92F5870234708DC37B233C45A2DA05C089
          76BD468D1AB6C5461BD9C9C71E4BB4847DF8CE3B76C9F9E75B0315C78CE8AD92
          826B18B1025CB39AAB97E9496B87B56FD7CA06FF3E4813EA84BFC80059A920EB
          0EB8DA83EB452FCB6DEAA887C45A1FB182E31F972CA0769218EC4900EDD30259
          80F6D942360BD0E683AC036D9E368B018C76EE5B56F7CA8F6CB7A707D8296F0D
          B5A35EFDC30E7A61909DFDDE08FB688466A92524555938E9279BFBE9D136EBE1
          DA09C82E0D6B2D211803B4B3EF2D630B5FD9D86CECDBAECB1EF0D54279188C11
          7BC5A56BA8EDF4D6789B3C77D9D3197A896CB96001B007CAB5A57A555505157B
          25290699AFFE97986BF8B58645B728E3164BD11C6392EBD434790E78F67B4D32
          F3666BA9AF348BCA926CF3674DB3D9D326D9F429E3DDB13D17A2A9EF906C0437
          2CF6E56C3605D82CB8E22DF07F055C238436524446549D27E656D29D3AB56ADB
          6F0306E692EC141A22D1600B5712DF7DFB4D2E0B5654B6F0642D049164C075A7
          6DB6B16B2F975D431AEED79F7E6A77DD728B832BD201D15B2501578C82113810
          B905C2152B3E8BAA04CDE53DF2D30F3F2A1C5C49683CE14C61B456165CE37E2B
          4E225DDACF97BB2CF0D49783ADFAB102D6C3EFB78263C45C01D8E31E2D04D913
          53903D59201B6CF63480569201207B46CA64439B05646968B380ED99AF59EB1B
          3EB5835FF8CD8E7E7990EDFFCC406FFFFE7CB40D5326AD92B2C185E33EB3396F
          6E6B3359DAD34A089C25DE0E360B93BDAF9CF45D19C5660DB67BC562EB3D3129
          D162E52F7BEA17CAB7BA8CEC3557CA4559D777DA717B55F4AC9E4B30D2AEA9C2
          1A8BAA12B09A6AAEB1FC8F10D8B889B3F9076269CF723EC25793B0CBA48C32D9
          E7A99B14E5A9798E7F6D0072D6F13D74D6EC6330D79C410B373696B4D4E88AE2
          7A2548DA921FC195EFEFBABA790B84BF2CA01821AB68AF6B6A92461A18D0FFD7
          45D24426CBE534322B356AE1C646C96E587F24ED015C23C7042C96642E07EDB7
          AF3D70CFDDBA56B3EDDBAFBEB4A71E79C4F55D0F83F590E925276FA16F0340A3
          6E16AFC3FD2A0C5B1D95AF386AACF5FBFA1BF7A44176CAB2D27C705D1E32403E
          F82E5770FD79D464EB788ED8E93FEEB4827F3E20F6FAA0151C2DA00D903D1690
          7D2C01DA139F4898EC4902D99353C900367B9A40F6744036950C0264A5D39639
          E365EB76CBE776F073036CFFFFF6B7DD1EFFD9F67DBABF3DFAE3782FDDB2B440
          45B5CAF9BFDE6EB31E6BE84BFA1203E75200319201BAECFC279B4B2A78CABE93
          FCDBE3A5390EB09515DCF0942A282CED71B3BDB3366A05497BEDDDBD8B571120
          4F407DB9A1E0D35A9C4BD5B27E5E52572C0659B862451041DCD045B9622D2D2B
          28C9F6D9B0DABF6E5F58AE84BE24882071C512739551049FD9A8CD1505103D95
          610900367F9B6C5A44C095EAAF59572C2F9498FAB8FA2067E9959647C7201311
          5A91783A0BF6C975244020694BF6732DDCCECF25CDF4E5D9A90480E8AE3CA2BD
          06731DF4DBEF2E0B20DBE44274534F0BFA8D5483575F758555A95CD1534146B6
          B2A826EC291CE5D54154DD49279DE05E1BC83AA3460EF732EFB8D3111412B979
          97E5BECC168C8C70EEA8244B350B2217B37EADDC0B9E752C4D699965B459005E
          5C2457498178B981EB6CE9AC87DC296D749F9BADE0B0BBC55CD58EBC57207B9F
          9A586C00EDB145B1D9146861B3E8B2B42C9B15E09639ED05EB79CB67B6CF533F
          DB8E8FFE605B3DF89DEDFEF84FF6CA4095495E46F617DF5B38FE4B9BFDD23A09
          C0AE009900D00EA9C0BE3FD746CEFBD3B67E7BAE22CC8659E7E746D9E0650832
          F082762A1FBC508CAD7BA7F6CEB00055B25D95826B3244963C084AC1353457C0
          3A5204A2997AB273C902780CA0B9F2C7B23A22B5A20437B20AD56A4F3DE5A45C
          826CC03522E848F90868926C8750E40B2E38CF086366F581118C6C69DDBA76B6
          B66D5428539AADFBB12E43CBAFC69B03588D8973CE3ADBDE91BE1B809ACD3C96
          3562E5BB039614409734C92F37707DF2D38156F190DBADE0805BACE0903BACE0
          50B1D7C3EF4A40F6887B04B4599015A33D26D564910C8E139B45970D360BC806
          9BD5639993FE6B5D6FFCC8767AF47BDBF2FE6F6C937BBFB6ED1FFE5EC03AE16F
          036B00EC9FB346DB9C77F74E0076391ABBB26C7806FB158BB54FF6B509B3A6DA
          B6BAE605B70EB7133E9BB8D4E7C10D3E63F2049B36719C976D210A8B9B0AD615
          795A97E5462DEE3BFF4BCCB5145C93BCAED982858BB0DC4CF82BE00AB046841F
          06AD5A356AE6BC05B2410ED9D22E00E55EAA5316C9B10153723E7819744A02E9
          392C965A68F81B8F9554C3BD0B7B9DA1808E0DD6EFE311772B0A5CF7DD7B1F7B
          E6996772E01A7906B259D84AB20A5A966D960BB84E9C3EDBFA5CA825FE9ED759
          C14162AEFFB8D50A0EBE4D202BB03D3480B608367B749E6CE0408B010C26AB76
          82F4D9E39FB07657BF6B5BDDFFB56D78D717D6E78ECF6DB37BBFB2A77F1EBBD4
          80541CC3B579CA56FFD1113613CBFF8A62B0A94C60EFEF6223278FB35EAF2E50
          5E8391F6CEC8A59307B84127AA4ED0D0DF077836796A64456C7F29B896642894
          32D76C4583900370C542CEA9A79240802B7EAED965B34F5899000CB28AADBB4E
          6F0FD8004461A9841D0396BC477E079EAFD7671DBBEDB65BBC22049A2D7A3961
          B3DB6DBBB5F5ECD1CD139B2F2B737537C3B46C4D7E75D88D37DCC8EEBFFFFEDC
          2A26A2FEB24111215795E4AE599A6D960BB8FEE755454AED79AD15EC7B8398EB
          8D5670E04D6A02D98304B239A04D41F630D8AC98EC226C56FAAC6BB3A1CFA66C
          F6A847ACF145AF0A543FB3756EFDD87ADDF2B175BBE923BBF9B3A1CB1D580378
          6DBE4AA57C78E80A07D85930D80FF7B09F274EB5359E9A6DDBC97B80542CC54D
          003929434BB2914306D9979F7CE83756B0D728995D1C035DD6CFFF9798EB9207
          4229B8E692BFC8150B2900AD3592AEC05C89D0A2124256234F18AC6C15690502
          B4532F4828608DCABCF8BB2203841C00B8EEBCD30EF6E8A30F7BC86CD653E3C0
          03F6933FEADA49A6B3A59404BCD40B4971D2EFFD0560352EBA74EA2C5FE79B73
          062D186B84F366735D2C0F1960B91BB4868E9F6AEB9E2D50DCF90AE9ADFFB682
          FD04B0B4FDFF23A00D90955410201B4CF6306483543238026D56BA2C46B060B3
          473C60354FFFAFF5B8E903EB71E307D6F586BED6F6BAF7EDB8977EB6A973967F
          22942CA8FD396F9ACD797BB7243A6B298C574BB32D86AE3900ECB727DB73C317
          5ACDC7A7DBF3436796185C99F907AA4ED08BCF3C658D946EAD733B955E963400
          8BE5F5B2826771DFFBFF015CC3E2EDD54DB502F8BF6AD0CA826B94ED8E643BCD
          E571D242958229735EE8DF9AC4E047463140926839D24086510A29A05D5BB15F
          016A68AE80EFB1C71C65AFBCF292BBC2D1EF51D2FCB4534FB6CD36DDD813E62C
          0DB806B0E627795FC4B8059BD5795C76D965367E7CC2C0C390156C3C820AB2EC
          757901EDDF66AE0FBCA7CC54BB5C6605BB5F69057B5D63057B8BC1EE237980B6
          EFF585409B65B34806074B32086DD6D96C469B15B32D2F906D7DE5EBD6F9DFEF
          58FB6BDEB2E657BE699BDDF589FD38665A8901A8A42CB0A8EDFE9C36D866BFD0
          7B857911B8914B1AEC0281AC0DBCC5CEF8D66CB77767DA4CDDBC25396E6E7058
          EB0DD75CE9462CCAB8447D2C2CA5C581E4B27E5E52700D4F011E4B92B8656996
          5BCB67DB84B946CB7A0B3039E12D105E023C8656B93CBC0528AD9D9FB8259B72
          D0135493E45971F12419C75B801A5A0060547F5DB4C4CBB2790B847FA99761A1
          447A9AE01C4F8FAE9DBBD8D65B6EE5C741C6B500261E3164794972F5DF7DF7DE
          ED19CA60AA5EB34CE1C3E10110257948407E779AB01C1FE35CE871FA7D34DB8A
          15CA259E1899E57DF61ECDB2D47C602D0A68D90FAE5BC81BC72A70E1CB2FBFCC
          85F166F30A64535E66E58FE5718FFD2D709D3E7BAE6D73918C51DBFD4BE07AB9
          15EC2180DDF3EA4541765F40568C76FF94CDE64036C366015A182D6C16A03DE4
          4EAB77F6D3D6FEEA37ACE5E5AF5953B52657BC6E777CFE478980A724E054926D
          168C785DC10635578C1F6CCA88F185B5FF36B181C3FAD9666F9AF51D55325F5D
          4FF0FCC6AB76C905E73A53055CB36E28CB0A9EC57DAF145C8B2FA4579C2B5651
          E0BA48F2102A960AD448F71759B1025CD14623274061D2F36503D7A86D45DC3F
          290D9908EBD4503E5B19B7B6DA624B3BF8A07FB84B58B0BAC2C8B9240003F679
          D1BF2E70FF56B4556480A8CCCB73C096C6929FF0E2DF7E1B909435272004062B
          E6FB9AF2EC1EF5CF23DC20E6B97933CBFC5C96B5BCF7D806229105D57C8980EF
          02AE0442ECBDF7DEF6C4134FE4CA8267DDDEF20308F2BD06FE0EC8FE2D70FDE4
          9761566F7FB1D56D2FB4825D2F5583C14A1E80C5EE719540361F6853D9C02503
          35801603D841025A67B36A07DE62958EBECF9A5FFC92B554E3B1FE052FD8CEF7
          7E6CE3662C9FA4272501D6D866EE976724E0BAA20C5C02D9D900EC477BD9D53F
          CCB5133ED7B24B57B4B863E4E67EEFCDD7ECBC334FCBC90030D8C8DF5A1C482E
          EBE7A5E0BA62C035E7E694F17325DD1FCC959483801FCC350BAE85F977970D5C
          61BF51CE26C25661AD1418DC74E34DECF4534FCB957981BD163AE227290761AE
          2CF7014F5CB03060F11C80055C792F4097282E0A677AFDAD94F5B28FAF543CF2
          B8638F765920C03500369B6B78919CB502D658A5654136FF9E065CAB54AA6C7B
          ECB187EBAEA1B766CBBE2C4F305DAE9AEBB90F2AB9CA36E75BC1F602D79D2E96
          EE7A8924821464771593759085CD0A68738C16C940208B64E06C560630378209
          64D356F7D447ADE985CFD99AE73F6B8DD5EA9FF7AC3DF1CD906201A738405A96
          CFFF9C39C2663FDF253170AD40FDD51E2CB0A1FDEEB233FB990D51A04171C7EA
          E5A05F7DC94E5052600208B8B1082060C0C16297153C8BFB5E29B8AE58707526
          A5EC6D30D700D7C9E3E56E9749961DCC7579806B14294416204936005EA34A65
          DB72F32DECE61B6FCAE5439D366D5A6176A954A7061CF7D97B4F77B982A162D4
          8281D2780DB8E2C38AE63A74C8602F6F1E9172E13140799833CF38CDBF93D55C
          F3E5812CA30DE61AC0BAB87B96FD55AD5CC5B657F6ADD34F3FDD992B4980A22A
          C18A4C940DD02E33739DABA081ADCE91EFEAC6A70B5C2FB0821D04B03B481E70
          904D811626BB9B4076B7549305648B62B30EB462B27AAC70E86D56EFAC27ACC1
          D94FAA3D65D54F7BDCB6BAE51D1B36B9E4C69EE28069693F9FDFFFF615CE5EE7
          891D2F786D337BA85F7F7B6978C9C0F5B107EFB33D77D9D197471D542B0B9065
          C095B4926B71405AD4E7A5E0BA62C035345737B0480E0060D15CA9444081C2CE
          EDDB79C6AA4840BD3C34D7900588D4A2E2ABA71AACAE7CB892058E39EA68EBFB
          DEFB7E0CFC855FA8974697C59F86AF2A96FE081C00446961C882C57A114901AC
          D72B4B733A842B173EB2E488B8F9A6FFD83A6BAF95D35CF3E50080360BA44549
          0045DDAB802B9A6BB76EDD6C8B2DB6C8C91BD93C037F67D95FDC7797195CBF1E
          38C25A1EA465FFA602D76DCF551383DD0E169B02ED8E02DA00D95DC468910D1C
          64251B049B750398DA3EA9116CEFEBACEAD1775BDDD31FB3DAA73D6AB5C4602B
          9FF4885DF4EA77C532B9A505CCA5D9FECF698364DCEAB942D92B810B0B1F2863
          DF7F728B7DA08AC6C51D1F9AEB83F7DC69DB6CBE891B0142732DE98DB72CC0CA
          774AC175C5806BC8026ECD06D0D03AD3322FE3478F72F083BD7A291619A09607
          B802AAEC87E42A18B370C582BDC2622F3CFF021BF8AB34D234D934FEA1910F35
          0C5254F52548C02B42C8A00573F5CC587A8E318B6A1118B8BA76E99418B1D264
          2FACBA00D600E8071FB8CFB6DE6A8B249B555ADF2D7FB9BF3870CD2FB699BDAF
          0157DCC9DAB66D6BBD7BF7CE69AE2B2380E06F31D7C7DFED6765B63CD30A3617
          B86E7DB6E4817392B6DD797F05D99D2E4A803624034016460BC8BA362B80956C
          50461E06D58EBBD76A9CF4A0553FE141AB70ECFDD6FCDCA7ECEDFE238B059BE2
          C0E8EF7E3EBFDF452BD473004DF74F01ECD897B7B377864CB0A94A1DB0A46366
          5905B86EBA419F1C5B85B5461DAB6505CFE2BEF77F015CA924BA72BD0564E481
          118AB5BA614B5AABD77E12839D3C7192D22A26E08A510BE68A2C40FBBBB200FB
          2003188FB055F2B8D6AB5DCBCE3AED547BFDD5D71CDCC3A01549A61DFC059403
          07F4F772E424BA819D86210BD68A5B16201B81049B6EB291BB6F9136324A7147
          AA4740F623954D27AF03E5592007B813721F4671CD7C3FD600E0E2EE55FAAA6D
          EB36D694CABDCABA45E9F9499326B9BC5154B86BD6056B79B8632D3373BDF841
          65A85AE7B8045CB738C30A00DAADCECA00ADD82C4C36D82C4C7647816CBE360B
          C8C26677BBC2CAEE7FBD551673A5553946810687DF69EB5EF9BC4D9AB9F20D59
          F9C0B670F4FB36EB092578591119B4522D77AEC075E243F5ED879FDF562ED862
          C055C68407EEBEC33658A797BB0C51378A1A529170A430CC71D9E2B51777E3FE
          FF06AEF97EAEB56A5655A992A44C4CD3C6F5BC6C378F51226779B9627DF8DEDB
          9E748786E5DC8D2C0B04A84A2119D6F9E953A7799915001690005C6197B85079
          D2155F4914BD9A28EA3AE5BF17A915798411632CAB55ADAADD75DBADF6D9279F
          BA312B6481306679891481EB2FAAC4FBC4E38F5A8DEA55738C15900DF60AC0E2
          EF0A73DD7EBB6D72115991D52CF213F0FA8B4F3EB69B6FB8DE811D606DAB2AAE
          3052B725C830E6E72823165E313C62B4E573FCBA97CC5C1B5B9B56AD55EAA799
          3568D0C8FAF5FBCE468FD6B210739CEC71F909B2C315ABB8E57E493F5F26709D
          AB99F5D02BE582B5F6D192054EB182CD4E4B403607B40259075AD8AC40969695
          0CD066015A3780A54630B1DA3207DC60E58EBCC3CA1F71BB953D1CF7ACDBEC90
          FBDEF359E6EF32CFBFFB7D7285CE7E6DD32407EC0A326CCD127B5D20F01EF1C9
          855E1C7149C74CAA3DC07543655B6FDA90F2D96B78899352702DE9AD5F7484D6
          AA0257678479E08AA700115253264DB6766DDA7A8556CF8C2570A5B961E76F80
          2B552B426260DF303DC0F5C3F7DE4D12B6A4E0CAF88BC42D9ED05C93C1E7CA6E
          75D38D3758B5AA959DB902A611A185EE1AE08A9B16850B23AACB19AB8841922E
          52FAB2C0F5E7EFBFB3A71F7FCCCB72039E006C165C5B8B0D73AE24248A2AC5A1
          C31607AE1DDB77B0C68D9BA850652D7BEDB5376CC080DF04AA7275D3B9AD96E0
          3A61CA0CDBF63485B6F63ECA0A363A4946AD93AD6013812C40BB790AB439360B
          A34D6503B4D92C9BC50806C8D204B2650E9061EB60790DD0FE21372D3D5EF1CA
          37AB1C58736E599F9E9CD4D55A41AE593304DAF3E59530ECF5036CECAC2527D2
          0E70A5AC09C01A8EEEB05752E515B7645AD6CF4B99EBF2D15CF399AB1BB49402
          339B157FEEEC39067B9D3C9EEAAF6D9DB57A655DB1D6E501AE5DDAB5F30A04E4
          6FC598D5AB5B57DB6EAB2DED4F956AE7B701579706F4177EB85E8F4AE0F8C6EB
          AFBA959F3CAEB0D50054DCB1B26E5830DB83FF71A0836BAC12025CC35776C8EF
          BF39A003AECEC605B0481EF906DAC899C167806AE4D258BCB74063EBAC2AB60D
          1B36B68A152BDB1D77DCA5F4835F6995403E5AD86B52FA6545FD2D13731D3676
          92AD73B88C59BD8EB4820D240D6C78BC40F64481AC80364076B3538B00DA60B3
          62B4DB66B45900579A6C19051C9491345040DB4FEE5A07FEC71EFEA8FF6A03AE
          F37E7DC0A6DF5DD1A6DF91D4CFF22C57CBD1FF15709DA77D0E7D66631B3B6974
          B1CC35D15CD775490019008085BD2692C0F29503627FA5E0BA22C0757692CE4F
          6896AD7C8BF60A6B1D356CB8586B1B0756FC50C3CAEFBE9ECBC85CDD754F75AD
          A2982020BBEB8E3BD819A79C2C2495E62BCC41F3F568311D5B18B3706502249F
          7EEA093BE8C0FD7DD91FA1AF3C02AE91D715C316E07BBC4A9B03A42105449272
          5E93F865C4903FECFB6FBEF6CAB1C14401D058FE0788C6EB70D3E21C8A63AEED
          DBB6B3FAF51B5AA54A5594F2F05FF6EEBBEFA79240121C919FB3757902ED3281
          EBEFC3C759877DB4B4EF75B815AC7F4C02B01B0860B3200B9B85C96E2A9075A0
          5D8C360B9B956C50469A6C99BDAEB232F21E28B38F0C5C72D92A73C0BFED957E
          83561B709D3FF2039B765F5D9B7A7B814DBBABBC72B4AADD534E205B66B9A529
          44771DFF781B9B3AEEA762C035F116D872930D9462B08E2FA598D99774B32D0F
          C02D05D7E50FAE7F2AE9B92F930562D92429001286A3B75F7FCD19260DA3532E
          27C062BC37FE9A62B0E889D6AB0050FE5A72C081FBEE638F3DF4A0D726739629
          3F5B582B0D9D3574609E8F1C31CCAEBDE62AAFAE8B24008802AC61D8C2058BD7
          18B4F024F8F775D738DB7570CD48023C4716983363BACD9C3AC535650034EE63
          260FEED900DA60B4E16A589CDB21FA385245032503AF275D79BBEDB6B3071F7C
          30570C3380353F04767901EC3281EBC06163ADDD1E629E3D0EB18275FF69057D
          240FAC27905DFFD80CD09E90910C52A00D90CD022D9E06920DCAC885ABACBC08
          CA288CB6CC1E3270C947B6E27ED7DABB3FAEB80C584BABC32E9CF4AB4D7BB0B5
          4DBDB58CC0B58AB719F7D02AD8744A71079BFD1B9A2C6C78F6C355CDC67C5022
          70DD7AB38DFD66C408802615CBA5A281342279969DD59682EB8A01574006F0F1
          E8A574098D3E496294471EB8DF97CCD48AA2B26938DBBBEE98D74A62C80CA31C
          7EB37809C086014BF22BF0DBF8A47A3504D86B5AF535F2B96278FBB5FFCF76DE
          59A7CB0086214CBAAF0C4BA1B70673F514820257AAC2DE75E7EDC939A56561A8
          6536372DD79363B4FAAC7BE74E5E22DBCF51E7C53D1D062C24020C58806FB81B
          96045C9128221497B48777DC7EAB27F8F604326ED84AA498A2F4D7BF0BB2CB04
          AE03868CB6D6BB6889DFF51F326A1D21AF01C90380ECBA29C8AE27900DA085CD
          6E18402BD920C76633DAACF4D93272E32ABBD3BFACECCE1759D95DE4B625265B
          69EF2BEDFD1F574D645651C0BB70C6689BF6F83A36E5968A36F5CE5ADEA6DDAD
          26909D2AA9609A8C5D80ECF41464BDC4CBD2026DFA9D05C35F5B22B872533E78
          F7DDEEE70AA8E2E78A3575C9375C29B8160E98D5C7A0057325DE3E1F5C01DC4F
          3FF9C86EBBE946AB59B58A58AB2A4DA4E01A869DBF03AED982845F7EF1998D48
          2BE53ACB14737577303456FD45B2136A92FDFC7D3F3BF9F86314C955D1811580
          85B50690F1880E0BB892EBF5FEFBEEC9490200EC0C958689808260B380EF5ADD
          BBF939AE51ABBA3356721407A002AE802DE01A3EAFE17AB8A4082DA486D080C9
          1B7BEB2D3765021A564370FD55E0DA6A272DF33B1F60056B1D26C396E481B5D5
          D611D03AC8C266E5491020BB7EC80629C86E82010C369B4A06F23628BBD59956
          6EBB73ADECF6E75BD91D1488204DB69C40F6F56F7E5B6D64813F67A9E6FD535B
          D8A49BABDB943BEAD9943BEBD9D4BBEB0B58AB8BCD16247281DAF4005919A760
          A24BA5CD3AB896B1E2C0959BF289871EB23D77DED99DC00963240147E8527FBD
          E1B2F5934A996BC4C62FAD2B567E01C2ECEB2890E7CC3253A5B4A596B7B04E4A
          4157AB54DE8E3BEA08FBE8FD776438525DAAB9CA38A5628A5EB6074BBA2AFACE
          9EAE6AB6322A5178F17E79846CB3C5A6D25C5BF8F77DA99B32469EA3B1A3B523
          0D355AA39626DADAAEC14756289820CEF9F890222BE06DD0B563073762B56AD1
          D293B33CFEE8639E141B23163A2FC01AFD02987A2972425ED352DAF7DD75BBED
          BBE76E4AF252D58F8BE308908D282D720510D24AEE81975F7AC1992BFB605F24
          CC4E9863615E58007DE3F5D7F37D02B00027B932221911B2172422A48100D6FC
          1CAEF92907E9AB06EA1B2AC1521FED82F3CFB6217FFC969C5F7A3EB0D7FC7A5A
          7F97B5F2FD6562AE43474DB0B5F6110076D8D70A7A1E2CED55F2C05A8726CD81
          36C366910C1C68972C1B9491645076CB33ACECD66759D96D24156CA94705243C
          D9F7FBD5065C17CE1C6BD39ED852E05AD726DFB1A65A639B7257139B7C5B4D9B
          7C538118AD1A207B5B21D0E6D82C405B12D9C04BCC94B50523DE5CB22CA001F0
          F4A38FDA7E4A4A01B8529A187FC5583695826B71C363F9335740348035803696
          CD3C520ABA6AC57276F41187DA07EFBEE5156BA9563B67C654071ADABC59336D
          FAE4496E54FAEC2339D76BF94D35531AFB002C00748096D6A639BE9E5AFA0A58
          EBD7AE2E40AAE1DE23303E809506B027609F148D64F98D21ABB14AB05F7DE555
          4685548C57340036F11048FAC713AD641AA074BDD25CEEBAE3760E84EDC42E39
          1EC095F38F2002820B30769D75E6E9F6E61BAFE5C08C7D458973F61F49B779BE
          D5669BFA3ED91F20C94A2CF266C05A91BF96CE152B99881AA93F00D79A35AAD8
          69A79E683FFEA0041EE9B9257245A1D6CD5DB3BC3C0896095CA7AB6ED33E876A
          E9DE46CCB5FB81D25E0F5A14647B03B262B47F01D9AC6C90B2D98D60B3A9A781
          24833272E52AB38558F1A6C80667D8F5CF7CB8FA80EBD4E136F5A10D6DE24D0D
          6CF2ED2D04AE2D04AEAD6CF22DB56CD27F0A1C6027DF9C02AC40764A802C9201
          0DC9200559AFD355946CC0FB0F55B605A3DF2B165C9F7BF2693B78BF03549AB8
          91B56BA1DC0202595C74DC7FF12FDE02A5CC7551B85DFEE01A5A26E0C0A006D4
          82650284804FF5CA15ECA8C30F91EBD1DBCE5CE7CE9C66B3A64D76A09DA78293
          0EB40A2C983F7B869D7DFA29B6F9C61B4812A82440EC609DDACBCFB585744705
          35B468AA65739BE65A3A3773DF660015D60ABBF30956BFD5B93D410749C1402C
          F81897C292CF7B952A54B40FFB7E90B85D4902983D73564E06C86AA4B04D9826
          8F80EBE9279FE086D4BA02ABB62D88144B7E0F800D160B6BC50DEBFA7F5F6B1F
          7FF441A1962C5023528BFDC11CA94C10D2C0EEBBEDE2E0CA313319303110D011
          13534C2C0EBEB0765CB6D2E78B0BEE200884467F55AF52DE8E3CF41FF68E5275
          527137A76FE78036B9435629B8DAECA976D2A972956AB18F95E9B69FDA815646
          204B2BE8291D7611361BB28174D9D066DD0016B201201BEE5C025A77E7926480
          FFEC0627D831373CB3DA80EBFC31DFD9A4BB7B0B5C9BD9A4DBDADAA4DBDB0960
          DBD9C41B6BD8847F17D8A41BD43220EB409B65B329C8E6CB068B80ACC075D663
          6BD8C2719F170BAE6FBEFCBA9D79F2E9D6A8AE6EEE3515D5D248EC41B1E2ED5B
          B62C05D774902C7EA0AC18700D806129CE808F6539CB673EE3354BEA3B6EB9D1
          3EFDF07DFBE483F7ECE3BEEFDA07EFBC69EFBFF5BA673A3BF394136DE7EDB6B6
          DA352A5BA3FAB5AD63BB9656BF6E0D6BD2680D6BD7BA9975EED0DA5A3693CED9
          4065AB05A84802E1860788B795FEEE00A510D488FBC782DF54805A4F8FFBEEBB
          AF5D71C515F6D24B2FE5E69B6C4AC1C48A9E96731108A28F7A926BAF2230CF36
          5A6F1DEBD2BEB5B3655833BFCFF90276FC3EE789064B800146B2DF95C735BB0C
          CFED8B5A5AA9010F303FE9C4E35D6FE5D88309A331B3EF1C33263A2B955D4A12
          2D47A45DCB6672535C730DAB51B59C6DB3E52676E945E7C94B61A616072A4DAF
          F38989243A63D582AB3AE2CAEB545CB0D9EE56A6B300B6CBBE6AFB5B99AE6A01
          B4C16673401B209B4A06006D48067D52C9C0B559805620BBA1D86CEFA36DFD63
          FF6333E7942C81F4D25AFF9776FBB9BFBF6593EE58CB26DCDCD626DED6C926DE
          DE59ADBD8DBFAEB28DBFA6C00176E2F56A29C84EBAB190CD06A3CD67B36E0013
          9B75239898AC97E07EA68D2D9C5C8C2B9664818FDFFBD0AEBAE40A6B58474104
          7294066061ADB0D852E65AE89F59F46059FEE01ACBE3D061DD8ACEB2546CD297
          F0028DFAD2117B75EB6C3B6FBF8DFDF3B083ED1FFBEF6307EDB7B7EDBAC3B6B6
          F76E3BDB1E3BEF204658D5AA493E005801D30E6D5BD81AB5ABF973D82B4C0CB0
          755696863E07C806C801B0802BC953AA54AEE88C1570EDAC2AAC7DFBF6B53FFE
          F8C3B104509D3D5B20F317C696C8149EDC5A86351A8C73C6F4C90EF630568095
          86C6CBA411AC95F3C7A005A0FFF4E3F75E42DBAB17A4895BB2E01AEFF15BE79E
          7396F7554C4CEC07E6CA0A807DD387B112084D7B8900DB4472450AAECD9BD4B3
          7A75AADAC61BAC63471F7988036B806B7831C47DB24AC115507AEEC5B7AD8A00
          B5A0ED9E56B6D35E09C83AD08AC93AC81E9030D9EE920C7AE4B1592483BFC806
          195D364076AD7FDA9ABB9C675FFCBC7A780CCCFCF22E9B704B77B52E02D76E36
          11A0BDA5BD8DBBB29C8DBB4AFEA900ECB529C8A640EB6C56203B29950C26C364
          D5DC0026D90003984B066A0EB47A3DFBA50DECCF994B4E5683D1E1FBAFBEB5BB
          6FBDD3996B13394AB76EDADC0D5B8BCA02593960F5F416C877E45E11AFFFAAC0
          2E7F700D600300780EC0F11C360650A09B0242000340C1B23DB79CD6E7E1141F
          39793BB753482AE025C60A8BA5C15659E2C2C668119107C0B92C20200A70C25A
          8F0F2A6556AEBCE232BBF3CE3BED871F7EF0AE600CE78308204B4BDC9212E6CA
          B29D06B84E9830CE060F1A90E4B15853955DA5F7E2FA8524012806F03918EAB7
          DBB76B6363C78CF212DAF8F1BA514CFB645FC158035C61B6575C7EA94F4021A7
          B0CF68EC9BFEF4CC595426508BE78B0558812B06BF964DC4AAD5574D1AD5B175
          7B77B75D7624D7C12C970660AE217B64830A62B259DCBD589CA2BFCC062D2ECC
          E0AF3EB5B5B712C36CBEAB956DBF8795ED2890EDB8B7803605D9CE62B3806C3E
          D0C264B3B281032D46B05436E8139E0662B3EB0A70D5AE78E88DD5421A98FAEA
          6936F6FA0E36FE965E36FED6B504AE7D6CFC0DCD6DCC25CA6675798140560D90
          BD7A51A00D468B649065B353F264030076AADE9BF5F6BE6E415E626E0181EB80
          9F7E95C7C063F212D00014B8B66D2E4621C3D6A2E9E822626BF5D55C57049816
          1F79B36CE05A9CB740B055067C87362D1D5401D7000280830623639B606A186A
          D04AA3B864A17F67B22D0C0C3D1206EBC7902694417FF5043362B0FE9CB0511C
          F105E2E44825690A11522FBEF09CFDF8E38F5EA88F282BFEC2797EC68C19B920
          8178DFF5550A09921A30950686CB55EBEBAF3EB33594DCA645A3BACA21DCDCC1
          9DDFE63C38AF609B5420E8BD564FF7294D12D348B3C52B2205EC7C7085D9FEE7
          867F5BB74EED7D3F1C3F1E0ED1573C02AEEC1F60CD7A4D2CE99A2461E1F5A455
          2B3F8100B667B78EB6D1FA6BCBF56DBA832B61E41C1B13C86A01AE78172F18FA
          8B9D7D9E2A09B4DED30A5AEE6C65DBED9E82EC5E0259B54E7BA76C16C920055A
          B15967B2C1667B653C0D9CC9A6EE5C596DB6EB21B6F58937DAD419B35729C02E
          98F4874D7C642F1B7B43371B77CB3A36FEB63E36E1F6F56CCC95B56DCC450536
          E6B20460170BB2D7492E08D90090459B15A3CD012C6C1656ABF7E67C7161B1E7
          8A83376191EFBCF1A66EC484B5220B646BD12F8F88ACFC7D141744E0AE32B24A
          47A826CF278C1FEB499F830D64E3E75754CDF8E2994521B862397EFFBD77ECFC
          F3CE513DA8AA89DB948C44B1EC8D4285B0B4252D4363E0073B85990208B1ACE5
          BB00252089961880C4E738F4933C053729229568E50A0A7C5B1CFD7B76EDE4EE
          53B5AA55F69CAB7C174B3DCCB7050C126F00011D567AE40096E414FEBBF79EBB
          6C8422AA608851DE84FE27D2CA93B09030468101716DE279802C9314862E564A
          FD7FFEC55E5505572A5ED03718D368003DE7ECEC557D54475E0B040FECB8C376
          89C12A351811C54F886FFEC4172E5A77DF759BBB9DE151413FB9A4226904E64E
          1F71AE61C40AF65A9C410B56CD758365B76BD9D4BA746CE30D83A17CDD1C5C9D
          5567B4DF701B2BFE1E5AF216CBE42D00A3B221DFDB5BB7DE68CD081668BEA395
          6BBBABB71CC8762882CD664036910D900CF034906C803B57B87465DDB9F4BCDC
          FA47DB8B1FACDA84D9B37E78DEC6DDBC5ED26E595FC0BA898DBBA9A78DBCB0BC
          8DFA57818D167BA58DB954001B407B451E9B45320064694569B302DCA97756B7
          79BF3D5D22709D38769CFDF8ED77622B023469AEB0D7456AD1538F7E39E718F8
          BF00AEB8FC2C0BB8C6800F00002068E112159A2180D049A5D0BB7468EBEC3691
          08DAE54AB910E2CAEB48AA42C2169E03BE24B56ED74A2B14012D29FA00B26A55
          2BBA9B511B3149CA545F7ED92576E71DB7D96F037FB52993273AA4C114A74F9F
          2E077EA29312300560C97615E1AD006DE43AE57968B19167E0D38F3F7127FC7A
          62E218B15872BB2CA1E5774C3A806B3D19BA36DF6C132F3C580854C0AA077DFD
          E52FC0F7A5179FB563FF79788EB1BA614B8C1D70A50FB37A2BBF571CB0FACA40
          C702B8A21103B06D5A2A57AC64956183F175055453AF81540609E356228BFCBD
          BF6506D705C306D8B4FFDE64175FACD480CDF6B0326D76CE016C02B4BB2540DB
          8106D0C268251BE40C60196D3607B4196DB657EACE05D0763AD0763FFD169B36
          73D5B0D73F65599CFCF23936E6FADE36F6968D6DDCAD1BDBF83BB6B2D15736B7
          11E714086093364A0C76D4C58B02ED9894CD8E056825198C4332A0A5409B3582
          4DD47B531FEA640BA716AF31C324A629A9C724397FB768129E02490AB97A3595
          5D08602D05D7258C8E45B33445696D98EBB282ABFB79A67EA801B461F966898B
          3C002B837DC24871CBE275EDEA553CD51F5158D4AFE239450229B9420344F14F
          AD5AB1825767651B0018BFD0A38F3AD263F70993A54E15A1AB1100C0927E9A72
          0550FF2A5B4E3A92726763EBC3D733D86C48065E6F0ABF57A1E2DB6FBE65A79E
          7292D5D1F1A2EF02AC00169E0B61606AD7B6A503FDAEBBECE4401CC00E5879D6
          2FB5C531D7F7DF7BCBAEBEFC12AB5BB39A7B07E061E1FB1618C28A434A89DFCA
          4A048B5B51C05C61AC1C27130286C086F56A59FF1FBF7360C56B20D220C64450
          68645B45E00A7B9D73DFBFECF3BB6FB51EBB28AB5593EDF3C03561B2099B15D0
          B6CFC806328025B20192814096D62DF134C8490618C182CD763BC82A28FAEBE9
          B7BF2C96D12DAD074049B69F33F42B1B73EBD636E6A68D6DCC2D9BDAD83BB616
          C86E68C3CFAD6CC3CE52FED5F39336F28242901D2DA01D9D022D6C36271B04C8
          A6DAAC1BC0C464BD0974A7BFB26F89CE91489AF9F24FFC538FBDBA75775F57B4
          5702093CF97129B816C1900A97A49148243F428B289E6505D7D002C3728E010B
          568A870080C16B4076DDB57AB8970021A4A79C70ACFB8D9E78C271AE8D520915
          C03CF288C31CC8CE38FD54972BAEBEEA0ABBE6EA2BEDBA6BAFB6CF3EFDD8A8A6
          3A7EDC184FA2324985FF381F0C473C124A9BB5C207502E2E4149801D6C1530A5
          056B750961162E4B668F3EFC886DBBCD56D25C55674BE01A9E0A304BC01009A4
          B56402C0F580FDF7B5E79EFDAF4B0211E515E09A3D8EE47912B9F5C7E0811E5C
          11063FD83D4C13235EB86465196BF4F792A41A8C6F802B0D29A35E9DEA56AB7A
          2525C379C599EBDC39337C42FAABCF2BDE127FEF6F9999AB83D2EBAA057ECD3F
          EDCE87DF1473DD4BDA6BA13C10C09AFF58281B60004B40366704CB7A1A648116
          0358FB7D6DED032FB651E3F5BBFCF64A6A7F4A8F99FCF28536FA868D04AC5B0A
          64B7B27177ED64232E6B65434F51EE5581EBB0B30B6CB818EC8873D5CE2B04D9
          91920B726C3603B4A1CD66D92CC6B009D796B739BF3C5EA273F37470D4B717B8
          6EB06E1F01AA8C1C92063C4A4B59804AC175D181F117A3595AC17479826B780B
          84F12ADFA085460AD0EE22B7ABEBAEBADC9E7AEC6125897EC49E79F2317BE6BF
          4FD90BCF3F6BCF3EF3B4C7E23FF2F083F6FC73CF3840BDF6EACBF6CEDB6FDA27
          1F7FE86DD8D03F6CDCD8D1460DAB9C5688AE99A71B86DE990F11F91149592D1C
          E60AB8464E01B6F56A0402D7BBEFBCCB8D64495ED544C77483162E61A9337F43
          81D91A756BFAC4F0CDD75F3A738D00048481A234D79005C68D1D693F7DF78D03
          292C957D02ACCE36D360826CE45B49820800D49004903160AD756A56B1575F7C
          CE3D0560AE806B92952CF190F05234AB521600DCE64D1A6FC38FDADC66BE74BF
          ED73B62AC1D6DFDACAB6D965B10C36C76461B3C80678197400641377AE42368B
          010C362B5D364096C7F69AEDAF7DB444E0B3BCC077E62F6FDBE85B77B4D13701
          ACDB085877B3D1FFD9D8FE38A5820D11B80E3D43EDCCA40DCF035967B3C805C8
          06E8B2006C116C769CD8EC58E9B513EF461228591630D804C03A4F8F5B6DB6B9
          FBBAB66B211F48456811A9B524705D523C76711AEDFFAAE6BA38708DAC4C210B
          FC1DE68A24100EEE210B04AB0ABD15E085B1925B60AA221D89D022222B9BEB14
          0B3B039EC7B0B647382A8F1808C983EAE9FB52400D36C8923FEA716541350C57
          8BF3E5E4FDD84764C0CA191E91A05411E1A6FFDC68BD7A76F7042A61CC02B858
          B673EEAE310B5C5BEA3DDCAA98048AD25CE35A141E5FE2533B7EDC28FBADFF4F
          1E9106D36722025801D8E85B37E0A5DE0225D15DD1CE433F67228065C35E5F7B
          E9F9D49895144AF4FB60750257006CECD377D9B82336B0FEDF7C6FEDB6534E80
          465B170BAE8BB2D9549B5D04685336EBC10985DA6C41E7FDAC9C0C600FBEF4D1
          4A01D8F99347DAB8C78FB351FF91BE7ACB8E36E68EDD6C8CC075C8590D6CD071
          0502D8021B72AADA696AA727403B4C201B4CD6D9AC98ACB7005AD86C002D4630
          2403B5D102E0191F5E52E2F3C2823B4765406014FBEFBD8F74D6DAEE2DB008B0
          2E46732D055731FE34BD5F80EBBBEFBCE545F2FE0EB846EC7F0C7E74429EB35C
          0EA316895B8E39F230D58DFAD0C35F49CEE2C95B7051C2FFD3A3A0923CA7949D
          66E0B3CC0FC08DF228F118CC10A00A50CC02E85F81ACE8A56ED60D29D2F061FC
          728095E6FAEB2FFDEDFC73CF73BFD9AE32C4B99780DC9C1A8AA5C25C03F49A8A
          1D7650F4D655575E6EC3870D5924E94B18B41607AE1E2DA589C619ABD8315203
          E1BEE8AEC158798FC636397F5E92662FA6450A468E95890077B51A552BD803CA
          854C1041E28E95E4990D708D3C0F7F4F1458C6C42D5956386BCC08FB71EF756C
          CE7F4EB5373FFEC96AF79021AAE97656AE5DA1E6BA3889E02FEFA3CDB683CD66
          3D0D1605DA82367B5AC34D8EB1373FFDA1C440B42C2CF64FCD6493DFBED146FE
          671B1B75EB2E36EAB65D6DCC3DFBDBB08BBBDA6F4716D8A0E30B6CF04965BCFD
          71B21A400BC8AAE5D86C2A190C13C80E4F2503D767530398CB0662B223F5DEB8
          FFB4B079A34B5ED2065900E6AAC24B76D2710A1B548D2074D755ED2DE0253864
          7CC936B4C155ED8A9535DE389064CA3C872B16114259700D17AC28A1C3B27249
          FA5EC4C007C8C2B6827145400146ACC88A05B09253007075B077FD31C92F0A03
          8D257A58F4D141DDC04475BDE5F8970F76710C78113850EB5FDFF7DEB7138F3F
          C1D3F791DE32AAE3A2BDE22D10462692A46CB2F1FA76CBCD37DAE4491372D9AF
          1227ACA2BD05726006B8CA17164316864026248015DD35C03512D604B816ABBB
          A6E1B9E18FCB44807BD7CD375CE7D16611FE9ACDA51046B8BFDBC57F4F734D75
          CF618FDF665FF6AC68F6EA7DF6D0EBDF5BE5367BCBC0B5EDB2016C18C0DC0896
          950D0AFD660B5AEF662DB73ED1BEFC71C5552998FEF5B336EAE6DDD47615B8EE
          6163EE3BC4865FB3890D3CBCACFDF6CF02FBFDB8B262AF6AC70B604F503B1190
          159B5583CD0ECDB0592403B45998EC22DA6C6A04C3E360EAEBA72CD564E1C98C
          B1E26AC976EB8D3759EF6E3D9CB9AE514331E8C5C802C52DFD97F47971B2C0FF
          65700DDD311855780A84533FEFE32570C231FF5C24E5A05BADC94A95FA9DC6A0
          FEAB55BD084B3BB5A068F88FA6E0B53CAB42B997817678C179E7DB16929F2A55
          2C2FB6AA895C209AAB362C70050859C603AE5B6DB9A927DF2617EDC7D288BFFC
          F273FBEEBB7EF6CDB749EBD72FBF7DADF7BEB62FBFF8C413DAECB7D7EEB6D946
          EBBB0110572C5A364F4336414E49C135A92B479496FC7105AE1811BFFFEE6B97
          06985CF3C175956BAEC10817481BFAE6A04DECDB5E15CCBE7CCDEE78F12BAB2C
          7DF4EF006C8ED53A9B4DDDB95C9F4D986C418B9DADED96C7D947FD062C152895
          84C5CEECDFD746DF79A08DBC797701EBDE02D6C3C46077B4018757B1018716D8
          C0A3CAD96FB4A3CBDAEFC726CD813605D984CD2E5E36181E402B363B4C72C298
          7FB7B60513062ED579E4469200F6A1FBEEB71DB7DED67557C0D5CB2EAF226F81
          FFCBE01A7A2B20CB321903164C2BA2A6781FE64ACAC1BE4AD4620B13A686337B
          E8A4F9ACB42880CDD6D972604DC8E5A26D190AEF65C361E377392E767CC07EFB
          DBDA6BF5F6642C18B482CD7BA00561A669562C64815E3DBBDAFEFBED63175F74
          A1EA569D2777CD7FD9395A159C77C1F9DECE3F3FBF9DABF7D4CE3BCB418F7486
          7D7AF7F4E57F9435A72F23E4B524095B72009CE6BAE57873C637B157AEC11BAF
          BFEC7D5F280324C6ACD5461608B09AD8F7157BBF7B45FB6E835AB6E09397ECC9
          F77EB2BAF8AA2EB5065BB49CE006B088027390957742F39DACD18647DA8BEF7D
          BD54C0B424809D35E0631B75F76136E2E6BD6CE46DFBD998FB8FB29137ED61BF
          1E5AD3FA1F5860038E286F038F2867038F14B8AA0D3C4A4C16903D46E0EA205B
          C6417690982C6C7670806C2A1B0C15980E0B6D16639818EEB48F6E5CEAE3F711
          45B678B577E57F78D1B9E73BB8E229F0FF3BB86601A7A44BB795250B64238860
          AEBC0EEF011EAB5428EB69EFDE7FFB8D045CA531C25CBDD4887C40B30CD40B16
          A6BEA13CCE5F282D56795EE72AA136CFDDFA5E04B8FAADA1ED97F62F6489F01E
          E0B5BB64697F9B6DB2A975EAD031890023894AC65004B846362E5CB11AA3C5AA
          5021F905EA28714C2D7DC79B22CB68B56BE7B79A7AAFA655AD52C18D594C42E8
          D5B8AD01AEC802045C4462EE60AB25D15D61D8B86301AE9EFB160943063892E5
          DC7337E5679244E52113157A0A2C7DFFE5F7F77291053C09846E8EDFAE3CD9DE
          6E5960FD366B68F6CE63F661BFC1D6651BE566ADB7A595699D1F64B00C9A6CBE
          DFAC40B6A0D52E565586AF2BEF7CCEE6CC5D723C7E71AC75C64FEF09588F14B0
          EE2B603DC8C63C78AC0DBF710FFBE5E09AF6F33E05D6FF900ADE7E3DB4BCFD7A
          58793159350016A0FD274C564D20EB6C36950C8A64B3E8B202D93FA4DB8EBB67
          275B386BD252832B7EAE0BD2EA9C23870E5386ACBED6A1551BCF8885C7C0FFAF
          CC7569F210646FF69501AE59E6CAF300566481C8D49FCDE70AB81286397D9A92
          63679867B82C05A002A459602D0A5C036473736E09C1356BFC8AE082AC2C8151
          0BCF94AE9DBB58CBE62D3CCB1621CE1887306A0560450EDBBA4AD68D2B161509
          3A756C6F6DDA28C9B78C60B4A6AA82406BA6E4428B36E584151013DDC57E7061
          0340F13E88DC0968D6D19F2589CCCA458C0958A3F47CEE58C55C61C7175F74BE
          CB02180F311A2EEA86B51A812BC0357BE410EBB7DF7AF64EEB02FB6CAD2A36E7
          C9EB6CDC842976C8D9F75A99663B2686AE142097CB632A1900B0054D77B01D8E
          B8CC7EFA6DD8520315BEAC533FFFAF8DBCE3501B71CB0136EACEC36DEC2327DB
          D06B76B49FF6A96C3FEE55603F1F54D17E39A882B7FEFF503B582D05D95F0159
          182D402B9075D9406CD68156201B40EB4CD6B5593DCADB60D8854D6CCE904F97
          FA78E96BCF182FFF438C5AD4B51F35649875EBD0C93AB6568C3AF95C57902CD0
          92BC9D792D5BEA7845CA024B03ACD9256E30B1ACBBD18A3068E56B81BEAC555F
          B96126CD754A7416DE02688B802B06AD7C70CDB2D5A29E03B4C172B3A01ACFD3
          05CD120C4885D34E165CD17C23FC35B620BA6BBCC2AC01D6A66B2A2042390BBC
          30621A9DE586AD34B78087FA4A2620C7015E05AD5BB5B03555A890D65289BA9B
          2B6497D68294988BB4047C01D76C72169F94D2F0D748CE1219C762228BEA0F8B
          930A88CA42BAC01809B886416B6BD59E3BF1044A7ECF71B7365A61D997900A96
          96FB2FBAFD7263AEC10A277DF2A67DBA71437BB76D817DD8A58C12991CAA1292
          53145DF5BD75DC4CC50AEB6FA5E5FC0E25F2872D310003B26D76F528B1FA7D0E
          B1ABEE7ECEC64F9A5622D09A3F71944D7CFD561B71EB2162AB87DAE8FB4F10B0
          9E6A83CEDBD8BEDFB99CFDB07B39FB69BF4AF6D3FE15ED67DA018520FB4B80EC
          C162B28708609DCD0A5C53D900A075900DD9C08D6065ECF7A3F136A860533FBA
          B344C75814E38ECBE856653158FC10A985B4CF5E7B7B86F9766D5B3BCBC06A4F
          3D2332CF533F89842A9454E67D12829004240AD56593BEB452BE82962A0342E3
          B937E5E82CCEA0C59291DFC8F7169839BD30F352B67C34833BC94894DCD011AD
          83FF26F94367AA98DD22F5EE6171B3A93B25ABFA1C2D59F59A9228B9A6253375
          A8BCA599EE272A82893050F64F713CC242239A29F68D93FED9679DE1A54908C4
          F0C2789258BC8653AC0496E0F2539C1741F8BD12EA8A41CBC1559240C802CB3A
          8C9734E194649FB10CCE2D87D11CD386833D61A2CF3EF5785234506CB2832CF9
          3041000B8005BC60B1A1B99244067025710BF71C0C96DCAE30D3A6CA35DC5409
          8692C7C2D644F9129A50E810864BFCBF72240468662B2B00ACB0DA70712B4910
          817B33A4C7EAF2802602328B51D961FDF5C88E450217DD7769ADB0D05B1767D0
          2AA96B1B7DBFDCC1152018F1E8CDF691986BDFAEE5ECDD3605F6D36E9D6DC1D7
          AFDB8C5973EDFA7BDFB0667D942FA0F1B6CA49B0BD8209965D1E280A7C0B5A88
          210B64BB6D7F92DDF9C49B3661F2F42201EC4F0DBE193F7F68A31F39576C551A
          EB9DC7DA9847CFB211771C6D3F1FD1CEFA6D5360DFEF5AC17ED8ABB25A25FB61
          9F4AF6236DDF04681D6C33409B63B302D9AC6C9063B301B44715D86F872BB7C0
          D32739401427552CEE732E32AE32A48F0B579D77DE79C74E38E1046705DCD4A4
          7D43FB0264B9C1A97EC90D4FA62A1281D0A85B1FB595B25AEDCA04D7ACF336D1
          3CB4248B93C230652CE5868FDAF6BFFCF0BD7DFFCDD7F6CD679FD9873ADF579F
          7FDE5E7EF6596FAFBFF8A2BDF3DA6BF6FE9BCAEAFFF65B9E019F7D00A8EC8F24
          CD01DABE0CC4093F2D94471001AE58397065F003AE02D6ACCCB234C694D83680
          95C7C5822BB47319FE5604B8FA8423568D8BD88FDF7D658F3E74AF3BF3C3FE90
          0200D760840017A907013C2FCB22008381C25CB9E7A8840083255177932662A7
          DE240164DA9A9A8C696C430042E74EED1C5CF13E488C67DCA7892F2D21B1D9CA
          04C55D0F0095E386617BC58634D13819CB7AAFD55DBEC4137375BCB2C6ACD516
          5CFF94103EF88673AC6F27B1D75E95EDDD7605F641E77236F6CA7F9A4D1B6663
          A6CE16C8BE6EDDB63ED9CA68395FD0786B2DEBB757FAC2E5A3CB122586A742C1
          1A5B58F30D0EB7F3FEFD988D1D37D9814CDCDF660FEF6FE35FBAD986DF7A94C0
          F45801ECD93646EDF70BB6B57E3BD5B0AFB72AB06F77AD64DFED5ED9BEDBADB2
          7DBF87C0754F3581EC8F7B07C80A60C56883CDFE7C609E6490D1667F4DD9EC80
          23CADAAF328A8DBA7D0F5BA85239CB0AAC7C2F1CC6C32791E5DC77DF7D67975D
          76996DB0C106D6AD6B673973B7F50CF4242DCEB157DDE83058127F00AA3C6FD2
          10AD4BF9443361B32B135CA3B26896B5C68D1E114A0BE7CEF1AAA877DF7E9BFD
          FBEAABEC8A8B2EB2630E3FDC76DB6107DB76F3CD6DEB4D37B59DB7DDD60EDC7B
          6F7FFFA4E38EB5871F7AC026A759A1A8381AECD5AB99A6F5A0426B23E5601244
          A02AA930D7FF11705D063CCEFB4A121D95734582C131E1C0AAE587FBF9277DED
          86EBAEB4BAB5AA3A038C18FDA8321BBEC024A001F400D72E9DDB7BDAC3A8044B
          D1C2C6CE5E650FF0B6A8E61A5A6CCD9AD55DAFEDDEAD931BB09019A8FAEA9560
          E5FE8581306483D05F8B03D7C888C5717B391A19C870C5625FED958C7CC4F03F
          3C5823DFA0B5DA822B837FA1966C03FE75A4F5ED58601FF5AA621FF4AC62EFB6
          9216BB51239B78FF450EB233A517BEFEE14F76C4E9B759DBCD8EB18AADB4B447
          3668B29DE729C00856A6F52ECA5BB08BCB088B6B6C0330F31D745DF6515EAE5A
          2D373AD2763FF21ABBFF998FB50C9C6E0B460A545FBFDB46DC7D8A8DB8EB441B
          FDD8F96AE7D9E0ABF6B3EFF66A665F6C52605F6F5341005BC5FAED5CD9BEDD45
          6DD71460015981EDF77BA44C36801626BB9F582C4D4CF6E70353D900C980164C
          F6D0B2D67F3FE9ACD76C69447EFD1D60E5BBC801E86194E908DD0CCBEE7BEFBD
          67D75C738DBBCCC05A61AF30578C0BDCE434D2D6B16C0758790EB8F27A55816B
          64A6FF6BF8A196FE1AE8940AB9E68ACB6DCF5D7771C9816346536E25F6437270
          1E61DD34CE0170A45E3DD2C80107EC6793E4CC1EC99F23DE9EC1C4BE093385C1
          C25C937CAE4AA7B78AC0355F27FEFBC059923D6480352DEFCD84E3D16302D837
          5F7BD14E39F118AB59ADA25BDDA3BC0BCFB3F20040B8ED969B89FD9FA1BE7CD3
          3EFFEC131BF0EB2FD6FF979FBCFDFCF38F4AD6FD73DA785ED87EF8E947A3E1EB
          FAF9671F19D9B128CE889F6B802B2C166F816CD6B14890B32480E57861D61DDB
          48FF4DC1155F5726024A6E7FDBEF4B2F4393D3E0D392DBAB35B83ABB9A394300
          FB4F07D80F7B56B68FD6AE6E7DC560DF6951605F6EDE4C89504EB7854349EE30
          5FCBF759F6C1E7BFDAF5F7BD627B1D7DAD75DAF458ABDE593EAD72C12A6825E0
          6C26860BBBD5923FD7784F9F91DEB08AF213B4DDE828DBF9B02BEDD25B9FB3B7
          FAFEA8B21454D29C6A0B07C968F4CA2D36F2BED36DC4FD67DA98279500E691F3
          EDF7CBF6B56FF76C659FAF5F20602D635F6D5BD9BEDEAE8A7DBD7D15FB6607B5
          1D2B3BC8E6032D8C1690FD7ECF1468736C3601DA9F52904D809626DD5646B1A1
          576D65F326149F4EB024C00B530D9F481E91086894F1A0F01CCB3198030053B5
          4A25EBD8A15DA2C1A27D490A203728394183B5526A39670403B856A2E69A2DFB
          11D131D9F7486A72FAC92759EF1EDD3DE51EA9F9024CD189619994B7016401D7
          4675EB7A9A3ECA9B74EBD6C57EFAE907D58C1AB4A80F632A0944BA3934D7FFEB
          E0CA0484E5DC570B32B4E183FBDC7F1FB77DF7DAD54BCC004E9174DAA3D5D21A
          5A3C4793DD7FEF3DEC86EBAF7136188965C8DAE5CFC50E274E8C3651CF0BDB84
          49138D3656DB0D1B3AC84BC91041B5C1BABD13D62A60055423AB18F24A30D728
          08B9388005543B290D228D09C18155EC95C9A07AB54AEEEB3A78D06F85CC3DD5
          FE1336FFD7BF55AEB966C161819663BF5D76BCF5ED52D63E901FECC702D88F7A
          57B3F73B95B777E5B6F5C9FA6BD8AF27ED64D35F95CFD9D89F7436BAA80B282D
          B1D0464E9C611F7CA952262F2849EFFDAFDB55B73C6F97DFF8AC5D71D373FEFC
          967B5FB3C79EFBD8DEFBBCBF0D192D6F0569BA36436E2D2A816D7F7C61F33E78
          D0C63D71998D7AF45F36FA7101EAE397D8B0DB4FB2FE276F655F6DD7D83EE95D
          C63E5DAFAC80BEB27DB55555FB72AB2A7A54DB4600BBAD9A80F69BED2B0B6805
          B000ED4E099BFD2E65B32E1938D0666403E9B23FC166F74536A095B31FF710B0
          5EBDBDCD9FF4F7196BF46DD66D269BD8D835EF11231C44A3A47230572A72C2CC
          0054C0151608C383B502AE805300ECCA04D79005C2A005B0B28C8765F2DE45FF
          BAC036DD7003CFCC1F4CBB7E2D2541D62490D589015A986CE7B66D65B0E8E4E7
          5FB66C81BDF1C66B3672E470D75D69B15FCF22953A8DBFFDD61B0EAEC827FF57
          996B802B6CDE33F50B5C1F79F01EDB72B30D3D9B54F88AA2BB02A8C15E597A57
          2853A095C54EF6C0FD77E774CCC897002B9CAE74888CE9A41556457083AC0C92
          B424098DFC786564BAEFAEDB6D8B4D36B45AF27B4577053C59CAA359E7076B2C
          89B9C25A910478749FD7145C9119F0ABBDEFDE3B15A9D52F674C2D2E8860B502
          57F7819D37D786DC7E8983EA073272F1088BA57DD0B582BD27CF82F73B5614B8
          35B701A7EE6CA3EE39D7A6BFF790FD39B0AFD9E86F554DED77B3D9A3CDE62A6F
          E5BC094AA1AEC7997AAD0C5236F6175545F8CCFEFC4106B30F1EB3296FDC6913
          9FBBD64603AA4F2A79C403E7DAA06B8EB49F4FDCC6BEDAA9A57DDCBB927DD443
          A0BE6E79FB7CE3AAF6F926B42AF6C5666A9B57B12FB750DB520D90DD3A05D900
          5A40962690CDB159012C201B40FB038C160398D8EC0F7B9495B7817209DC7698
          2D983EE16F4B01D9492BBB848C1874DE0B2DF6C30FDEB773CE3ED375D7B0DA22
          11605CA08448DD9A353C11335AABEBAD62B3ABCA5B202A8C16A6C84BD2D43120
          278E1DE3C7DBA5437B9F04980CDC08274313C0CA84C071C7B1F31E9F61ACF3C9
          45D2C8934F3EEEE197B0A7C822C580CF669C82B95EA868A2550DAE2B5F1A5854
          738D8436002BD2C0C5179EE34620CFD92A2F00802A425F791DA907D15CC9F6C5
          321B70CCA6422C2EE229A2CBBC84F7ECE932306915ABBCAE575E7A91E78E6D92
          56968D105B403612659724FC35AA11C0BCD15BC9B20573055C8F3FEE28AF2F16
          19C622FFEC6A2F0BE42F6F473FFF80DCB41A253A2C001B20AB470C5F4806E8B2
          EF772810C3AD2576D9CE7E387C231B70DEDEF6C7BF8FB1E1779E69231FB8D046
          3D2C16FAE8255ADAEBF1E18BF4DE0536FCEEB36CC8CD27DAEF571D61FDCFDADD
          BE3F6C43FB72FBF6F6499FBAF6419772D657FBFCB07B59FB789DCAF6E9FA55ED
          D30DABA95595065CD81C64374D40D6815620EB4C5620FB950096E66C56001B6C
          F65B6403B459186D0664BFDBA14046B02A36E6A94B759FCE5DAEC0EA9A36C947
          BCBEFCA256E69C2FA758C07DF7DE6D7BEE21C944A5959108D060910900AAC870
          4FC910582B6C36CB04DBC8A791D6BAB1186DEA8AD51ABD161FC7BC16B90858C2
          450D2DF45C07380137068359CAE0153246367C938597BB5C89A906F0B9C149E0
          870BD5C8A1433C333FCBFC60D7210590430196D9788D24328DF7910760AFFC3E
          C6BC2A92449E78E231FB56C9A563900773E57518B460AEA79D7AB2FB71B24F00
          3A009BC760F54B624959E7F6F0CB8C256C3CC2BC48DCF271DF77737EAE38B253
          5922FA27AE69E4545DDCF2B4248A6A71DBFC351354525B2CDCC4D05B01248FC2
          4AA3B200D8EEB2E877EDD0C6D92B008BFFEEA9271E67837EFF55EE73BA3F750D
          5D72498D65F9CBECECBDCB1DEC0113143154A62AC0F9930FDE93F1F21667AE14
          6D64F98F148041ABA83C038BBB2E2E05A40D706592F0E28EBA57EBCB4D6BF7DD
          76B2C71F7B24771FC4EA297BBCF9E3ACA413E00A71C55A926638F5DB4FADDFFE
          EB5BDFF602BB1E629101B259B05DABAA7DD0ADA2BC0DCA89D10A6CB5EDFB1DCA
          0B24A5DBF6AA6E1FAF5BD33ED9A0AE7DB2E11A9215EAFAEB0F7B8915EBF3F7DB
          97F7ED0170C0FA83EEC96F20477CBC368F6AEB5615E80A60D753DB206D29C8E6
          D82C202B36FB65B0D9900C82CDA2CDA6409B930C3082ED5CC1BD0D7E3EB2834D
          F9F4B9E50EAAB97C0E69E6A400D9F01A88D7186B060EE82FE3C03B6EC4025CD1
          20B1E22209E02D00A00242C15C0157C0C94145450F9BD717E0EA115F577F2D70
          5E12B802AC002DCC123D1730E439A9E7A64F2D2C35121300E0C1B2709634BE70
          9502F8783D5A460696F23FF4FBC68F15D6CA3E8940033C79A4858C11796C2359
          38BFDB5D7A2BE1976FBEF9BA0D92AEC66FC05E317091B1097DD10791C0E4A30F
          FBBA2C80B740841087818C47745DFAA5387FD66C8ED1FC9CAE51C994EA030EAE
          E415C02A4F3628129FE74D94E10F9C05C86509FD5D12C0FE055C737EAEC9B1ED
          B5FB4EEE8645513FCFDD9A26C90EA005B8A806BBDEDABDECAEDB6E56026F65C2
          12F30CED366497C41BA1F048E21EF0F349144FFF9FEFE2D83F66C450CFBF4049
          19266DFC5B0158F2BC864490DFBF455D9B902EC2AB01BD15807569413EB59D3A
          B6B5EBFF7DAD1300983300EF72861756CC54AE286E962AE2F3950EAE1E5DA424
          C183AE3B532CB28600502C5660FA5790453A48D92DC0CB36F23A80E102CA1F4A
          BF45C3E5D15FEB7D3E5F645F7C3FBB8F1C80A720BB0E405BCD3E016461B3006D
          B0592403DAA66A4806B48C64F0256C166D3605598C605F6D296F836DCBC9FB60
          7F9B33EAB71506ACE18A85012B062040C56BC02A19A40B1D40B0D4EEBDD71E39
          600560091E0050D12FB30EFF914DCB9961CA5801551AAFDB6A99BD2470A53C34
          E01A52038F14D7C3A011CC35091A488C71C1D400D32C6380B94E9830CE7ED1B1
          BFF2C2F31EE8000B0660430608960DAB8E630C2357C80238B2AFB1461DFBFCF3
          4F8DB2D0FC060C99419463560213021598849005F0B20870653FF13CE791B084
          4082706A8F5C02D9D70C66ACDD187E88D07AEFADD773F95C71D60F700D80CD67
          B1CB30B64BF89545658108200058A72919FEDE7BEC6C15A45BB76B2D077F016B
          0385B786D700462240B6BE8A2452B5F59E3B6E4DB34C25AC15800D97B7E4FA16
          1E52960C44B8AF97F0962C00939F3066A40D1AF08BAF842839CE4A20978630AD
          021BBEAF4B5C4D50723C0D7AE058C92BB066C3A4922C2E5FE44120C10C851CC3
          B73A007669F4D5A23A7B95806BB0AFC95FBC6FDF1EB4912FD93FE8262DB62890
          CD67B6CBF975916CD6650335B15907D81CD026B2418ECDBA6C5059AFCBB9C7C1
          0F8774B609EF3DB1424135FA8E9B334215B909A2EE51BC975D9291FEAD46F5AA
          AE4162E802A8DC9D49CC12A0CD466885E3FC229159A92CD05206B1E264014223
          01EC900428194D3ED788D0E25899006270C544902DC10CF83118D149EFBBEB4E
          9730D6A8553339CED468057BF5C92065D61C6F80AB03AFB665898F63FAEFBF0F
          CC19B4C2250B1041730D171C9265C35C997CD86FBEA18CDF75A02D01B8660BE7
          E5572D8D2082CF3FFE2065AD497967C035FA240C948B2C9D8B90804A889EC56C
          56E88AE52C365A9AB16BABCD37721F5796D218B222090A7A2BA0859E89CF2BB1
          FACF3DFD84B370D86724FD8E5A65F43BC6AC60AF8BACB47484D001263E2405A4
          8189634739B877EFD4DE2B1FD08F2487C1FF1506CB2A204A982FE99A78C8AB00
          348C71248189E4DE1453247F2F75CA06E91EC94A1849204B22BDF117F76DB6F4
          7871FDBF4AC1D519988C16A39EBCDDBEDCB1631274D0BDC25F59EC7206D4BFB0
          E474FF0EB462B34806CE664336C867B318C160B41B57B04FFB2851CD6E4D6CF8
          BD17C8D6B6FCBC018A73C7CA1F789160B970299964B607D8B8C177DA717BD720
          9107585ED322FCD5B54C816D8756CA9F49E48CC0A5512D31DCDA0A9395340070
          355D43CED70A0D2D8EB9627C005C61AC51029A1B77D284898BD4650AF73122CC
          18787808C4CD1DCFB1F25FAC14755442C500878401C0718CE4507030D5F105CB
          F6E3961B96FBEBEA9C58E26FB4D106B9A8ACF04A60FFF44D4E16109053BF8ABA
          4FE8D268B8EC3B0C6525D55CF325019815914B91B885CFC9FA74D4E1877881BC
          1953C496BC0A011151893192C18BBFF2D4A9537393671674B38CF6EF26CD8E89
          2D174010D9A160F35327F9D2BCCFDA3DAC6AA5B2D6BE4DE22B8ADEDAB34B077F
          04B078AC27803AE78C53BDBA4212AB3F35E73F1CD794D5C9BC79CAE4850A931A
          5E73656452700D5900263F6FD6742F81431832E04A4415608A3B562489016C8B
          0B22E0987119436F85B9C2C0C95780A4409219982B76098A3F6240259A2F2677
          084B1C23CFF129CF25102F0E59F5F92A07D70091B92A4E36ECBE6BEC8BEDDA38
          C87EA0BC041FE11BBB92807591DF494116C9E0E300DA60B31B54B14FD696616C
          2DF9EA6ED74046B4D36DF690FE2B85AD6601375F87CBBFD630B208F104602966
          17E1882CB3B3D24018B51AD651044B0A5EED9B35778356B37A093BECD8A2A5AD
          D5B963B1E01A06AD08540064A72BAE3F982B376B940F296405490E4D06203738
          8D68AAFBEFBFD7D6E9D5D3811A06ECD16402501AC749821A40BF5EB5EA3E11A0
          C1766DDFDE270924095CD01E79E4219718D81FD15ABEF414339EA8F782DDC3B2
          60AEA79F768A7F877E0050D91F8F802D12814B034B60AE210744DED17C7900F7
          1FDA8EDB6E65679D76B2CB02EE4F2A70A5940A6009B83280B3AC896B1B9F05EB
          2FC1D82E76932CB846745C943C01DCD084F16FEDDAA96D62D44AFD5AA3644A04
          14A0B95E7FCD954A7DF99A27A16169EF80AD7B9084281E94400145012B2D2691
          9C9FB6782BC9683C820EFD59FDC1C4C331ECBCDDD6B69E72BBC2F801D7AC5F6B
          49B2638547039206EE635436A001CC84DA524A1D9FF0F5FAACE3F7494CEC49E0
          49724DE2780B25B762BBD637586DC03507B213C6D888476EB27EFBAEEB5AAA07
          20F4A8B84A24033784A1CBAE53558630745EF4E1F2D66FAFCE36ECAE8B1546FB
          FB4A07D5E8A7A22E6F56804747A40122DCE800C88F3F7CE7E59BDDED4AEC32BC
          04005ADECB1A89002D401590EDD4B295B56B2A435731B2007AAB67C8D2921C8F
          047E03201F3C70808D1A31D24135E48B903560690C3C3C06B2CC959BFCD043FE
          E1ACD5A3C7747C041044141900C8F1C25A5D1210830D7D14E313CC9C41139547
          BD0FD2627E2C3F23674118B32E5142E71DB6DF56F956CB1B3EB40069A73632E2
          487EF0882FFD1E8FC5816BD492CA967761204766AC484508A3451A18F2FB0007
          13BC05F86320C390F80B161BEF470E89257911946CD8275B2D095C014A268006
          6B28BE5F1A65DB564969EABA2A9B8DEE4AA37E165201E0DAAB5B67BBF3D69BDC
          C7359B0C25DCDDC2B589557651E04A1AC524798F261AB1DF3933B4A21DF687F6
          DFDC3D0660FCB056E480481253125900C61A19B15CCA90418B86D7412BB16E3C
          06285D53463ED4FF923FF5DB72C92BBC1793492DC7B033124149FA79B503D79C
          A6A8CC47933E7ADD065C7C947DB14D6B970B00DA0F148CF011C6AB15CD68A5FF
          7ED8AD7CC2A2F5F8D9A68DADFF19FBDAB8D71FB7F9AABD53DCB27D457F9E05D2
          229FE3B82D2680509F2CB7E6B844F0C4E38F2A59F3210E56780BF08846E99670
          FC46A5AF86140070B5516B2F606DD744834B56FB56F83BEA66A415A61E142B10
          F086410B8F03F68BEE0A70F77DE76DFB6DC040A3A8220C8D2C5E3C07503C2F2D
          B5C0B42CE67DCA38F308D3DD71FB1D722E58EC0FDD95657FE8A1E192155E0D4C
          00306D5EC36E8F38E230312219FA08E5C4ED8A028029C02209FCACC8AD8F3FFA
          C02EBFF8224517EDE51160802B4C1580065C237D23BFDB40499EB3516C7F79AE
          A5264697A83C80012B978044AC2B6A6AC16C29F772E1B96779A1BCB7DF7ACD06
          FF3EC8A39682A5F2989D88788D84825C1003BE24037CC9DB24567140AD509699
          6F5F7FF599DDF8EF6B54557863072674D5CE8AC36FDE507EA275E41BDD402B9F
          BAD57D990D23E4731825115AF7DE73878D1E35CC5960787E84EC50E8729568EE
          853A6692A8C72BDA2A9F0192C4D79F7FE27DE3A563D2A43080295E03F46984C1
          16270BC0B25B364E7C74FD799AC4857DC05C69789454974D627B4DAED7509EE6
          D38FBD3F6629841F17318EDB99F50CF9E0E60CC6C5F7FE6A0BAE59709A37699C
          8D7DED491B70D151F6F59E3D1D5813572B019F82123E10F07ED833F5185036AE
          12032F008A0782BECB3E7C5F9DCBE4C275BFDCA9A3FD72E6FE36EABF77CBFA5F
          B292D72B1A5463FF2501575859360A89E743870C566DF86F3DDA09B042CB44BF
          ECD6A183030A6C15D60AC876500ECF00D6B692085A098C9704AEEE8625CBAE87
          A00A8871F807C06FBBE946FBE2B3CF1D5801CF48349A7D0DD84E545E5A8096E4
          CC23860DB75E3D7A3A6B8DAC5DEEDAA57DC7321D5609F88574C1F1D238FEEA15
          2B7A6496CC44365DDA1D924368693CC7F586C42E30D63EBDD7F2400526039876
          B063D82B8DC90220E5779704AE61BDCE96790118F0018D252D9F91611FD058BB
          6737DB6BB79DED98A38FB02F3FFF4221BA4A22A27C11F965B0C38802CB87FD87
          6659FCF02E065AD388B564C99E44AEB1A4BFE3F69B3DDACA7D4BD33CA8BEA416
          48B56854D7FAF4EC6C6D9A3670168B518B461001DB930C65C81FBFD9C081BFBA
          BC13724F385B791EDA145843EAC819199186A64DF692E384BF12A145FFD15780
          21D2408F2E1D733972A3E8E39200D66D046B6A15A6492058AC57814DFD5C3BCA
          57B7B5826B482C43DED9DD76DBC5AEBBEE1AEF8BD94A16940B70502014E01A45
          224BD2F7FF13E09A05ACF99AD5A6FFF4958D16E00DBCF868791B6C6C9F6FD34A
          D6FDFA690458D9C437561E080EC0629E80B0379EABF1997F8EAE2B702504F7F3
          2D5B488AE863BF9EAB84D99225A6F6FB58062A19837423AC2CC05C9ADF29EEE2
          86253C4A347BBECAD4876FC694C9F6CE1BAFDB89C71E2343413BAB54AEACD5A8
          52D997D9805530D8002B18212C163FD7D662A8D10A8D5BE47955A38E921AFB88
          BCB180F7969B6E62FFB9FE061B397C84B355DAE48993DC3D8BBB17961AA0CB7B
          541ABDE2B2CB3D39338C957DD0006C1AF968013A96E9FC569776ED5C13AD5DA9
          B203EDE6EBAD6F871E70802FEFA64E9FA25497890618AE586F2960E0D24B2EB2
          B6CA924FD41A7203C0CA6483FECC24C3FE60AB110A1BFD521CB886512B96AE00
          29EE57B0D8005F982BA9F398E0081BAD5CA99CD59566BCF5D65BDBA5975EEA86
          ACD05661AFB460795ED34A7F118957DC7D501C730DB984FB83A8BEFFDC706DE2
          FFA9E373C6489A3E313EC0A99DC0B39396E975094995760C73C5B8D54DBEA211
          29450D2D96DA7DD65DDB0E3A707FFBFEFB6F7346A270B90A6210E01AB97C91AD
          3EFDE4035BAB5737F70A809D721C1134E06C332F90A038A3566B4DF8DCA75106
          9C49225224925BA0678F2E9E7783FBA09DB2C7B555900D2567A8FD3571F2A45C
          52F23902572FADB3149577FFE7C0351F80F0ED983B7EB44DFBFE0B9BF0CEF3CE
          3209B5FDFDAA533C694CFF730FB65FCED8DF5BFFB3FF61032E3CD27EBBE244FB
          E3E60B6CE413B7DBF8B79EB129DF7C6C73460FF352354B0370AB72DBE2061532
          0003863871E4019E635848D2C9CD970FE1AFF6E8830FB84410390688C9C720E4
          4950C45C234AABAD24015EAF2937A525816B542470877E315680303C138E3CFC
          087BEA89276DCCA8D19ED91E760AA0525181B2DB53264DB67163C6DAEBAFBE66
          E79C75B66DB8FE06D6081FDB3410C113B1A4EE58E135108627E40180B07EF51A
          B6599FF5ECAC134FB2271E52F8345AAEACF1480311620B4B7AF5D5979585FE38
          CFDD8A7B1ABF81D10C2067B2C120C60483F65AAFA65CC0F43C1BB0B05880C5CF
          572D96FFB0D4D05AD7EADEC58D2818B4008848A9171553EBD55DC37AF6EC697B
          EEB9A7B3231A009B05D770BCCF4A07C5DD07C5816B482530F97BEFB9CBF6DD67
          0FCFC70A0BF5C4D45AF2A3A9E2D3DA5EC7DF01B728D2FFE93C89D00A2B7C304A
          2CF0A41D24EC7A83F5FBB841F10781A6B3635F47248EF9E1E79CB0D805DE9E52
          98F2C9271DE7C9B60334A36E165A2BEF45DDAC00DAE264019701DC16A07488D2
          8899240057AE035513D05DC918475878A74E1DDC75AFBEBC6AB6DB6E1B1B3B7E
          9C3357D836E0EADEE3FF97C0B52400E7CE756A25D9F67F659B6207956E564FC0
          91862002AA3432F08F19A1C436841B4AD7264FEAAF4AF776EB8DFFB11A956438
          A85CD9810A8085C1AD59A7AE5BE261AE30D925B96201AE44D3B0B4A6B19CEFD6
          A9A303174059BD6A35EBD8BE83ADBBF63A06D81E7CD03FEC88C30EB71DB6DBDE
          FAACB3AE75EED8C96AC8F2DF5A06B41EDDBA5BAD1A351D5059B2D30055C01AB9
          81F7DD682660AD52AE9C6DB2DE7A76D231C7D85CA596FC53D6762A11103E1B7A
          1FCF09244012785CBAF3AEBB28F2487EB018330058F7A4903B1AC70CD8861C11
          01114C1401EED92A0BD9E7C14CA35E569476010018CC0044EF1E5D73BA2CFA2C
          9F61B1EED8B1A3F2203450A299B23ACEE16ED4F2FA553A979001B23E97C55EFF
          126D90001B007BD38D37D8CE3BEDA0D2D9655D878CF2E084BDE26E15FEAD8013
          32008103802E7EA478134451C1D031890404B06082F708B493EB90002BAC3BAA
          DD2687995402008C61CDCDC58859F2470E81300E223D603863C2A22F015E1E97
          1835A7E30D4F01CE81F3C115CB831204B24C244CB234A4018EB767CFEE56AD5A
          151B326CA8B3D5243417635B02AE711D8AEBE2FF79E6FABF0286CBFB388BBBB0
          E10A93738C4EC11680C52DCB4BA0CC223268818D1E3ECCBEFAEC53193036D5CD
          DBD5C10580CD66E00FFD31F20814F5181E08917315308C2085C8254B10034C61
          DD757ADB3A6BAF659B6FB6892FCFC95CCF67F8990278BC87B53F720A10B24B03
          A803FCD83F6DF79D77B2CB2EFA97477391244823C14BC0001CEE98AE3645E78C
          AB0F4BD0A79F7ED2761290D413B8E2FB4B236398B35881420026BF13E702AB8D
          0C628B0357981083157000245822F31A5F4A9240933F942CFB7C1EDBB01D4CAF
          8D8C676B6AA2A8A4090E70E50FF61A4C290B46CB0B64B33916A8C2B0D5969B7B
          B009FD11201713469456E175F8EF2279C0D401C26A552BEABAC9C759D791FC15
          3CE253DD4A007BEDB557BB86992DEFC3A401A8872480DB16BF4F100740D756FE
          A954927586293065DFB4E85F1EE96FFA78492D641A8E33B4702F214365028129
          138007D6A49A2BE5683866F4D7214386F8E496F516C8AE1E8A1B83A5E0AA4086
          E50D7C2B637FC55DD85C76234AA4A46E4EE1DB1989A21D5CA93FA59979B29640
          77DE7A8B1CDC0F93D1A0B355AB50C1D6A851C397C8689A80AB5BCB89C95E4C8B
          F231B1CC46BF24E98AD7EED260EBDAA5532E810CC964184800693D85A87AC214
          DDE09DB534E3399F31C8D14201B5C87F00C8756AD7D64116CD927D236F7CFDF9
          677E1ED3941754A3D6C135F21530C160CC6230A3C33EFAE8C30EAE84C6020000
          3FC7C7B130D0C247370C6901E201EA8B035796B300A95731D573C000E0E439CB
          4F3EAB23C6C7FBBCC700675B4FAA43A8AD560A949DC6B0C51FEC3598521852B2
          83FBEFEAAE4C3E61E4C3456F938D37F40986E00B8E1170039C6087B841B12CC7
          A8C46394D28EDA5A35316E91E3354D75499FD29F2CB3AFBCF2725F31840B19E7
          0068F15E849A728DB6D97A4B9F506900A7978C91EEEACC5F1313150ECA972BF0
          CF38368E913E5C12B8E6572C70FFD6D453808994C99C7BCE2778FD2EEC955A5E
          3C075C932017FCB00B2581924A03C5826B7183B8F4F395D30313C6FE9AB32267
          B34AE587E8E5B4ACB49409CBADA25AC47EF3982B7121D68764F0C76F03E5E378
          AAEDB0CDD6AE9D6274A9564999B548B22D83064C22966CB001C02FE2FF3DBB96
          185FE492E5E665B0C00C196CD100524085ED788F6D3C5C55EFD1005CBECB2005
          64D9867D54AA283F546DC7C038FCB0435440EF0797369CB1921354A04A391818
          B9FBB3A6134BA4922390E0B5D75E718305B95EC96F1B2919BDBE58312D8E6F79
          3FB696C7462B4D64B0D7B163C7E68028F23078DED34C4E866C0831F7C3B23477
          BF42EF146BFCE79187ABA6544FF7F7847902381879002F96FA3159D493065B34
          9825D72D025578E4FA612CBAF9A6FFF8D29FBF441A488246D0BF3D594A2A5DB1
          9A29A76BC235E018F82E930F401AF710F702F7445CB3E2AE03DF2DBAC94D4E20
          1A2B24EE27CE99067BA5717C24FA8949D9E58BD4EFB524A3BE145C4BD24BABC1
          3601AE3188B20681ECE1E5C262B371E2F9CF230D5CFEFB02A79953A7D8A47163
          9558E44DBBF7CE3BEC8A4B2E56528ECDDD07D4B553A57F8B904E5845E2345F58
          593612C1642B7F660740805730C6C8D815EF73B3630C61B9C6408A65222008B8
          124983B3FF91F2617DF699A79D71A31D3B0B17730560BD3A6C66F0E6A491340A
          0C3FC63BEEB8CD594A30644F68A3FD030AD94920FF39DBAC88D69604DFDDBBDB
          5A6BADE5BEAC5C47D86A76291D136996BD16EB9297C9EC94BF6D48477894FCEB
          C2F36DC71DB6F308356AAE013C09FBD4EA81F051359877B07158E5A24D811602
          535F5EAB3139724DB7D87C5325D0BED7251926878405269E1B11F61C095EB8AE
          C8127C1FB003DCF13CE077D85F846F0770C7E4BBA4EB013817DD1280E63E03B8
          23EF06E7DC5CBFBD8E809E505826E7580125C53313EDB5247FA5E05A925E5A0D
          B6015CB380BA3870CD1DEA12C015DD35C21CFD464FD94B30589CB989EE8A84C7
          78194C975BCA8431A3EDF69B6FB24B2EBCC00117CB3A9A2AAE5CE5C57860952C
          29191831C878CECDCB72319AEB9A99E563540A65B0A0B72119909D0A26454E04
          52C2BDF4E2F3EEF0CF40E4D838C6388F5C62E634E432DE8F6C5BE16B0993E539
          03060D90348430D9C1837FF7E42EBFA95AEC30A547C41778716D88CAC5AC8836
          61C20437602129B164066093748CA4C1234B7FB2348DBF2CD02E33C0462E017C
          81057EC846E4811821C31FA54FFE50BF902E923EA14C0EFDF3ABEA62F13CDBB2
          FDC1F7870DFDC3BFCFFB6444C388CA35CB252A47EF47834D5D0303E40972F945
          B5B6E277C78E19E5FBE035FBA39A2FFBE73DAE0F8FF13B8BBB265CDB6C635FD1
          D807C7CA3946E3F7A9D9C671C7788059478EE1C2AA19C5834229B816DF47ABC5
          16806BBE0B4B006C51832B97DDA828900DE69A01566E20000BFF585A24918EE4
          26E1CA45E1B90FFABE67B7DF768B5D71F9A576E619A7D9812A02B8DBAE3BDBF6
          725F616917CC13D0A485353E58204C83F7610DB013C097F4807C1730DD6BCFDD
          E512B4975D79C56576F75D772862E80B1F480C3606648029C7999F9039DC7A18
          0C308F5882B2FCCC822D039A251F801B4B3F1E01DBC86FB0321FC78C19E3A0CA
          1F8FB056FE00D74820920FAE7F176023D72A7D1AD79F3495B865C1342391097D
          C473E2EDC70900310E2EAEF17DEE238CA60076006B002880C56F6107E0DE0ADB
          40DC73FC36DFE3FBBCC7BED836AE13915F5C27AE2D8DE7CB7A9D007C7E8F4905
          60E7D869BC8EE3E35EF331904A1989345032F65A0AAEAB0574167F10802B7F59
          205D1C9375C1BD385920F37918B8B229F8B24B463E8FB2280166DCFCCCEEBF29
          1287A4271411FCCF0DFF76ED6EC30DD6B3B57BF792837637F70CC84A04002B4B
          2FF434CA7FB30D5E030033796789987AE4E107ED75E9A29EAA50038063891B9C
          C7603C01B4493A3B966C49A263DF5E033892B44404507E755906673091C84110
          E0BCB8C7ACC4B03C9FC35AE37A66332FF15E806BFE24FA77C135D202D2A75CD7
          F08DF6EB9DFA9EE6F74BB62F8BECA3B4C05FEC9BC798040348E3B7E2BEE2F701
          E16C96B29C74A0EFBB7F36A5D0D348B26091F1FBCB7A1DB2CC39BB8F08B801E4
          B3A9137D8597B6E2476C0912B7946427A5DBACF81E0870CD07D860B3598386EB
          42C5C80291C4386EF8781D2C06506316F78C5629C0F9AC9DCEE4E137CB7B611C
          8B1CA90C92D1A346F8F20BC64945049276B3DC220A87987E9664A3546980B2C6
          0C1E1A80CD6FC11A72409F4A163018F61B59966280856E0733CDBA1605D0E6BF
          1F450A8B4A735864C9932CCB5F81CFE33AC2580157F4C9A88D166E58F9D999FE
          2EB8E6EE11F44F26A6143830E00488F03CEB3215CC2DFA31FFD127E5F49A6501
          327B7FE5002B23E3E4D821811F842AEB1E8865794C96F99363494095EBBCB8C6
          FE429EE03701F845A50A564904E324AB3AEED1525960C563DD4AFF8525816B76
          D0C5A0CCDEF4C110E231971D3E1D0459708CE50FCBA5C8791A915D71B307C308
          E6E89A94121C93F4D9DDBE94848590D6646935D3264C1C6393E4C40F1385EDF2
          C88D1C12442E34178776DDC0BC1F40999525005EC0DE3F277B3F8383CAA16E28
          49B22AE5123EA74098CD2E0FE06601383E0B2D308C2C2519B4CB7F9B240B5618
          4CE231648100DA00DF6CB6A625AD6096F419D733402CDCF5429F8E3E09F61F09
          5E8A63F67C1E135BDC67F11BDC277E2FC9A383200F970832324F52E65C1F2972
          6F910287DA677632CD4E82D96B57D43529EE78DD152DBC17D20986DFE65EE37E
          F60C5F4A839865D5C96F16FF572A0B14DF47ABC516F9E09A2CFDD109744BA5C5
          E018005EEE456E499E20230D374C4E80ED93946E8BD6354AD2FDA1B1650746DC
          C00146F13A49EEAC7D2B094B587E67CC14BB9D258D4E65CDE7AB2CFACC99895E
          E88C63BE188825E0177F598B31032C403C71344F40525C2A5DE227920480CDB9
          26CFB52F81F96CE50D98A3CDF8C88F13B0F59229C977191C85C6AE34E3BFB625
          F4967E20633EE1B75E09803CA2C1B8D27E2D1C9849D91C67E99EA19E7E2CCCE0
          EFC79B2E5BFFF27E26394A3E338E0930F94E12343079F2E4BF00ACF7A4AEF7A4
          494A602D6D96BF7CAB75A164902C5D7340933BA7CC7B4568EEB9E34E01370B26
          312927F74E028AD9FDC7F36C4997E47ECB5436A0EFD4D77875CC553AC10594EE
          D61FA906FD7E123B0C3FD8B9B393F7B85FB3A09F05D27C1928A4A160CE850C33
          61D2D9D7D94934775FA7896BFC58F47CC2F8B19EC83C5A2E4565B0FCDCDDBCF8
          27A5E05A824E5A1D36C9826BF678B269DB3C4D1A09A795056AFCC409DE18900C
          5896DC94CD98AC0C63B03F0C375EA82F7D0C4301204BE33521A31830301A8CD7
          CD46D1C0D9B3921CB1DC7C0CF4313232CD9E2383C7B4899AED31464C54EED6D1
          36799C5CBA547D60FCB8913669F2589B327582EF73AC986B1846D80F291161B5
          347E8FC6E7B4F1CA8E14915561E4A0D0E11C65279AAE73193752A9ED14343061
          CA541B3741E7367E8C4D9B38565995F45D67C92373868A497A9F73278FC18471
          B0681D97183599B8262A41CFE4496373C7C1E7C9FBE3FC3D92CC709CB4307AF0
          5E1C37FB8DE785EF4DF03E677BDF47FA48BFD162DFEC93EDB84E71ADC88C8506
          3B5DA1BCE3C78FB7112346F835C4A19DF7484DC8B63CE25D10DF4B8257D84F62
          98C9F66D1C3BBF4BE337593DF03EAB148E119986169FC3DE62C511DBF19DDCF5
          4AEF8338BFB82F589DC4F9220FC5759EA7490D1FE4912386C8383922D73F5CA7
          91CA3AE7D74CF925E87B9EB3DF912386E5E4295E87A12CCE8DDF896DC31895BB
          6EFA8C7B371A7DC3FD4EE31EE7FD48A21EF71EF77BCE6897F64D5CFBD08A13A0
          2DFEAF145C8BEFA3D5628BF016C81ECCECD9498624667C061E0C3434B2C47D46
          2E3183E5B2A2481306CDF061B8AFC8C5065716B9A0D07053213DDC00E9A22374
          23F39A473EA3FAEA1069A3BCC655A97FFF9F3D57E71F8307BA5BCCEFBFFF2E37
          9D61BED41F36546E37A3E5C63478800D1E30C8860F1E61A3868EF4DFFC43EFFD
          363071E1E1B7683CC7E527E7EEA3DFC3350A771F7E8BDF1DA63223C3476A3FA3
          46F9B631D0F0C51D376AB817B0E3B807FD31D8FA2B11CDB0C1BFE9B77FF1705E
          CE176D973CA9E8BAE3C78DF2014DE21872CB0E1CF09374DFDF6CE81F43BC4F86
          0E495C74DCC567F01FA9FBCF003FD7649BC4ED07971DDC81D8EFF0A1C3FCBC7F
          FF4DC7A0F7426366BB70118AF738F6AC5B51BC1FFBA52FB94E00298F84C0124C
          3074E850FBE9271DAB1E793F7B4DF35FF31DF227D077EC1737237E37EB1A45BF
          F05E9C0BDB714EBCA6BFD0C5315286BB13DFA5A199738EF9E711AE51E10A45FF
          85EB54F61CB906F4FDE891A3FC377EF9F9FBA41FF5BB94E3A6FFF9DD1F94450B
          8D7E805CBE382EF6C17743C30FF729BE4B8B630F97AA70A18BBEA62FB8D7B8AF
          794EFF703F73AFF13ADCF0182F9007EE3DDCCDB8F7B3FDC47EC3CE9030F7E2FF
          4AC1B5F83E5A2DB6083FD76C74D63C157C9B33573E90696289AFBFFEDA8EFAE7
          11EE279A44D734C939C687A37443453A9152AD09D151FABC01B1FC5418905B14
          EF931188CF22BF25AF231CB08D1CFCEB3750A8AA5A0365A7679F9D3A74541081
          423B1522D94449941B2A8972D7F61D958EAE8DD20F2A8D9B22BA9A2A59461207
          9E445EE131C0EF111AC96F924F937043E2B989F7A7714C1C431392A990B14ADB
          464417C10B448911D34E8139CE83E3E478AA56A9942B6183DF6C0B5552C0ED8B
          F0493236454043439D43CB1649C146229092505485C1929C46256DD8AE91CE11
          C779521FE2B7CB3ED80EEF87264A64D358151078AF814AA044C4193EBC7C37BC
          22DC295DBF81633E8F7C1EDE137CC63112C0B086522812FE4A3001095C1A91B8
          9C72354AA0D344A1C77C4EF416DB54AB564DE9F1DAF936F595BBB681D22C722C
          CD741D62FBC6CA3FCB77D807DBF25DB621290E8DDF257563249921F69EA8BBAC
          8F7275252FC17D0ECF0E22B7228B18E711D158717EE1C3CC35A0BF89A2E33770
          B7631FDC8F6B52E8527D1B9FD1B734F21810DA4AF4176900E94BFA887D718E75
          95E7227CA3D927DF8F7C101C07FBA6F15B6C177DECC10CDA967B83C6BD1F8DFB
          9EE78440D7A5E4BC8E99AC58DCFBDC93DC7F9C9387F0EA3D822B8E38FC507BFE
          B96752FDB578582805D7E2FB68B5D802708D10C8C8F729D933A44877D7F9E69B
          6F3C951E371F217F4986A224910671FDE4ABE42602D83AAB1E5657B942F11EE0
          169F9115A88306136007A07103F21E375E0FB94DF1596F15AD6BA5426FDCD064
          B8EADEB98BE7416DA644CA3D3A13F7DF528F3D358893A272DDBA76F0BC99B865
          45B20C8E238E25F268C66F122193035C958AE9DABD9BB246B5F763E1FB802A99
          F1BB755610830627C9503AB45736231D1FA9FB18C4004DFBB6ED1C5C19A4846C
          02F0F8E00216EDDAAADE5697F6399730F7CD15E874D5B9746897A4A06BAE5A4B
          2D9441A95D9BF84E4BFF1D7C72D98E7DAFA99221AD545194ED236C33422AE977
          9EF319E0CA23BFCD731ABF1993600BEA7529372D60D85E691FBB74517F75EAE4
          600950F2487217C017A00430D9CECF4FFDDDB6B5F6A7E3EEA0A4E7343E03A4D9
          67E7CE9D7D7F6C43BFF01DCE89C83A72069033951488DD3B77C8A5DFA3CF38FE
          F051E6D8E35ECA868CB21DAFA379262CBD069878E49A708E5C7B8E89638BC828
          AE29C9AAF97D1A204BC296AE14404C93BF709E9C33AF69BE1FF55DE420E0BD2E
          BA97E94B7E8FD7D1B7BCC73DC6FDCB6F719F716F715F733F330668DC6BBCC723
          DB412298E8D9179324E0CA9822FFC22B2FBF986ACEC5C34229B816DF47ABC516
          D9DC0211B1335BD61C2AA4606E418BFBE4934FBC4C30839F9B958A990C18D2DC
          E14B4ABED0CE5DBBD8DA7ABE96A29F7ACB17951620DB47A1A5BCDFAB570F0751
          6E4A008FCF695D04D01BC88775CBAD36D56F74D66FB457F1B83E4AF7B791F5E9
          D5DB53CF6DD047D50334B0D65EAB8F0642371F48EBAED3CB9327AFBB562F1F00
          0C10F6DB4165937BA9F85CE7AE9DBCC500E0730665B76E5DACA9126DB00DA1A1
          000F20B1619F756DD3F5D6B28DFAF4F2E3ECD9ADA3F5EEA9F3D2B990B690D6AD
          4B77EBDEB5870657329174EFD1D9BA75EFE4E7C6B9ACD55BFEB5EBF6F4BE22A4
          B6BB7E0B705AA7F7DAFA9E9235EB3B1D3B3098DB3890AEDDBB875A771D5767F5
          A5FAAED7DAFA8DAEDAAE9DBEAB41AADF0458F81EF1E98028FBA431D8E3BCD7D2
          EFF39B349EF7527A3B26BE1E3D7A380802A0BD7BF7B60D37DCD043611D8C04AC
          9C3F8DF35F7BEDB51D5CD75947C7AD635DABA7AE632F5D533DF6EAC535ED9DFB
          2EC00448F33EC7DBA695404AC04A9587384E8E85547E006C802DC7B4B12AE772
          ECB0C4CD36DDD88FB16BD7AEFE3D808BCFB85671CEB13FCE9DEFC7F9D107A4F1
          EBBDCEDA7E0F9278875494C96BF5A9AA0B50A5B5A3EE1FEE1522F398C40035CE
          75FDF5D74FEE075D377CA8494DE8139C7E83FEA325D72BF95D9EF39BDCF3DC43
          DCE3DCDB84B44210782F5EAFABFB92F70054EE77B6653BEE45BEBFFE7AEBFAFE
          985808B97EE595574A8C07A5E05AE2AE5AB51BE6CB026E1DD6217932DFB45CB1
          6776971B8B5B58558B281A5546BD9C34BE93725D429B0D611F2B7B64470A7F40
          DEE3F3302685959C28193E9B3A45E55870BD12B24F9F24277F028BFC60E6CA18
          304C4F16BAC7C05C4916FC6134086B2BC78676E54EFEB2FACFD571924279812C
          C35E39208DD0C15A1DCEE3894F6AA22FF3E706A75143F47B72ED91B599E39923
          8F85E953C67B02174A387B2D39AA1C488B4E7288A24BCB5791CC5832C0B9E55B
          2D2A95727C18A962299044A44DF732D1B895E185B0603E4946E459A1227C5327
          4F4BAA27A405F5A2FE17E7CE7163F8C9860F27EE63492DAF9C4B5226322AACFF
          51A0D0BD3ED25CAE9C7336690BAF73659F59BEB8334352832C7C64F93C021030
          9061F4C2988797079520F09208034DCE936401E91A7531F1C6480337388F9C0B
          9E8EC9F79BFA3ABBDF275E2058E3D30441EC33FC45395FF4788C915CEF19F214
          70AF0EBF37B52F5DA72953752DA871268F8D59B393B230896BE04C1B3F61B45F
          EF59B374ACD456CB444A857F763644358E277CB3F90C036F843BE7D21BEA7871
          C1E2FEC678E5556753FFDC6C5049782AF0E8F5BDB84FD3F2E7B99B71094F4AC1
          B524BDB41A6C1306ADFC082D970816083C04B0D3A6032449C8646EC030503468
          12A0D48D36874897243351B6450DA5782F7C40B36E473C77A3997CFFE6CB9566
          8106F39F73F5C3A9670E9F4F9BA9DFD12099A1C101F031EE031C22CD5CC4F827
          79E9332DA25FC28507771C0D447E0F6D1997ABB9F3547902571DCE4B8372924A
          D624388A7B9606C002A27994D22EB5396051A701B258DCE37C00DB4879876B16
          60C38EA64E26E76BE2BE83DB913B9103609A9498A470CD01C019EC5EB22675C3
          F292D8DA0F033B0677004EB8256501281B15E5BEBD72C38AC4263CC7F2CF7502
          CCB89EE12D904BCC13FD9A167B6402A0444E802A7D3065CA349FE072C97E380F
          F529DE01EE7BAAFD73DCBC8E80916C55DC70ADA23FE2F87C0277F09BEDDF63A2
          F4BC016932F638D76C704A0070CE67599322D76BDE1CED0B9C555FE285425F73
          917D325CA8BED664CDFD8CB71635D6B2FD984D021F008B97409C47846F67834C
          C28D2EAA5244F419400BC0863B17632571DF4AB2609534C5603E4C9482EB6A00
          9C253984225DB152C6100C163C09302BF4334437A0DA260EF6D9CFFFFAABF937
          51FE402EFC0654B9D0CFD6DD26F1B7956FAA5CC8D5E4D74AB968189606506CEA
          253ED263F4C73463D322FB5DC40733F1AB64727086CE86A9BF6B9C6861C86BBA
          ADFBF2A664CE4B722400984B300D331230E7587FBA7D612AB96CA6F900D9F09B
          CDF3EF2CECEC1C53F612D91C63F8E5E6BD0E96B9C879A4FBC926C10E261BEF45
          76ACEC55F3CF52D69A0F02FE76942461333F0E260C26ACD48F3473BF145EFBA4
          CF16F5514D6A76C5B178FFA6C0CCF392E5954DEF9974C5E03EABA9EB2DA7E135
          56DDD7D82FB21AF74F7A2D497616FA577AE1FC7CE2BCD2F77C128C0B1BF7C962
          0657F65CD8245BAE3C564959225392319ABF4D29B82E4BAFAD82EFFC155CD3A0
          80141CB84F69BED8CD25500A100C5048EFBD4C1ABAFC53C91F40F9AF0B912B1D
          997133A72FA994247ECBE23819243180F44A0B4A3F3EDECAE052E610D2811D00
          CBB9C150619029962760926097486C3A10F93059A2270112F1970C525A008083
          340116292EF96BB13CDF53CE393EBF57324103D9008274C2F289259D60169D3D
          F2FA689199A588FE732DA3F8BF458021D3FFD96FC69E5C5A0088BCD3B080D29F
          C9F9F8B947BFFAF927C523B3412609D02D8FBF6415C2EFE7824222AE21BD16C9
          6F454BA3EDE2A7F3FB2E7B0161BB712259F0659B25FC45F8309B14799FFFCDD3
          2E05D7BFD9812BEBEB45822BCB28818A874D3A844812D07F3978F11B2D1D54E9
          20F171B684BFFC193D7F535F2E079064018561A1DF4B80131196F0541D0C189B
          92149EA23A26B09BB9F1F3074EEE47D3090440F026F6949E674C26BE298396C8
          21FFEDF84BBEFBE7428E25CB5C7364CFB7CD159E8355234BE86013A922BBB314
          5C1DD8132460C99A30BCB49803AFF29691F97D9965A6450DE6608FF118DB6441
          C00F2B03C2F9EC3F0E71515CC9806B3A61790E09E424AE07E0B448DFF12266C5
          BF32D6C883C0B1648F75C9F70EC7C08DA0EB915E3C7ED327483E4279F1A7E924
          999EE7E2F659D42A2B77E9334FB2DFCF07D3BFF45DDAAFD9F32B6A9F257DAF14
          5C4BDA53AB78BB22C155BA14461DFE7C90E8460D90CD0DAE00D8145C17379717
          07AAC9E927FA68B0C76497C13492B7F1BD15C4EB85F44F62B5393CBD9CAB03E4
          290D58F2C30A5960B1E0AABD43C33178CC97B143A1B4D37582C4C7CC8B398343
          48596B21E006AB27AC953E4A8C61AE3F6AB2497E9BA560721C804CD22F840CE7
          81AB7F900157C0544BD42CB8FAB2363B576406A91F5E091969D2C725DFBEA8FD
          66BB32F697E46EA01F388F14E0F43CFA2B5612C9B50BC02C64912507D0F8C5A2
          1E31062571FACCBBCCB25C15BF7B533CE5B5EADDEAB812FD3B66CA244475D1BF
          2C30F23C2B4DC4674BAB952EED755AD2D9F25929B816D743ABC9E77F01576720
          422D5A065467A7CF7363DD6FD224B6DA7545C06529077B611764185D308E9C61
          2CCB7E744C0B0486327A75ACD5DA1A55686C63C62BB7A70E14B344806B329233
          2D8F3EF132D15975AEE37FB5AEF52B59B97A1DED8709E9FB30534E2F0569C0C1
          CFDB0723C89920FB42E53BF0BF8474FA0400D8FB5680653A5F245E0BE8BB4966
          83428D3A62DD935D3BE0A780EB09C8D2FD0633CAAFB914FD571453CAD7F58A5A
          AAC67BF90C367B6B66F5EC9CE49B9BBCD2E34D25165F0548C7E65D563A4CCACE
          1A1733F366197772C9926B9D3547C6EBFC79B2F035D74A577FCE34EB5E577EB0
          551AD91F53148A4B3FA64B1A3057FE0E3A16EEEBF4BE4827BC92CA1345F5D1E2
          FADD6F09F5517C277FBB6CFF2ECBF352705D965E5B05DFF12002BF1BB08A0FB7
          9FDE7FDA0A0ACA5B41D9EA8A9E29AB627D55AC62D5063660DA6C1BEF37696EFC
          A76B2F92A7242890189B5866EB0E062CD0DAD85E96769B3BC4FE7BEF355650A1
          AE1D75C55D09B3F06D939BDDD94EC8017AE11673FFA904921296C1F693349066
          58AF1A9DAC49412B1B3C61B60692435DF2DBDE1254F33C2BBE93845961C8C0E8
          94632F78014CFED17A35A86005753BDBD7DAB5F705A49663E0AB2E19043383B1
          32F968FFB37FB083B6EF6465CB55B28232B5AD408F441B5555AB59BE86BDFBCD
          EFFC9AF620564502974C429C3836B703A5833CE17BEA9559A3AD7D93FA56AD4A
          43936798FA36399E643620F10CE0C5396ABF0B46D823F75DAF3EAD995EC3641B
          F902A8C9CDC8C592445BCE47B85C0E16FAC9418D634D6410FEDC58E82D5F57E7
          A033AB0CFA63DE386F94C32E28505F96A9E1BF9C0827EC6C863D75FB39565B35
          D34EFFD78DA66E76A8E33307CFF9E92C92D1379948B0FD0738FB84180982D0BA
          61CC7EE49CAF92CECC1965EBD4EC662D0ADADA3079440C9F374541069DAD46F9
          FA3633057907F34CF219EFFBD438E9D735FA99ED758EDCEB09B74DEF2BBF3F63
          02A4AF0A85A8B4F7B4C1747BE9EE4BAD96EE83332EBDDEC70CE0EE2B33EF8BF4
          9CD36924A7DDA77ABD7F9E1E0A575BE98792EF65FE4AC1F52F5DB27ABEE14104
          1C1A4C75C237B64E93B202D69AB6C57E27FB010F1934C6D66CD6DE7E9F044364
          4666F6D705CFD8951CF6C4DA162CE436D2E7F8C3028EBA5164D4F765B7CDFDDD
          9EBFE3222BA852CF8EB8F26EC3F3D0071EA9D9708B02AFF432F25E2516DEE4A6
          4EC022015F39FCE82726DA7A75BA0A5C5BD8EF13679B08273BD20689CFA0B340
          6DCB21C224FD8625135108B568A9A096D88E4DFBC3BA34AC6905B53ADA771C94
          236A22E6F2C0CB000AFF190E028639F32B3B62C7765650BE92DDF7D49B9E458B
          DFF8C70E3B594501CC4997DD9E0E0CED14A6AB1DF900F431C6444696AD04F338
          4B5FD132092D105049AA006FA6F34132C3A4843601137902EBF000EDA1F6D47D
          575941C5DA7E6DF84EB244973BDB3C86B5FA4300E0B8AECF30FCF9040428F026
          939A5E264A36008B51289D40384FAFE0EB57C966A744D001C7A5007DEEF49CBE
          1A655FBEFDB84FCA675D70B5EDBAD39E9AF4E45BECDF64329A602FDE7D9ED510
          E09C73F9AD36525FE57C7DF6F38B9A1C0BC718F321328A2FE39D2E17F65368EB
          C9E4C2F9312D8DD36266A4AD5D7B6D6B56D0C186C8754ADEC239ADC8EF29BF0F
          E99F4444F2FBC98F4F002B1F63FF6D7DEE79D1F1CBE53E4F67FEF95C17FACEFB
          17A2A03B6EA18B482EE5D0EF53D3FBD7168EB7E76E39C7D6D0B99E76F1F53A32
          7DA69666EBF07BDA2714EE513D49F2A8F106D24621B34EC6422227E5FF9582EB
          5FBA64F57C0370754D4C17F7B7B7EEF29BA2A07A7BFB5674700E6E315C7767A2
          0CFC0976F96907F820A958B68C065375FB7DAC0F732D0167DBDE3B6C659BF4EC
          60F7DC72A597A72E57BEB295119872A31CBE7D6F6BC4BE6915D61020B4B07B9F
          795B4039CA0EDDA6871D71F4297AAF956DB4EF09BE84331B6BE71DBD8FD5D4F6
          1554B9B3A04C051B3A9601215FD8E96229B514A259A6990D9A3C5D4C48DBEBBD
          B51BD756CD2DD5CAAAD2CDDEFB5499AFB417CF33E483827FDCA8536C9D46AAA5
          C539A85D76EAC9D6A16507816B67FB054AC524336D8855D667D4EFAA58A5AEBD
          F5F590946D25BBF2BF793FDBA162AE0565CBDADD4FBCE003EDCFE913AD7DC3A6
          3AC76A76D37FDFB11D77DEC1FA746F67271F75988EBFBC6DB4CF3FFD98ECCF91
          76F9C9BB793F562853CBCA576B663F4CFC9369438737D87A34AC66656A74B041
          1C8F00B28B427D6B1594D13195B772E5AAD93BDFFEA27717DAC13BAC65F5BC4F
          B5D2A8D8CE6E7BEC9D64D2983FD12E3E657FABAD72D1DE77BA4E956B76575FC8
          48A9A9E882B30E75865D51C759A152737BBDDF1067FF09003079A8D7A60EB7EE
          75F84D7DBF5C152BA8DCC65EFD62981F7FCECC4967CC15C0CDFEDDAE3CE3504D
          9C8DADEF5783ECC2E30FB33B9F7ECFFBCC668FB703B7EEE64C8EFEF663AD523B
          E987E9E3ADF71A95BD1F9CF1566C66EF7D37CAA6E087ABDED8B05B4B7BE0DF57
          FAB1D2A765AA37B797FB0D4FF6FBA7D8EAB401C9F19517685F70A1755D6303F5
          474BFB63F2084DF133AC5BAD0ED6B26C5301DC246BD5A8991DBAE31E76E9C9C7
          24DF519F74E9B5B14D52E6ACB6CD743F96AD6D773EF34D72BF2C141C4EFFDDBA
          34AA936C2BC65DA6663D9BE2003DCE8ED8BEBBA2023BD8CDB7DFA1D58A8EBB6C
          1D2BA8D1CEDEFD72A01DB9E33A7ECF72EF1414D4D0678DEC86A7FB26E73B6FA4
          5D72CA5E1A1BE5F5790DAB54A5B90DD0C924F7E870BBF2A43DD273AD692F7F3E
          BCF07AC43D973E96826B5E87ACAE2F739AEBFC69F6C61D67F960DD62EFD36DA8
          0FA274560594C40C0EDFA65702ACE90D5750B68A95AFD1DC7E9BA8DA439A75FF
          B1FD165617504D6FF8E406AB60C3662EB083B65DBB105CCBE966AED0D2EE7EFC
          25DD7083EDE8ED056E65EB6A70B5B10D763F42BF3AD5F6D9A1A755D7F7195894
          AA2E904451ADBA06CE846172F89F66BD6B75B196054D6DD8F8511A8653AD4DE3
          1A7E5397D1202C2868A2E3EA6ABFE88E86BFF9DCEF7E987A63E1443F46CEA142
          99B27E3EE51920757ADACF026F9B33DA7A352CB02A1A5095FCF8B5ECAFD3C5BE
          1759816D61F072809DF5931DBA6D272B5745C053AEBA5514903110CB695FD56A
          35B1DF26CFB13D76DCDA8FDFFBA35C05DB6CFF436D8280639FDD3670B061FBAA
          1A68650A242BD4ED6803266A9298F287F56E2849A6760FFB59B467E19C617E8C
          9574FED50B2A5AC5F2B534F935B5DF264CB743B65FDB1AFAF19713C034B7075F
          E8EB6CFCE0EDD7CB4D1E94942E2B89A7A0A0BE4067A4BDFBC5CB5659EF25C7AA
          DFA9DCD6014B50954835B0A75902BDC655BD9F1270A9AAEF37B482DA9DECC7F1
          0A28804F29AA2CA17F4C463F59D74605D661EDAD6CAC5EF6EFFB9C6DB0D7F136
          CA816A861DB6DD5AC97DA33E659281ED4FD5F7BAAFA932E7E96F9429AF7E2C5B
          DF0A6AB6B6415366A8AF67F9BD18F74015AE918EB7519F3D6D882B3F23ED906D
          3AA6130B137D055D7F9553AFD0C6068C1F64930482EBD6ED2E99A0A18D5C30CC
          3A29D497F3E17A705F5628CF39E9DAAA5FCBEBDA1594D1EFD75ADB7E816A6AC2
          5FBB81E49DF43E29CB716B8219CAC268E6203B7A3B4DAABC57967B4DE753C0BE
          9A5A87AE5BD801DB74F73E8B49ADA05C7DBB5313ED240DA6FD76DAC46AB3CFB2
          E57CA22C5FA06B2992D07FD20CFBF593C7ACB13EAB427F5768682F7E352A95CE
          5239210320A5E0BABAA269DE7125E00A339D2E703DC76FC06DF63DDE071B5A6A
          921F7A8E4DF9E55D6B5B4703B2EA9ACEA800DEB933C73A48DDF3CCCB1A2C6687
          6EBD9135D0EBF32FBBC18168EC2F9F598B9AE5AD3FEBF60563ECE9DB2ED64D5A
          DB4EBEEE119BEC0359A364D60F02A98EF69FFF7E90CCEEFA9B34F0436B565DBF
          55A3810D9C98A8910BA78FF3017AD70B4FDA2851ACB51B6C64AD3598A68CFBDD
          DEFBEA45672FDBECBEB72F13CF3BF538BFF9FFF3CC3B3EC07D59B840BC70BE8A
          E0FDDACF6A566B6EC32728FC12D89D3ECCBA376EE0E0CA717EFDEE93CEDE93CC
          9AD35528518CBA4253BBF985AF7D3F2909D64E7FB2C305AE095888B99411C069
          A0765F77731B3B9DC5DC7C3B74BB8D1C441F78F2F9747F539552F01BAB51BBB1
          55AAD1CC868FD3318965755596AC82F20DEDAEA7DFD2C90FB7B5D7101856EC64
          03D5CFDF7DF1BC6DB3E74EC9325A4BDA534F3C499F35B1DB9F7953E733DC5EBE
          EB5F1AE49593A5E702458B0DF8D85AABEFCAD75C537D9738AFFD397BB2F56C5C
          C71E79E2697BFB93CF1CECC9C730593B858DD1EF7C7F362B14EDF3BBB79FB432
          3A9FEDF738D027134EFAFC534FD12450DEEE78FAED74D0274B5B8543D9900F1F
          F4EB7EDE4597259F89F516546B6BCF7CAF24E7BC96CC810EC96AE18CCB6F72E6
          F9E5472FE837CAD8AEFA0DF78AD0DAFAFCB34EF3EB76D77F5FF5FB897BF1828B
          AF73296542FF4FAD790D26C1AE365033E6F89F3EB40EB50A044CAA32A1DE9EA7
          E8A75EB5D6B2C6655BD8A019CA53AB33EAA149B195265A6502B6CECD1AFAEFDF
          FDE47FBD2FCF3DF11F0EDC05BA0E83C6CEB66E2D740D2AB5B057BFFCC37EFEF8
          2507F63DF6D8239D986778C1CCDB1FD3F59931D80EDBB6BB33DD53AFBC4B5D33
          C746FCF69335ACD4DAEA556AA73D4FB0A7EEBDC02AEB3C4EBBF4269BE0FD37C3
          46F7FFD21AD76862952BAC992CF5B53AEAD4487294AEE52DBAEEDFBDF7A44F34
          E49618A5092A5921C46A2B1D18E94329B82EDA1FABED2B075744CA791A5E337E
          B74E6B6A362F5FD336D9FB9FC90A71E202EBD3B6A3BDFBD40D564B005620A63A
          58579EA5E17CB13C58C0DD4F3DE737ECE1DB6D6B0D05366F7FF55B0226D37EB5
          9EF50BC476188413ECA53B2EF5D9FE942BEF4B3EE7EE99F5BD1DB253177BE147
          C5DAF39E40FE8F0F1EB0FACCE2351ADB20AD5701B599B3273893BCF7C5876DA2
          0C545D6BAF2B706D6ED3460DB4CFBE7A49A05D603BED7D702293219965404381
          AB097C2C1CAE41FAA1D5D4B274D084B189FC306B84756E20C654AB8FFDA651FF
          EDBB4FF9A0066CF8D61C09712CD727ABB979C825141DF8ACFE76A0A48E820AF5
          ED8667BF48F45137BD29A473211467B29DB0FD9662EBE5242BFC9A2C65F5FECF
          EFBFE46CB546D5FA366CACF63A6DB81BB00A2A37B31B1F7B43A36AA440A2A296
          C05D758C663FBEF3B46DA541EE130FE7A6C612DE250401E18B7749C72E5F313D
          DE85F6F3878F3AE32A5BB5A10DD649C8EB54B1F563ADBB327E3DFEC8D3DE2F89
          C1719E40E0769F108EBDF476D7065D165830D8FABDF7A8952D5FCEB6D9ED0007
          4B075834653DF2BB49AC00273C41E1BF83AC65ABC6922BCAE95E28EF936DB2EC
          AE67EDD7DED546D2553A8667EFBAD8EAE8FD732FBFD6F7F1ED27EFE837EAD876
          BB1E92AC90524323FA65B24298E54CEEFD6F06DA5466B449BF5B8F7A628A757B
          F9FDC404DCAA4A81FDA22E9CA9A39C376BBA755B633DAB57BE95FD36F577F5F7
          38EB21E6DA548C72C2BCB1F208E964F525230D9EB240BFBFD09EB9F36CBFCEA7
          5C76ABF72D124B410DC055B981DF7FCE5759DC4F898C939CFF2C1E670FD08AA1
          9715546D61AFF41BAD5F967E3B63BCAD5D731DE9BD5DB5EFE9F6FCBD6738389F
          75F135C9751798F6FBE04D67AB9565CF70531ED75D292E915B6E7EFC7DED5F23
          62FE08FDD604BBE7A107ECB86B1FF1FBADA88AB0A5E0EA9DBAFAFFE5640184FE
          B963ECBFF7DF20A0828D55B372652ABA8659BFCA1A3675D40FB60B605286A594
          96935A5AC280BAF65CDFC691D843007DC056DB88F555B40FBEFD3D01CA29BFDA
          5ACDAADAAF30D7F993EDA5BBAED03EF144104B28D3C49E78FA65FDE6403B60C7
          EEF6E2B7E331BFE80F83D8403B6CC7DE3E580BF4FB05E5B5ECD3EFADBD4E1F1B
          336BA44D1113EBD5706D1F385395D065FAACE19E9E0F66C5F6E5CA34762DF10F
          1955128301E8C0DE7520B26AC3600A2A245A1D6CD835BD1ABD6C40BA24ECD50C
          8BB7D863B98AAEF596ADD5D27E9FB0C0ADCE2E09C0B8A7FD62FFD87963B19D46
          76DDD39F26C02480488C664C1D93ECC82D36D32451DEDEE93730055706D50479
          196C91D3F212E9A4AC35EBB39D8DE760270DB60D603435BBD8CF2C1F668F4B96
          A0921ECAF832560053BBAD0DD5F2DCE68EB6E7EFBE42EF713EF5EDBE479FD6C9
          8E547FAEADA56EE564A98B2CC0B96AD93C7BDA2C7BF0DEBB7C42A4315995295B
          C94EBEE26E29DC29B8A2654A8A682DC02F27D9A44C391938FD771B5AF9AA5AB2
          8BF1274636CE73B87DFDA5560DBA5FB6DB239DD83C547486B56DD4DAAA566E60
          6FF51BE03DFFCC7D573B8B77862F3969E6D449D6B2511BDD43F2B2F06539C758
          D32AD458D3864C1E2303DA445B5313D3875FFF92B06169EADD1B6A8550BDB3FD
          0A62CD1B2140EC91DC4B95B8A72AE83AD6B7BAE51AD9501929A7FE39CE3AC948
          D95C603BE3CF99D2637BDA9A65DBDBE0712A0A28B07BFEDE7FF9F19C7AC98D0E
          F6FB6F0FB836B737BE51E29E69236DAD86BAF69CB7182AF75539AD0E46D0E7B3
          FFB07F6CA77150694D7BF3DB513E412F9C31D1D6AAB996352BDB45FB9A63CFDD
          73BE9303FF7EF97AF6C8E3FFF5DC117BEFB09DCB4D100126A18A1A4B2D7A6C63
          63D5958FDF77AB1F8FEBCFDAE6B0CBEE4F565C45F8E29682EBEA8FAB7E849EB8
          C59F61D585DD4DB4CF3E7AC3C1D3B53631AAF73F1FE0B3ED8285936D0F0103E0
          E40353A0008CE0674A428C8374F3B0D4FAB85FFFE4C6983ED23A36A96B83C763
          64D12D3C7BB49871431F500532E2BCFFF9F76E20D867FBF5EDBD6F46244B5877
          B79AACC133C9F6DF615BFF1DD75CCB9677C0C6D0316FCE04197DBA59C3724D6D
          ECF8713A326EFA4962021A68721DF3412ADD132070B6E9D6DF70A39A63DD1A89
          297213EB26BFE4BC336CD79DF71073ED2400E5A0954065DA30D737CBEBFCD85F
          59F9D40E9E94F8D2C24CFD6FF6503B68C70DB58F9A76CB936FA73EB63057383D
          BF3ADDFEB1F926564FE0FCFE37BFA4320827A0B39C3342E7B64E0228156BD936
          7B1D925ACF758C937EB40D9AE81CAAB692912B61CFED9A36F47E40CF2D409FAD
          DECE8668C9EF139196C01D1A3772907FFFEB9F13ABF35CF5E98EDBA6BA32D7B1
          ACEDB0E7E13E297CF9E1EB099879AB6D5BED798C5F43FA36F10BC00B8155CC18
          EB2C2981E5AD1B9B04AE65F5BBE8EB390D5B5E00E79C7CB033E7BB1E7B3159C6
          BA86B3C02E3DE9089F40CEBCF4DA649532678C756AAA091B50A956C757044258
          19EBEA5879D72FE9EBBA6EB41AA4443868F8F575CD3FF9F2BBE4B8742FB56F58
          DBCAD66863BF8FE7DC05D9B386257D52A1AA9D72E115B6E796BB59830AD56CB4
          74EB2973C65BE7461DAD51D986366BCE4C7984F4149B6C2EBF68041BB347EEBC
          DCF5CD332EB9C9AFEB013B6CA03E6F20C01CA4E34FEED5D6CABD8A3E9A4C80E5
          6DD8045DBBD963ECC01D37D1B86868EF7C33C83D1A168AB976AFDF45D7BA99FA
          51F7C74C493D8D6AF87D5EAE6243FB58D7DFFB4C13C65E3B73CF301954B31DF6
          3A34BDE7CDFA7DFAA64FF209EBAF90AC24721A5472CBC55F29B82EDA1FABEDAB
          70C54A00368D805A98D8D9B90999D5611E09F00934187873F5B9322C81CA7C9E
          733371B79C24CE3FB931F42D0AFEF9BEF90CDD93F7B006A7DFC33A2FE3C64CDE
          D67B097801F4DA420C15B0F06A99C9D125473247C7C0DDAA9630536D8FD55A46
          16CF70A5F7C2ADCB594FBA9E763F470635EE5F2E186A17947BF6B34D96FE2CF3
          FC156BE134A987BFA38D62F9EAD2C002904F2E53E971F1C8B09DA530CCC48353
          07E769F016FA71BBAFA3333E7C7034746088DA86DF74C6CE5A7BBED07DEACFB2
          526B52ABD3DEBE57373B306134F268323D4D97CDD3FC82F19DA44F6732A6D9D4
          CF8AEDF53EDFD35A9EF7128B349D36DD5DE63827AE32BFEFE085EE99A8DB9A87
          C802A64FE68B224A6FF7D800ED1FED33E73A048A12DDA6EBC3F7DD452A65F62E
          3DD03FBA57F80CC6EFC11F7FB2BD14C7F41A998A4FDA5C04182DEB390EBD4FB0
          0AC7EAD74D1BA647E4920AC6BAB8B649B4958E513E62C9049F9E08D9C5F46A8E
          D8B3EF34F53A8B1BA8308083DFD576F15B0BA6F875E27E4E7C4BB92FF5C86448
          0E0A5757D91F465165814BAF43F22EEE594927785FFA04C7FDE8DD6933E83BEF
          637E73B29F13D78A63769D9B89DFFB92DF4C5CBEB8367E2D5D7E59F4AF145CFF
          D225ABE71B1144900CCA1414F4E89555C5461D50FCC688E62A5C3218D578858F
          AABB6BB9F77302B5FE47DE55BD4DB44EF2394BC6E439BFE7C1072C2F130756FF
          CC235BDC619337E4AFE91E8B09DBC81D4CEA6CEE9AA85AA16F2C4786CAC8F664
          D24A006D21F951DD1F3249499764710298F836835D656DD2FDE07AEF00EB0708
          40E27F1827948A9EDE17208EB64BB2BC6893246B57E2F89DA24C64CFA2C7387D
          9F37D2DFD6B6B30504B9894716EADFDE78D475406482267D76B53F1864748DFB
          66267D4917FAA179FF25E7459F07E8F0E80E7469DE048220BC1FFC20357095D6
          300E0F30617B2AEB26D73449BFE83910C41CDDA7D98131ED7B7E9B905E9F2592
          49D0EF93C22B94F355F51DF944925E572AE6EA3C1600D6F4546EBFC954E4C798
          82914FCEF42497C8BFAE9DB85F70E253CA4442C49B5F7D3E4ABF9FF8DD720594
          23D7C137C1AD387FFF49BF08DC03689C78F7C6E54D7C5FDD5F99BE4A2FF5FC99
          A980EFF7091FB0DF644266BFB3D547F30985667B47509E30B9E1879BBCE47813
          DD3FF931F7B648FB8CF34C64ABF4ABDCAB7A39490D43DD7C5874DE5F29B8FEA5
          4B56CF371657FD75F53CDAD2A32AED81D21E2805D7FF917BA0145CFF472E54E9
          6196F640DA03A5E0FA3F722B9482EBFFC8852A3DCCD21E2805D7D27BA0B4074A
          7BA0B407565C0FFC3FBAC7AA3252BEE1970000000049454E44AE426082}
        mmHeight = 20638
        mmLeft = 7938
        mmTop = 3969
        mmWidth = 50271
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 45508
      mmPrintPosition = 0
      object ppShape16: TppShape
        UserName = 'Shape10'
        mmHeight = 36777
        mmLeft = 265
        mmTop = 8731
        mmWidth = 284163
        BandType = 4
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 36777
        mmLeft = 147902
        mmTop = 8731
        mmWidth = 83873
        BandType = 4
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 36777
        mmLeft = 66940
        mmTop = 8731
        mmWidth = 81227
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape3'
        Brush.Color = cl3DLight
        mmHeight = 5027
        mmLeft = 265
        mmTop = 3969
        mmWidth = 284163
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape9'
        Brush.Color = cl3DLight
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 284163
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'cod_chamado'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3260
        mmLeft = 1588
        mmTop = 265
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'nome_cliente'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 2910
        mmLeft = 14817
        mmTop = 265
        mmWidth = 65617
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'desc_status'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 2879
        mmLeft = 82286
        mmTop = 265
        mmWidth = 43392
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'data_chamado'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3260
        mmLeft = 200819
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'data_final'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3260
        mmLeft = 224367
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'tempo_gasto'
        DataPipeline = pipe_report
        DisplayFormat = '###,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3260
        mmLeft = 267759
        mmTop = 265
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'desc_categoria'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 2910
        mmLeft = 127529
        mmTop = 265
        mmWidth = 48419
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'origem_chamado'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 2879
        mmLeft = 177271
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'prazo_fim_chamdo'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3260
        mmLeft = 246857
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppLine72: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 265
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine73: TppLine
        UserName = 'Line51'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 282576
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine74: TppLine
        UserName = 'Line56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 14023
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine75: TppLine
        UserName = 'Line59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 81227
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine76: TppLine
        UserName = 'Line60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 126207
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine77: TppLine
        UserName = 'Line61'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 176477
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine78: TppLine
        UserName = 'Line64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 198702
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine79: TppLine
        UserName = 'Line66'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 221986
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine80: TppLine
        UserName = 'Line68'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 246063
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine81: TppLine
        UserName = 'Line69'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 265642
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLabel70: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Report Visita'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 127265
        mmTop = 4233
        mmWidth = 21632
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'data_visita'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 20638
        mmWidth = 15610
        BandType = 4
      end
      object ppLabel71: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt.Visita'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 2910
        mmTop = 15610
        mmWidth = 12700
        BandType = 4
      end
      object ppLabel72: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Motivo Visita'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 67998
        mmTop = 10054
        mmWidth = 19600
        BandType = 4
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'detalhamento_motivo'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 28575
        mmLeft = 67998
        mmTop = 15081
        mmWidth = 79111
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Procedimento Adotado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 150284
        mmTop = 10054
        mmWidth = 34883
        BandType = 4
      end
      object ppDBMemo5: TppDBMemo
        UserName = 'DBMemo5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'tarefa_executada'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 28310
        mmLeft = 150284
        mmTop = 15346
        mmWidth = 80698
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tempo Gasto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 261673
        mmTop = 15610
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'tempo_gasto'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3260
        mmLeft = 264319
        mmTop = 20638
        mmWidth = 15610
        BandType = 4
      end
      object ppLine88: TppLine
        UserName = 'Line88'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 265
        mmTop = 4233
        mmWidth = 1852
        BandType = 4
      end
      object ppLine89: TppLine
        UserName = 'Line89'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 282576
        mmTop = 3969
        mmWidth = 1852
        BandType = 4
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        mmHeight = 36777
        mmLeft = 19050
        mmTop = 8731
        mmWidth = 48154
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Treinamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 10054
        mmWidth = 21696
        BandType = 4
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'D'#250'vidas Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 26988
        mmTop = 14817
        mmWidth = 26458
        BandType = 4
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Levantamento Dados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 20108
        mmTop = 19844
        mmWidth = 33338
        BandType = 4
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Outros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 37571
        mmTop = 24871
        mmWidth = 15875
        BandType = 4
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'An'#225'lise Operacional:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 29898
        mmWidth = 30956
        BandType = 4
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Config. Sistema:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 27252
        mmTop = 34925
        mmWidth = 26194
        BandType = 4
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'An'#225'lise Erro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 32279
        mmTop = 39688
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'motivo_treinamento'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3175
        mmLeft = 52917
        mmTop = 10319
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'motivo_duvidas_cliente'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3175
        mmLeft = 52917
        mmTop = 15081
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'motivo_levantamento_dados'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3175
        mmLeft = 52917
        mmTop = 20108
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'motivo_outros'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3175
        mmLeft = 52917
        mmTop = 25135
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'motivo_analise_oper'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3175
        mmLeft = 52917
        mmTop = 30163
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'motivo_config_sistema'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3175
        mmLeft = 52917
        mmTop = 35190
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'motivo_analise_erro'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3175
        mmLeft = 52917
        mmTop = 39952
        mmWidth = 8731
        BandType = 4
      end
      object ppShape20: TppShape
        UserName = 'Shape20'
        mmHeight = 36777
        mmLeft = 231511
        mmTop = 8731
        mmWidth = 28046
        BandType = 4
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Visitante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 238919
        mmTop = 15610
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'nome_usuario'
        DataPipeline = pipe_report
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3175
        mmLeft = 237596
        mmTop = 20638
        mmWidth = 15610
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 22225
      mmPrintPosition = 0
      object ppLine82: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 0
        mmWidth = 284163
        BandType = 8
      end
      object ppLabel73: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Tempo Gasto: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 212725
        mmTop = 1058
        mmWidth = 36513
        BandType = 8
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'tempo_gasto'
        DataPipeline = pipe_report
        DisplayFormat = '###,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pipe_report'
        mmHeight = 3810
        mmLeft = 254530
        mmTop = 1058
        mmWidth = 24606
        BandType = 8
      end
      object ppLine83: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 6085
        mmWidth = 284163
        BandType = 8
      end
      object ppLine84: TppLine
        UserName = 'Line52'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 265
        mmTop = 0
        mmWidth = 1588
        BandType = 8
      end
      object ppLine85: TppLine
        UserName = 'Line53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 282840
        mmTop = 0
        mmWidth = 1588
        BandType = 8
      end
      object ppLine86: TppLine
        UserName = 'Line54'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 207698
        mmTop = 0
        mmWidth = 1588
        BandType = 8
      end
      object ppLine87: TppLine
        UserName = 'Line55'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 252413
        mmTop = 0
        mmWidth = 1588
        BandType = 8
      end
      object ppShape17: TppShape
        UserName = 'Shape6'
        Brush.Color = cl3DLight
        mmHeight = 4763
        mmLeft = 265
        mmTop = 6085
        mmWidth = 284163
        BandType = 8
      end
      object ppLabel74: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CPA - Controle de Projetos e Atendimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 6615
        mmWidth = 80698
        BandType = 8
      end
    end
  end
end
