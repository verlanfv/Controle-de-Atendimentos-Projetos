object frmInfoEmailMov: TfrmInfoEmailMov
  Left = 596
  Top = 290
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Info E-mail de movimenta'#231#227'o'
  ClientHeight = 326
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 171
    Height = 13
    Caption = 'Informa'#231#227'o da movimenta'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mmoInfoMovimentacao: TMemo
    Left = 8
    Top = 29
    Width = 409
    Height = 140
    Hint = 
      'A descri'#231#227'o do procedimento adotado ser'#225' inclu'#237'do no e-mail '#13#10'de' +
      ' finaliza'#231#227'o do atendimento.'
    ParentShowHint = False
    ScrollBars = ssVertical
    ShowHint = True
    TabOrder = 0
    OnKeyPress = mmoInfoMovimentacaoKeyPress
  end
  object edtCaminho: TEdit
    Left = 8
    Top = 223
    Width = 361
    Height = 21
    TabStop = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 376
    Top = 219
    Width = 41
    Height = 25
    Caption = '...'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object btnIncluir: TBitBtn
    Left = 137
    Top = 268
    Width = 143
    Height = 41
    Cursor = crHandPoint
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = btnIncluirClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFAB8179B3897BB3897BB3897BB3897BB3897BB3897BB3
      897BB3897BB3897BB3897BB3897BB3897BFF00FFFF00FFFF00FFAE837AF8E7CD
      F7E5C8F6E3C4F6E0BFF5DFBAF4DDB6F4DBB2F2D8AEF2D6A9F1D5A6F1D3A3B389
      7BFF00FFFF00FFFF00FFB1867BF8EAD3F8E8CFF7E5CAF6E4C4F5E1C0F5DFBCF4
      DDB7F4DAB3F3D8AEF3D7AAF2D5A6B3897BFF00FFFF00FFFF00FFB5887BF9ECD9
      F8EBD4F7E8CFF7E6CAF6E3C5F6E1C1F6DFBDF4DDB8F3DCB3F3D9AFF3D7ABB389
      7BFF00FFFF00FFFF00FFB98B7CFAEFDEDF993EDF993EDF993EDF993EDF993EDF
      993EDF993EDF993EDF993EF3DAB0B3897BFF00FFFF00FFFF00FFBD8F7DFBF2E3
      FBF0DFFAEEDB0099CC0099CC0099CC0099CC0099CC0099CC0099CC0099CC0099
      CC0099CC0099CC0099CCC1917EFBF4E9DF993EDF993E0099CCC2FFFEAFFFFEA1
      FFFE9AFFFE99FCFE99FAFE99F6FE99F3FF99F1FF99F0FF0099CCC5957EFDF6ED
      FCF4EAFBF3E50099CCCEFFFEBBFFFEAAFFFE92EDEC99FEFE99FCFE99F8FE99F5
      FF99F2FE99F0FE0099CCCA987FFDF9F1DF993EDF993E0099CCDAFFFEC2FAF99E
      E0DF84CDCC9BFFFE99FEFE99FBFE99F7FF99F4FF99F1FF0099CCCE9B80FDFAF6
      FDF9F3FDF7EF0099CCE6FFFFA0C1C19ACDCCA6F5F59FFFFE99FEFE99FCFE99F9
      FE99F7FF99F3FE0099CCD19E81FEFCFADF993EDF993E0099CCEFFFFE5B67677B
      9A9AB8FFFEA7FFFE9BFFFE98FEFE99FBFE99F8FE99F5FF0099CCD5A081FEFDFC
      FEFCF9FEFBF70099CCF7FFFEC5D7D70E108D06089BB2FFFFA2FFFE9AFFFE99FD
      FE99FAFE99F7FE0099CCD8A282FFFFFFFFFEFDFEFDFB0099CC0099CC0099CC11
      24B13252DF0000000099CC0099CC0099CC0099CC0099CC0099CCDAA482FFFFFF
      FFFFFFFFFFFDFFFDFBFEFCF8FEFAF4FDF9F25C5AB93D3CADFCF3E5FAF1E1B389
      7BFF00FFFF00FFFF00FFDAA482DAA482DAA482DAA482DAA482DAA482DAA482DA
      A482DAA482DAA482DAA482DAA482DAA482FF00FFFF00FFFF00FF}
  end
  object OpenDialog1: TOpenDialog
    Left = 336
    Top = 274
  end
  object IdEnvioCli: TIdSMTP
    SASLMechanisms = <>
    Left = 340
    Top = 148
  end
  object IdMsg: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 372
    Top = 148
  end
end