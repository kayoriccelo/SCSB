object FmMain: TFmMain
  Left = 0
  Top = 0
  Caption = 'SCSB - Sistema de controle de sal'#227'o de beleza'
  ClientHeight = 512
  ClientWidth = 811
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
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 811
    Height = 122
    BarManager = dxBarManager1
    ColorSchemeName = 'Metropolis'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Menu'
      Groups = <
        item
          Caption = 'Cadastros'
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 492
    Width = 811
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitLeft = 328
    ExplicitTop = 88
    ExplicitWidth = 0
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 208
    Top = 312
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Clientes'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 330
      FloatTop = 337
      FloatClientWidth = 51
      FloatClientHeight = 24
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Clientes'
      Category = 0
      Hint = 'Clientes'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Metropolis'
    Left = 368
    Top = 216
  end
end
