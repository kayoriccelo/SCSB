inherited FmRegContato: TFmRegContato
  Caption = 'Contatos'
  ClientHeight = 244
  ClientWidth = 403
  ExplicitWidth = 409
  ExplicitHeight = 273
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlButtons: TPanel
    Top = 206
    Width = 397
    inherited btnPost: TBitBtn
      Left = 237
    end
    inherited btnCancel: TBitBtn
      Left = 318
    end
  end
  inherited imgTitle: TcxImage
    Width = 403
  end
  inherited lblTitleMain: TcxLabel
    Caption = 'Cadastro de contatos'
    Style.IsFontAssigned = True
    ExplicitWidth = 157
  end
  inherited cxLabel1: TcxLabel
    Style.IsFontAssigned = True
  end
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 403
    Height = 154
    object dbtxtedtValor: TcxDBTextEdit [0]
      Left = 112
      Top = 69
      DataBinding.DataField = 'Valor'
      DataBinding.DataSource = dsReg
      Style.HotTrack = False
      TabOrder = 1
      Width = 267
    end
    object dblkpcbbTipoContato: TcxDBLookupComboBox [1]
      Left = 112
      Top = 39
      DataBinding.DataField = 'IdTipoContato'
      DataBinding.DataSource = dsReg
      Properties.KeyFieldNames = 'Id'
      Properties.ListColumns = <
        item
          FieldName = 'Descricao'
        end>
      Properties.ListSource = DmRegistration.dsTipoContato
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object dbchkbxEhPrincipal: TcxDBCheckBox [2]
      Left = 112
      Top = 99
      DataBinding.DataField = 'EhPrincipal'
      DataBinding.DataSource = dsReg
      Style.HotTrack = False
      TabOrder = 2
      Width = 21
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      Index = -1
    end
    object laygrpDadosGerais: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'Dados gerais'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = laygrpDadosGerais
      CaptionOptions.Text = 'Valor'
      Control = dbtxtedtValor
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = laygrpDadosGerais
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tipo de contato'
      Control = dblkpcbbTipoContato
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = laygrpDadosGerais
      AlignHorz = ahLeft
      CaptionOptions.Text = #201' principal'
      Control = dbchkbxEhPrincipal
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited laylkaflRegistration: TdxLayoutLookAndFeelList
    Left = 384
    Top = 0
  end
  inherited dsReg: TDataSource
    Left = 88
    Top = 184
  end
  inherited cdsReg: TClientDataSet
    Left = 144
    Top = 185
    object cdsRegId: TIntegerField
      FieldName = 'Id'
    end
    object cdsRegEhPrincipal: TBooleanField
      FieldName = 'EhPrincipal'
    end
    object cdsRegValor: TStringField
      FieldName = 'Valor'
      Size = 140
    end
    object cdsRegIdTipoContato: TIntegerField
      FieldName = 'IdTipoContato'
    end
  end
  object dsTipoContato: TDataSource
    AutoEdit = False
    DataSet = DmRegistration.cdsTipoContato
    Left = 32
    Top = 186
  end
end
