object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 456
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 609
    Height = 456
    Align = alClient
    DataSource = ds
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object con: TFDConnection
    Params.Strings = (
      'ConnectionDef=EMPLOYEE')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 16
  end
  object qry: TFDQuery
    Connection = con
    SQL.Strings = (
      'select * from customer')
    Left = 144
    Top = 24
  end
  object ds: TDataSource
    DataSet = qry
    Left = 224
    Top = 40
  end
  object cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 112
  end
  object alerter: TFDEventAlerter
    Active = True
    Connection = con
    Names.Strings = (
      'CUSTOMER')
    Options.Kind = 'eVENTS'
    Options.Timeout = 10000
    OnAlert = alerterAlert
    Left = 320
    Top = 24
  end
end
