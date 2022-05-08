object FAcesso: TFAcesso
  Left = 0
  Top = 0
  Caption = 'Tela de Login'
  ClientHeight = 273
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblLogin: TLabel
    Left = 104
    Top = 61
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object lblSenha: TLabel
    Left = 104
    Top = 107
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object edtLogin: TEdit
    Left = 104
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = edtLoginKeyPress
  end
  object edtSenha: TEdit
    Left = 104
    Top = 126
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = edtSenhaKeyPress
  end
  object btnlogin: TButton
    Left = 120
    Top = 153
    Width = 75
    Height = 25
    Caption = 'Logar'
    TabOrder = 2
    OnClick = btnloginClick
  end
end
