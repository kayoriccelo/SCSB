object FmList: TFmList
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Listagem'
  ClientHeight = 471
  ClientWidth = 649
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 433
    Width = 643
    Height = 35
    Align = alBottom
    TabOrder = 0
    object btnClose: TcxButton
      AlignWithMargins = True
      Left = 564
      Top = 4
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 0
      ExplicitLeft = 352
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object btnInsert: TcxButton
      AlignWithMargins = True
      Left = 321
      Top = 4
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Novo'
      TabOrder = 1
      ExplicitLeft = 352
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object btnUpdate: TcxButton
      AlignWithMargins = True
      Left = 402
      Top = 4
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Alterar'
      TabOrder = 2
      ExplicitLeft = 352
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object btnDelete: TcxButton
      AlignWithMargins = True
      Left = 483
      Top = 4
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Excluir'
      TabOrder = 3
      ExplicitLeft = 352
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object grdList: TcxGrid
    Left = 0
    Top = 41
    Width = 649
    Height = 389
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 136
    ExplicitTop = 168
    ExplicitWidth = 250
    ExplicitHeight = 200
    object grdListDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object grdListLevel1: TcxGridLevel
      GridView = grdListDBTableView1
    end
  end
  object imgTitle: TcxImage
    Left = 0
    Top = 0
    Align = alTop
    TabOrder = 2
    Height = 41
    Width = 649
  end
  object qryList: TFDQuery
    Left = 464
    Top = 112
  end
  object dsList: TDataSource
    AutoEdit = False
    DataSet = qryList
    Left = 464
    Top = 160
  end
end
