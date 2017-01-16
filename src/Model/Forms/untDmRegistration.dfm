object DmRegistration: TDmRegistration
  OldCreateOrder = False
  Height = 426
  Width = 602
  object cdsSexo: TClientDataSet
    PersistDataPacket.Data = {
      430000009619E0BD010000001800000002000000000003000000430002496404
      000100000000000944657363726963616F010049000000010005574944544802
      00020028000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 19
    Top = 9
    object cdsSexoId: TIntegerField
      FieldName = 'Id'
    end
    object cdsSexoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
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
    Left = 80
    Top = 9
    object cdsFuncId: TIntegerField
      FieldName = 'Id'
    end
    object cdsFuncNome: TStringField
      FieldName = 'Nome'
      Size = 240
    end
  end
  object cdsLocali: TClientDataSet
    PersistDataPacket.Data = {
      6F0000009619E0BD0100000018000000040000000000030000006F0002496404
      0001000000000006436F6469676F010049000000010005574944544802000200
      0A000944657363726963616F010049000000010005574944544802000200F000
      08496443696461646504000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 9
    object cdsLocaliId: TIntegerField
      FieldName = 'Id'
    end
    object cdsLocaliCodigo: TStringField
      FieldName = 'Codigo'
      Size = 10
    end
    object cdsLocaliDescricao: TStringField
      FieldName = 'Descricao'
      Size = 240
    end
    object cdsLocaliIdCidade: TIntegerField
      FieldName = 'IdCidade'
    end
  end
  object cdsEnde: TClientDataSet
    PersistDataPacket.Data = {
      8C0000009619E0BD0100000018000000050000000000030000008C0002496404
      000100000000000343657001004900000001000557494454480200020014000A
      4C6F677261646F75726F010049000000010005574944544802000200F000064E
      756D65726F01004900000001000557494454480200020014000C49644C6F6361
      6C696461646504000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 253
    Top = 9
    object cdsEndeId: TIntegerField
      FieldName = 'Id'
    end
    object cdsEndeCep: TStringField
      FieldName = 'Cep'
    end
    object cdsEndeLogradouro: TStringField
      FieldName = 'Logradouro'
      Size = 240
    end
    object cdsEndeNumero: TStringField
      FieldName = 'Numero'
    end
    object cdsEndeIdLocalidade: TIntegerField
      FieldName = 'IdLocalidade'
    end
  end
  object cdsMCont: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 9
    object cdsMContId: TIntegerField
      FieldName = 'Id'
    end
    object cdsMContIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object cdsMContIdContato: TIntegerField
      FieldName = 'IdContato'
    end
    object cdsMContEhPrincipal: TBooleanField
      FieldName = 'EhPrincipal'
    end
    object cdsMContValor: TStringField
      FieldName = 'Valor'
      Size = 140
    end
  end
  object dsSexo: TDataSource
    AutoEdit = False
    DataSet = cdsSexo
    Left = 16
    Top = 74
  end
  object dsFunc: TDataSource
    AutoEdit = False
    DataSet = cdsFunc
    Left = 80
    Top = 74
  end
  object dsMCont: TDataSource
    AutoEdit = False
    DataSet = cdsMCont
    Left = 194
    Top = 74
  end
  object dsEnde: TDataSource
    AutoEdit = False
    DataSet = cdsEnde
    Left = 256
    Top = 74
  end
  object dsLocali: TDataSource
    AutoEdit = False
    DataSet = cdsLocali
    Left = 136
    Top = 74
  end
end
