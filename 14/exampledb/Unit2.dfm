object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 470
  Top = 242
  Height = 201
  Width = 540
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\'#1059#1095#1077#1073#1072'\'#1054#1040#1080#1055' '#1082#1086#1085#1090#1088 +
      #1086#1083#1100#1085#1099#1081' '#1090#1077#1089#1090' '#1076#1077#1096#1080#1092#1088'\'#1051#1072#1073#1099'\2 '#1089#1077#1084#1077#1089#1090#1088'\'#1054#1072#1080#1055' 2 '#1089#1077#1084#1077#1089#1090#1088'\14\exampledb\te' +
      'stdb.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * from table1')
    Left = 104
    Top = 32
    object ADOQuery1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQuery1Name: TWideStringField
      FieldName = 'Name'
      Size = 255
    end
    object ADOQuery1idw: TIntegerField
      FieldName = 'idw'
    end
    object ADOQuery1namework: TStringField
      FieldKind = fkLookup
      FieldName = 'namework'
      LookupDataSet = ADOQuery2
      LookupKeyFields = 'idwork'
      LookupResultField = 'typework'
      KeyFields = 'idw'
      Lookup = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 168
    Top = 32
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * from table2')
    Left = 248
    Top = 32
    object ADOQuery2idwork: TAutoIncField
      FieldName = 'idwork'
      ReadOnly = True
    end
    object ADOQuery2typework: TWideStringField
      FieldName = 'typework'
      Size = 255
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 320
    Top = 40
  end
end
