object FmList: TFmList
  Left = 0
  Top = 0
  BorderIcons = []
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object imgTitle: TcxImage
    Left = 0
    Top = 0
    Align = alTop
    Picture.Data = {
      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000332
      0000006808060000002AC8C5210000000467414D410000B18F0BFC6105000000
      097048597300000EC400000EC401952B0E1B0000026449444154785EEDD72111
      85500000C1DF0CFB23E06880271F83A3D3C33304E08615AB2EC1FDA6FF390000
      004A8C0C00009063640000801C23030000E41819000020C7C800000039460600
      00C831320000408E91010000728C0C00009063640000801C23030000E4181900
      0020C7C80000003946060000C831320000408E91010000728C0C000090636400
      00801C23030000E41819000020C7C80000003946060000C831320000408E9101
      0000728C0C00009063640000801C23030000E41819000020C7C8000000394606
      0000C831320000408E91010000728C0C00009063640000801C23030000E41819
      000020C7C80000003946060000C831320000408E91010000728C0C0000906364
      0000801C23030000E41819000020C7C80000003946060000C831320000408E91
      010000728C0C00009063640000801C23030000E41819000020C7C80000003946
      060000C831320000408E91010000728C0C00009063640000801C23030000E418
      19000020C7C80000F07ACBB68F793D1E1BDF64640000783D13C39D9101000072
      8C0C00009063640000801C23030000E41819000020C7C80000003946060000C8
      31320000408E91010000728C0C00009063640000801C23030000E41819000020
      C7C80000003946060000C831320000408E91010000728C0C0000906364000080
      1C23030000E41819000020C7C80000003946060000C831320000408E91010000
      728C0C00009063640000801C23030000E41819000020C7C80000003946060000
      C831320000408E91010000728C0C00009063640000801C23030000E418190000
      20C7C80000003946060000C831320000408E9101000062CE7101948A3F8631A9
      F6DF0000000049454E44AE426082}
    Properties.FitMode = ifmStretch
    TabOrder = 1
    Height = 49
    Width = 649
  end
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object lblTitleMain: TcxLabel
    Left = 15
    Top = 11
    Caption = 'Principal'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWhite
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold, fsItalic]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object dbGrid: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 643
    Height = 375
    Align = alClient
    BorderStyle = cxcbsNone
    TabOrder = 3
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    object dbGridTVTblView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      FindPanel.ApplyInputDelay = 250
      FindPanel.DisplayMode = fpdmAlways
      FindPanel.InfoText = 'tecle Ctrl+F para pesquisar...'
      DataController.DataSource = dsList
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.DateFormat = 'dd/mm/yyyy'
      Filtering.ColumnFilteredItemsList = True
      Filtering.ColumnMRUItemsListCount = 8
      FilterRow.InfoText = 'Clique aqui para filtrar...'
      FilterRow.ApplyChanges = fracDelayed
      FilterRow.ApplyInputDelay = 500
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.NoDataToDisplayInfoText = '<Nenhum registro encontrado>'
      OptionsView.ColumnAutoWidth = True
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GridLines = glNone
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.Indicator = True
    end
    object dbGridLvlGridLevel: TcxGridLevel
      GridView = dbGridTVTblView
    end
  end
  object dsList: TDataSource
    AutoEdit = False
    DataSet = cdsList
    Left = 608
    Top = 200
  end
  object cdsList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 144
  end
end
