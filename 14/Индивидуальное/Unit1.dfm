object Form1: TForm1
  Left = 192
  Top = 125
  Width = 896
  Height = 509
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 512
    Top = 16
    Width = 101
    Height = 13
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
  end
  object Label2: TLabel
    Left = 632
    Top = 32
    Width = 88
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
  end
  object Label3: TLabel
    Left = 632
    Top = 56
    Width = 55
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
  end
  object Label4: TLabel
    Left = 632
    Top = 80
    Width = 59
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object Label5: TLabel
    Left = 64
    Top = 184
    Width = 138
    Height = 13
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102' '#1090#1086#1074#1072#1088#1072
  end
  object Label6: TLabel
    Left = 272
    Top = 184
    Width = 104
    Height = 13
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1089#1090#1086#1080#1084#1086#1089#1090#1080
  end
  object Label7: TLabel
    Left = 480
    Top = 184
    Width = 104
    Height = 13
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1089#1090#1086#1080#1084#1086#1089#1090#1080
  end
  object Label8: TLabel
    Left = 64
    Top = 320
    Width = 107
    Height = 13
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1091
  end
  object Label9: TLabel
    Left = 272
    Top = 320
    Width = 74
    Height = 13
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1080#1084#1103
  end
  object Label10: TLabel
    Left = 480
    Top = 320
    Width = 77
    Height = 13
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1094#1077#1085#1091
  end
  object Label11: TLabel
    Left = 688
    Top = 320
    Width = 112
    Height = 13
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object Label12: TLabel
    Left = 304
    Top = 568
    Width = 3
    Height = 13
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 16
    Width = 361
    Height = 120
    DataSource = DataModule2.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'counts'
        Width = 96
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 312
    Top = 144
    Width = 83
    Height = 25
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 504
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 504
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 504
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button2: TButton
    Left = 504
    Top = 112
    Width = 121
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 5
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 40
    Top = 200
    Width = 185
    Height = 105
    Caption = #1055#1086#1080#1089#1082' '#1085#1072' '#1085#1077#1087#1086#1083#1085#1086#1077' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077
    TabOrder = 6
    object Edit4: TEdit
      Left = 24
      Top = 32
      Width = 129
      Height = 21
      TabOrder = 0
    end
    object Button3: TButton
      Left = 48
      Top = 64
      Width = 75
      Height = 25
      Caption = #1053#1072#1081#1090#1080
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 248
    Top = 200
    Width = 185
    Height = 105
    Caption = #1057#1091#1084#1084#1072' '#1080' '#1073#1086#1083#1100#1096#1077
    TabOrder = 7
    object Edit5: TEdit
      Left = 24
      Top = 32
      Width = 129
      Height = 21
      TabOrder = 0
    end
    object Button4: TButton
      Left = 48
      Top = 64
      Width = 75
      Height = 25
      Caption = #1053#1072#1081#1090#1080
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 456
    Top = 200
    Width = 185
    Height = 105
    Caption = #1057#1091#1084#1084#1072' '#1080' '#1084#1077#1085#1100#1096#1077
    TabOrder = 8
    object Edit6: TEdit
      Left = 24
      Top = 32
      Width = 129
      Height = 21
      TabOrder = 0
    end
    object Button5: TButton
      Left = 48
      Top = 64
      Width = 75
      Height = 25
      Caption = #1053#1072#1081#1090#1080
      TabOrder = 1
      OnClick = Button5Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 40
    Top = 336
    Width = 185
    Height = 105
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1080' '#1073#1086#1083#1100#1096#1077
    TabOrder = 9
    object Edit7: TEdit
      Left = 24
      Top = 32
      Width = 129
      Height = 21
      TabOrder = 0
    end
    object Button6: TButton
      Left = 48
      Top = 64
      Width = 75
      Height = 25
      Caption = #1053#1072#1081#1090#1080
      TabOrder = 1
      OnClick = Buton6Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 248
    Top = 336
    Width = 185
    Height = 105
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 10
    object Edit8: TEdit
      Left = 24
      Top = 32
      Width = 129
      Height = 21
      TabOrder = 0
    end
    object Button7: TButton
      Left = 40
      Top = 64
      Width = 97
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      OnClick = Button7Click
    end
  end
  object GroupBox6: TGroupBox
    Left = 456
    Top = 336
    Width = 185
    Height = 105
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 11
    object Edit9: TEdit
      Left = 24
      Top = 32
      Width = 129
      Height = 21
      TabOrder = 0
    end
    object Button8: TButton
      Left = 48
      Top = 64
      Width = 89
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      OnClick = Button8Click
    end
  end
  object GroupBox7: TGroupBox
    Left = 664
    Top = 336
    Width = 185
    Height = 105
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 12
    object Edit10: TEdit
      Left = 24
      Top = 32
      Width = 129
      Height = 21
      TabOrder = 0
    end
    object Button9: TButton
      Left = 48
      Top = 64
      Width = 89
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      OnClick = Button9Click
    end
  end
end
