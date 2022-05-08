object FConsultalote: TFConsultalote
  Left = 0
  Top = 0
  Caption = 'Consulta de Lote'
  ClientHeight = 508
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbConsultaLote: TGroupBox
    Left = 8
    Top = 8
    Width = 592
    Height = 492
    Caption = 'Busca de Lote'
    TabOrder = 0
    object lblCampoLote: TLabel
      Left = 56
      Top = 418
      Width = 107
      Height = 13
      Caption = 'Campo a ser buscado:'
    end
    object lblFiltroLote: TLabel
      Left = 231
      Top = 440
      Width = 82
      Height = 13
      Caption = 'Altera Busca - F2'
    end
    object lblBuscaLote: TLabel
      Left = 231
      Top = 464
      Width = 78
      Height = 13
      Caption = 'Nova busca - F3'
    end
    object dbgBuscaLote: TDBGrid
      Left = 16
      Top = 16
      Width = 553
      Height = 396
      DataSource = DataM.DTSLote
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object edtBuscaLote: TEdit
      Left = 56
      Top = 460
      Width = 153
      Height = 21
      TabOrder = 1
      OnKeyPress = edtBuscaLoteKeyPress
    end
    object btnSair: TButton
      Left = 494
      Top = 452
      Width = 75
      Height = 25
      Caption = 'Sair - F8'
      TabOrder = 2
      OnClick = btnSairClick
    end
    object cbfiltrolote: TComboBox
      Left = 56
      Top = 437
      Width = 169
      Height = 21
      TabOrder = 3
    end
  end
end
