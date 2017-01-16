inherited FmRegCliente: TFmRegCliente
  Caption = 'Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitleMain: TcxLabel
    Caption = 'Cadastro de clientes'
    Style.IsFontAssigned = True
    ExplicitWidth = 150
  end
  inherited cxLabel1: TcxLabel
    Style.IsFontAssigned = True
  end
  inherited dxLayoutControl1: TdxLayoutControl
    object dbimgFoto: TcxDBImage [0]
      Left = 22
      Top = 39
      Enabled = False
      Style.HotTrack = False
      TabOrder = 0
      Height = 138
      Width = 107
    end
    object btnFoto: TcxButton [1]
      Left = 22
      Top = 184
      Width = 50
      Height = 20
      Caption = 'Foto'
      Enabled = False
      TabOrder = 1
    end
    object btnDeleteFoto: TcxButton [2]
      Left = 79
      Top = 184
      Width = 50
      Height = 20
      Caption = 'Excluir'
      Enabled = False
      TabOrder = 2
    end
    object dbtxtedtCodigo: TcxDBTextEdit [3]
      Left = 267
      Top = 39
      DataBinding.DataField = 'Codigo'
      DataBinding.DataSource = dsReg
      Enabled = False
      Style.HotTrack = False
      StyleDisabled.BorderColor = clBtnShadow
      TabOrder = 3
      Width = 63
    end
    object dbtxtedtNome: TcxDBTextEdit [4]
      Left = 376
      Top = 39
      DataBinding.DataField = 'Nome'
      DataBinding.DataSource = dsReg
      Style.HotTrack = False
      TabOrder = 4
      Width = 238
    end
    object dbmskedtCPF: TcxDBMaskEdit [5]
      Left = 267
      Top = 69
      DataBinding.DataField = 'Cpf'
      DataBinding.DataSource = dsReg
      Properties.EditMask = '999.999.999-99;0;_'
      Style.HotTrack = False
      TabOrder = 5
      Width = 126
    end
    object dbtxtedtRG: TcxDBTextEdit [6]
      Left = 423
      Top = 69
      DataBinding.DataField = 'Rg'
      DataBinding.DataSource = dsReg
      Style.HotTrack = False
      TabOrder = 6
      Width = 190
    end
    object dbdtedtDataNascimento: TcxDBDateEdit [7]
      Left = 267
      Top = 99
      DataBinding.DataField = 'DataNascimento'
      DataBinding.DataSource = dsReg
      Style.HotTrack = False
      TabOrder = 7
      Width = 128
    end
    object dblkpcbbSexo: TcxDBLookupComboBox [8]
      Left = 441
      Top = 99
      DataBinding.DataField = 'IdSexo'
      DataBinding.DataSource = dsReg
      Properties.KeyFieldNames = 'Id'
      Properties.ListColumns = <
        item
          FieldName = 'Descricao'
        end>
      Style.HotTrack = False
      TabOrder = 8
      Width = 166
    end
    object dblkpcbbFuncionario: TcxDBLookupComboBox [9]
      Left = 267
      Top = 129
      DataBinding.DataField = 'IdFunc'
      DataBinding.DataSource = dsReg
      Enabled = False
      Properties.KeyFieldNames = 'Id'
      Properties.ListColumns = <
        item
          FieldName = 'Nome'
        end>
      Style.HotTrack = False
      StyleDisabled.Color = clBtnFace
      TabOrder = 9
      Width = 283
    end
    object grdContato: TcxGrid [10]
      Left = 170
      Top = 201
      Width = 391
      Height = 140
      TabOrder = 10
      object grdContatoDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsMCont
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
      end
      object grdContatoLevel1: TcxGridLevel
        GridView = grdContatoDBTableView1
      end
    end
    object dbtxtedtNumeroEnde: TcxDBTextEdit [11]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Numero'
      DataBinding.DataSource = dsEnde
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Width = 67
    end
    object dbmskedtCEPende: TcxDBMaskEdit [12]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Cep'
      DataBinding.DataSource = dsEnde
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 76
    end
    object dbtxtedtLogradouroEnde: TcxDBTextEdit [13]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Logradouro'
      DataBinding.DataSource = dsEnde
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Width = 206
    end
    object dblkpcbbLocalidadeEnde: TcxDBLookupComboBox [14]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'IdLocalidade'
      DataBinding.DataSource = dsEnde
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 214
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Foto'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = dbimgFoto
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group11
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Visible = False
      Control = btnFoto
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = btnDeleteFoto
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Dados gerais'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group4
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'digo'
      Control = dbtxtedtCodigo
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Nome'
      Control = dbtxtedtNome
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group4
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahClient
      CaptionOptions.Text = 'CPF'
      Control = dbmskedtCPF
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahClient
      CaptionOptions.Text = 'RG'
      Control = dbtxtedtRG
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group4
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Data de nascimento'
      Control = dbdtedtDataNascimento
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Sexo'
      Control = dblkpcbbSexo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Funcion'#225'rio'
      Control = dblkpcbbFuncionario
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Contatos'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Visible = False
      Control = grdContato
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      AlignHorz = ahClient
      CaptionOptions.Text = 'Endere'#231'o'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Dados'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahClient
      CaptionOptions.Text = 'N'#250'mero'
      Control = dbtxtedtNumeroEnde
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahClient
      CaptionOptions.Text = 'CEP'
      Control = dbmskedtCEPende
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Logradouro'
      Control = dbtxtedtLogradouroEnde
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group5
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Localidade'
      Control = dblkpcbbLocalidadeEnde
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group12: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group5
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
  end
  inherited laylkaflRegistration: TdxLayoutLookAndFeelList
    Left = 576
    Top = 65528
  end
  inherited dsReg: TDataSource
    Left = 64
    Top = 328
  end
  inherited cdsReg: TClientDataSet
    PersistDataPacket.Data = {
      D20000009619E0BD010000001800000009000000000003000000D20002496404
      0001000000000006436F6469676F010049000000010005574944544802000200
      0A00044E6F6D65010049000000010005574944544802000200F0000C44617461
      436164617374726F04000600000000000E446174614E617363696D656E746F04
      0006000000000002526701004900000001000557494454480200020019000343
      70660100490000000100055749445448020002000B000649645365786F040001
      000000000006496446756E6304000100000000000000}
    Active = True
    Left = 64
    Top = 273
    object cdsRegId: TIntegerField
      FieldName = 'Id'
    end
    object cdsRegCodigo: TStringField
      FieldName = 'Codigo'
      Size = 10
    end
    object cdsRegNome: TStringField
      FieldName = 'Nome'
      Size = 240
    end
    object cdsRegDataCadastro: TDateField
      FieldName = 'DataCadastro'
    end
    object cdsRegDataNascimento: TDateField
      FieldName = 'DataNascimento'
    end
    object cdsRegRg: TStringField
      FieldName = 'Rg'
      Size = 25
    end
    object cdsRegCpf: TStringField
      FieldName = 'Cpf'
      Size = 11
    end
    object cdsRegIdSexo: TIntegerField
      FieldName = 'IdSexo'
    end
    object cdsRegIdFunc: TIntegerField
      FieldName = 'IdFunc'
    end
  end
  object dsEnde: TDataSource
    AutoEdit = False
    DataSet = DmRegistration.cdsEnde
    Left = 24
    Top = 328
  end
  object dsMCont: TDataSource
    AutoEdit = False
    DataSet = DmRegistration.cdsMCont
    Left = 104
    Top = 328
  end
end
