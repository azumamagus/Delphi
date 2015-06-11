object Form2: TForm2
  Left = 364
  Top = 258
  Width = 820
  Height = 364
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 288
    Top = 80
    Width = 320
    Height = 120
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dbedtnome: TDBEdit
    Left = 288
    Top = 232
    Width = 121
    Height = 21
    DataField = 'nome'
    DataSource = ds1
    TabOrder = 1
  end
  object dbnvgr1: TDBNavigator
    Left = 272
    Top = 264
    Width = 240
    Height = 25
    DataSource = ds1
    TabOrder = 2
  end
  object ZConnection1: TZConnection
    Protocol = 'postgresql-8'
    HostName = 'localhost'
    Port = 5432
    Database = 'itai'
    User = 'postgres'
    Password = 'dificil!@#$'
    Connected = True
    Left = 48
    Top = 88
  end
  object zqryrel1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from usuarios')
    Params = <>
    Left = 88
    Top = 88
  end
  object ds1: TDataSource
    DataSet = zqryrel1
    Left = 128
    Top = 88
  end
end
