object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 537
  Width = 718
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\DEV\DBTestes\CLIPPAmmes.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=Localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 56
    Top = 104
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 176
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Windows\System32\FBCLIENT.DLL'
    Left = 56
    Top = 240
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 480
    Top = 168
    object ClientDataSet1ID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object ClientDataSet1CNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object ClientDataSet1DESCRICAO: TStringField
      DisplayLabel = 'Convenio'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 480
    Top = 104
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  cli.id_cliente, '
      '  cli.nome, '
      '  pj.CNPJ, '
      '  con.DESCRICAO '
      'FROM '
      '  TB_CLIENTE cli'
      '  LEFT JOIN TB_CLI_PJ pj ON cli.id_cliente = pj.id_cliente'
      
        '  LEFT JOIN TB_CLI_CONVENIO con ON cli.ID_CONVENIO = con.ID_CONV' +
        'ENIO;')
    Left = 476
    Top = 48
  end
end
