object DmConnection: TDmConnection
  OldCreateOrder = False
  Height = 239
  Width = 342
  object ConnectionSCSB: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=localhost:C:\SCA\bd\SCA.FDB'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 248
    Top = 8
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 256
    Top = 112
  end
end
