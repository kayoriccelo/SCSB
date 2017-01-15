inherited FmListClientes: TFmListClientes
  Caption = 'Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitleMain: TcxLabel
    Caption = 'Listagem de clientes'
    Style.IsFontAssigned = True
    ExplicitWidth = 152
  end
  inherited dbGrid: TcxGrid
    Font.Charset = ANSI_CHARSET
    Font.Name = 'Segoe UI'
    ParentFont = False
    ExplicitLeft = -2
    inherited dbGridTVTblView: TcxGridDBTableView
      object dbGridTVTblViewId: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
        Visible = False
      end
      object dbGridTVTblViewCodigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Width = 50
      end
      object dbGridTVTblViewCpf: TcxGridDBColumn
        DataBinding.FieldName = 'Cpf'
        Width = 100
      end
      object dbGridTVTblViewNome: TcxGridDBColumn
        DataBinding.FieldName = 'Nome'
        Width = 300
      end
      object dbGridTVTblViewDataCadastro: TcxGridDBColumn
        DataBinding.FieldName = 'DataCadastro'
        Visible = False
      end
      object dbGridTVTblViewDataNascimento: TcxGridDBColumn
        Caption = 'Data de nascimento'
        DataBinding.FieldName = 'DataNascimento'
        Width = 120
      end
      object dbGridTVTblViewRg: TcxGridDBColumn
        DataBinding.FieldName = 'Rg'
        Visible = False
      end
      object dbGridTVTblViewIdSexo: TcxGridDBColumn
        DataBinding.FieldName = 'IdSexo'
        Visible = False
      end
      object dbGridTVTblViewIdFuncionario: TcxGridDBColumn
        DataBinding.FieldName = 'IdFuncionario'
        Visible = False
      end
      object dbGridTVTblViewFuncionario: TcxGridDBColumn
        DataBinding.FieldName = 'Funcionario'
        Visible = False
      end
      object dbGridTVTblViewSexo: TcxGridDBColumn
        DataBinding.FieldName = 'Sexo'
        Visible = False
      end
    end
  end
  inherited cdsList: TClientDataSet
    PersistDataPacket.Data = {
      310100009619E0BD01000000180000000B000000000003000000310102496404
      0001000000000006436F6469676F010049000000010005574944544802000200
      1400044E6F6D6502004900000001000557494454480200020018010C44617461
      436164617374726F08000800000000000E446174614E617363696D656E746F08
      0008000000000002526701004900000001000557494454480200020019000343
      70660100490000000100055749445448020002000B000A436F6469676F536578
      6F0100490000000100055749445448020002000A000D44657363726963616F53
      65786F01004900000001000557494454480200020028000A436F6469676F4675
      6E630100490000000100055749445448020002000A00084E6F6D6546756E6301
      0049000000010005574944544802000200F0000000}
    Active = True
    object cdsListId: TIntegerField
      FieldName = 'Id'
    end
    object cdsListCodigo: TStringField
      FieldName = 'Codigo'
    end
    object cdsListNome: TStringField
      FieldName = 'Nome'
      Size = 280
    end
    object cdsListDataCadastro: TDateTimeField
      FieldName = 'DataCadastro'
    end
    object cdsListDataNascimento: TDateTimeField
      FieldName = 'DataNascimento'
    end
    object cdsListRg: TStringField
      FieldName = 'Rg'
      Size = 25
    end
    object cdsListCpf: TStringField
      FieldName = 'Cpf'
      Size = 11
    end
    object cdsListCodigoSexo: TStringField
      FieldName = 'CodigoSexo'
      Size = 10
    end
    object cdsListDescricaoSexo: TStringField
      FieldName = 'DescricaoSexo'
      Size = 40
    end
    object cdsListCodigoFunc: TStringField
      FieldName = 'CodigoFunc'
      Size = 10
    end
    object cdsListNomeFunc: TStringField
      FieldName = 'NomeFunc'
      Size = 240
    end
  end
end
