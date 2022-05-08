object FConsulta: TFConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 607
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GBConsulta: TGroupBox
    Left = 8
    Top = 8
    Width = 802
    Height = 377
    Caption = 'Consulta'
    TabOrder = 0
    object lblCampoparabusca: TLabel
      Left = 11
      Top = 41
      Width = 107
      Height = 16
      Caption = 'Campo para busca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblAlterarcampobusca: TLabel
      Left = 162
      Top = 63
      Width = 163
      Height = 16
      Caption = 'Alterar campo de busca - F2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblInfo: TLabel
      Left = 11
      Top = 343
      Width = 297
      Height = 13
      Caption = '*Alt + Q para consultar o estoque de produto em outras filiais'
    end
    object CBFiltro: TComboBox
      Left = 11
      Top = 60
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object CBBuscaParcial: TCheckBox
      Left = 344
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Busca Parcial'
      TabOrder = 1
    end
    object CBBuscatodosprodutos: TCheckBox
      Left = 344
      Top = 39
      Width = 153
      Height = 17
      Caption = 'Busca de todos os produtos'
      TabOrder = 2
    end
    object CBTodososcampos: TCheckBox
      Left = 344
      Top = 62
      Width = 97
      Height = 17
      Caption = 'Todos os campos'
      TabOrder = 3
      OnClick = CBTodososcamposClick
    end
    object CBSaircomesc: TCheckBox
      Left = 495
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Sair com ESC'
      TabOrder = 4
    end
    object CBManterfoco: TCheckBox
      Left = 495
      Top = 39
      Width = 130
      Height = 17
      Caption = 'Manter o foco na busca'
      TabOrder = 5
    end
    object CBMostrarfoto: TCheckBox
      Left = 495
      Top = 62
      Width = 138
      Height = 17
      Caption = 'Mostrar foto do produto'
      TabOrder = 6
    end
    object btnAcessorestrito: TButton
      Left = 653
      Top = 12
      Width = 113
      Height = 25
      Caption = 'Acesso restrito - F5'
      TabOrder = 7
      OnClick = btnAcessorestritoClick
    end
    object edtBusca: TEdit
      Left = 11
      Top = 85
      Width = 774
      Height = 66
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      TextHint = 'INFORME A BUSCA - F3'
      OnKeyPress = edtBuscaKeyPress
    end
    object DbDadosconsulta: TDBGrid
      Left = 11
      Top = 157
      Width = 777
      Height = 180
      DataSource = DataM.DTSConsulta
      ReadOnly = True
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object gbDetalhes: TGroupBox
    Left = 8
    Top = 391
    Width = 802
    Height = 191
    BiDiMode = bdLeftToRight
    Caption = 'Detalhes do produto selecionado'
    ParentBiDiMode = False
    TabOrder = 1
    object lblDescricaoproduto: TLabel
      Left = 11
      Top = 24
      Width = 121
      Height = 16
      Caption = 'Descri'#231#227'o do produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblproduto: TLabel
      Left = 11
      Top = 43
      Width = 3
      Height = 13
    end
    object lblPrecovenda: TLabel
      Left = 22
      Top = 88
      Width = 88
      Height = 16
      Caption = 'Pre'#231'o de venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblPrecoRevenda: TLabel
      Left = 182
      Top = 88
      Width = 103
      Height = 16
      Caption = 'Pre'#231'o de Revenda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblQtdedisponivel: TLabel
      Left = 388
      Top = 88
      Width = 125
      Height = 16
      Caption = 'Quantidade dispon'#237'vel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblQuantidadereservada: TLabel
      Left = 612
      Top = 88
      Width = 126
      Height = 16
      Caption = 'Quantidade reservada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbedtDescricaoproduto: TDBEdit
      Left = 11
      Top = 41
      Width = 777
      Height = 41
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clMenu
      Ctl3D = True
      DataField = 'PRODUTO'
      DataSource = DataM.DTSConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object dbedtPrecovenda: TDBEdit
      Left = 3
      Top = 110
      Width = 107
      Height = 41
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clMenu
      DataField = 'PRECOVENDA'
      DataSource = DataM.DTSConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object dbedtPrecorevenda: TDBEdit
      Left = 164
      Top = 110
      Width = 121
      Height = 38
      BorderStyle = bsNone
      Color = clMenuBar
      DataField = 'PRECOREVENDA'
      DataSource = DataM.DTSConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object dbedtQuantidadedisponivel: TDBEdit
      Left = 436
      Top = 110
      Width = 77
      Height = 38
      BiDiMode = bdRightToLeftReadingOnly
      BorderStyle = bsNone
      Color = clMenuBar
      DataField = 'QTDE'
      DataSource = DataM.DTSConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object dbedtQuantidadeReservada: TDBEdit
      Left = 640
      Top = 110
      Width = 98
      Height = 33
      BorderStyle = bsNone
      Color = clMenuBar
      DataField = 'QTDERESERVADA'
      DataSource = DataM.DTSConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object btnConsultaestoque: TButton
      Left = 653
      Top = 160
      Width = 105
      Height = 28
      Caption = 'Consulta de lotes'
      TabOrder = 5
      OnClick = btnConsultaestoqueClick
    end
    object btnGravaralteracao: TButton
      Left = 663
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Gravar - F8'
      TabOrder = 6
      Visible = False
      OnClick = btnGravaralteracaoClick
    end
  end
end
