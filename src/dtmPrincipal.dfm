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
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT ID_CLIENTE, ID_CONVENIO, DT_CADASTRO, NOME, CONTATO, DDD_' +
        'COMER, FONE_COMER, DDD_CELUL, FONE_CELUL'
      'FROM TB_CLIENTE'
      'WHERE ID_CONVENIO IS NOT NULL;')
    Left = 480
    Top = 48
    object FDQuery1ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1ID_CONVENIO: TSmallintField
      FieldName = 'ID_CONVENIO'
      Origin = 'ID_CONVENIO'
    end
    object FDQuery1DT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object FDQuery1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object FDQuery1CONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 35
    end
    object FDQuery1DDD_COMER: TStringField
      FieldName = 'DDD_COMER'
      Origin = 'DDD_COMER'
      FixedChar = True
      Size = 2
    end
    object FDQuery1FONE_COMER: TStringField
      FieldName = 'FONE_COMER'
      Origin = 'FONE_COMER'
      Size = 13
    end
    object FDQuery1DDD_CELUL: TStringField
      FieldName = 'DDD_CELUL'
      Origin = 'DDD_CELUL'
      FixedChar = True
      Size = 2
    end
    object FDQuery1FONE_CELUL: TStringField
      FieldName = 'FONE_CELUL'
      Origin = 'FONE_CELUL'
      Size = 13
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 176
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 56
    Top = 240
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 480
    Top = 192
    object ClientDataSet1ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1ID_CONVENIO: TSmallintField
      FieldName = 'ID_CONVENIO'
      Origin = 'ID_CONVENIO'
    end
    object ClientDataSet1DT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object ClientDataSet1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object ClientDataSet1CONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 35
    end
    object ClientDataSet1DDD_COMER: TStringField
      FieldName = 'DDD_COMER'
      Origin = 'DDD_COMER'
      FixedChar = True
      Size = 2
    end
    object ClientDataSet1FONE_COMER: TStringField
      FieldName = 'FONE_COMER'
      Origin = 'FONE_COMER'
      Size = 13
    end
    object ClientDataSet1DDD_CELUL: TStringField
      FieldName = 'DDD_CELUL'
      Origin = 'DDD_CELUL'
      FixedChar = True
      Size = 2
    end
    object ClientDataSet1FONE_CELUL: TStringField
      FieldName = 'FONE_CELUL'
      Origin = 'FONE_CELUL'
      Size = 13
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 480
    Top = 120
  end
end
