inherited FmRegCliente: TFmRegCliente
  Caption = 'FmRegCliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitleMain: TcxLabel
    Style.IsFontAssigned = True
  end
  inherited cxLabel1: TcxLabel
    Style.IsFontAssigned = True
  end
  inherited dxLayoutControl1: TdxLayoutControl
    ExplicitLeft = -416
    ExplicitTop = 437
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited cdsReg: TClientDataSet
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
end
