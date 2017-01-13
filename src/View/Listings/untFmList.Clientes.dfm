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
    object cdsListIdSexo: TIntegerField
      FieldName = 'IdSexo'
    end
    object cdsListIdFuncionario: TIntegerField
      FieldName = 'IdFuncionario'
    end
    object cdsListFuncionario: TStringField
      FieldName = 'Funcionario'
      Size = 280
    end
    object cdsListSexo: TStringField
      FieldName = 'Sexo'
      Size = 40
    end
  end
end
