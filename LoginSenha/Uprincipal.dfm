object Form1: TForm1
  Left = 488
  Top = 316
  Width = 266
  Height = 185
  Caption = 'Login'
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblUsuario: TLabel
    Left = 19
    Top = 19
    Width = 50
    Height = 16
    Caption = 'Usu'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoBk
    Font.Height = 16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblSenha: TLabel
    Left = 19
    Top = 51
    Width = 42
    Height = 16
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoBk
    Font.Height = 16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edtUsuario: TEdit
    Left = 75
    Top = 19
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object edtSenha: TEdit
    Left = 75
    Top = 51
    Width = 137
    Height = 21
    Hint = 'CAPS LOCK ligado'
    ParentShowHint = False
    PasswordChar = '*'
    ShowHint = False
    TabOrder = 1
  end
  object btnEntrar: TButton
    Left = 66
    Top = 91
    Width = 75
    Height = 25
    Caption = 'Entrar'
    Default = True
    TabOrder = 2
    OnClick = btnEntrarClick
  end
  object btnCancelar: TButton
    Left = 146
    Top = 91
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 3
  end
  object ZConnection1: TZConnection
    Protocol = 'postgresql-8'
    HostName = '192.168.25.80'
    Port = 5432
    Database = 'programa'
    User = 'postgres'
    Password = 'dificil!@#$'
    Connected = True
    Left = 8
    Top = 104
  end
  object ZTable1: TZTable
    Connection = ZConnection1
    TableName = 'users'
    Left = 40
    Top = 104
  end
end
