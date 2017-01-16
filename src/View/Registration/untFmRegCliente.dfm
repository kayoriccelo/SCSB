inherited FmRegCliente: TFmRegCliente
  Caption = 'Cadastro de clientes'
  OnCreate = FormCreate
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
    object dbtxtedtRG: TcxDBTextEdit [0]
      Left = 423
      Top = 69
      DataBinding.DataField = 'Rg'
      DataBinding.DataSource = dsReg
      Style.HotTrack = False
      TabOrder = 6
      Width = 190
    end
    object dbtxtedtCodigo: TcxDBTextEdit [1]
      Left = 267
      Top = 39
      DataBinding.DataField = 'Codigo'
      DataBinding.DataSource = dsReg
      Style.HotTrack = False
      StyleDisabled.BorderColor = clBtnShadow
      TabOrder = 3
      Width = 63
    end
    object dbtxtedtNome: TcxDBTextEdit [2]
      Left = 376
      Top = 39
      DataBinding.DataField = 'Nome'
      DataBinding.DataSource = dsReg
      Style.HotTrack = False
      TabOrder = 4
      Width = 238
    end
    object dbmskedtCPF: TcxDBMaskEdit [3]
      Left = 267
      Top = 69
      DataBinding.DataField = 'Cpf'
      DataBinding.DataSource = dsReg
      Properties.EditMask = '999.999.999-99;0;_'
      Style.HotTrack = False
      TabOrder = 5
      Width = 126
    end
    object dblkpcbbSexo: TcxDBLookupComboBox [4]
      Left = 441
      Top = 99
      DataBinding.DataField = 'IdSexo'
      DataBinding.DataSource = dsReg
      Properties.KeyFieldNames = 'Id'
      Properties.ListColumns = <
        item
          FieldName = 'Descricao'
        end>
      Properties.ListSource = dsSexo
      Style.HotTrack = False
      TabOrder = 8
      Width = 166
    end
    object dbimgFoto: TcxDBImage [5]
      Left = 22
      Top = 39
      Enabled = False
      Style.HotTrack = False
      TabOrder = 0
      Height = 138
      Width = 107
    end
    object dblkpcbbFuncionario: TcxDBLookupComboBox [6]
      Left = 267
      Top = 129
      DataBinding.DataField = 'IdFunc'
      DataBinding.DataSource = dsReg
      Properties.KeyFieldNames = 'Id'
      Properties.ListColumns = <
        item
          FieldName = 'Nome'
        end>
      Properties.ListSource = dsFunc
      Style.HotTrack = False
      TabOrder = 9
      Width = 283
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
    object btnDeleteFoto: TcxButton [8]
      Left = 79
      Top = 184
      Width = 50
      Height = 25
      Caption = 'Excluir'
      Enabled = False
      TabOrder = 2
    end
    object btnFoto: TcxButton [9]
      Left = 22
      Top = 184
      Width = 50
      Height = 25
      Caption = 'Foto'
      Enabled = False
      TabOrder = 1
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Dados gerais'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahClient
      CaptionOptions.Text = 'RG'
      Control = dbtxtedtRG
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'digo'
      Control = dbtxtedtCodigo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Nome'
      Control = dbtxtedtNome
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group4
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
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
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Sexo'
      Control = dblkpcbbSexo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Foto'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Visible = False
      Control = dbimgFoto
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Funcion'#225'rio'
      Control = dblkpcbbFuncionario
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Data de nascimento'
      Control = dbdtedtDataNascimento
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group4
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
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
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Visible = False
      Control = btnFoto
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group5
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
  end
  inherited laylkaflRegistration: TdxLayoutLookAndFeelList
    Top = 224
  end
  inherited dsReg: TDataSource
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
  object cdsFunc: TClientDataSet
    PersistDataPacket.Data = {
      3E0000009619E0BD0100000018000000020000000000030000003E0002496404
      00010000000000044E6F6D65010049000000010005574944544802000200F000
      0000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 273
    object cdsFuncId: TIntegerField
      FieldName = 'Id'
    end
    object cdsFuncNome: TStringField
      FieldName = 'Nome'
      Size = 240
    end
  end
  object cdsSexo: TClientDataSet
    PersistDataPacket.Data = {
      430000009619E0BD010000001800000002000000000003000000430002496404
      000100000000000944657363726963616F010049000000010005574944544802
      00020028000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 273
    object cdsSexoId: TIntegerField
      FieldName = 'Id'
    end
    object cdsSexoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
  end
  object dsSexo: TDataSource
    AutoEdit = False
    DataSet = cdsSexo
    Left = 432
    Top = 328
  end
  object dsFunc: TDataSource
    AutoEdit = False
    DataSet = cdsFunc
    Left = 512
    Top = 328
  end
end
