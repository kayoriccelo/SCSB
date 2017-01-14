object FmMain: TFmMain
  Left = 0
  Top = 0
  Caption = 'SCSB - Sistema de controle de sal'#227'o de beleza'
  ClientHeight = 461
  ClientWidth = 688
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 320
    Top = 248
    Width = 75
    Height = 25
    Caption = 'cxButton1'
    TabOrder = 0
    OnClick = cxButton1Click
  end
end
