object Form1: TForm1
  Left = 212
  Top = 147
  Width = 1047
  Height = 494
  Caption = #1090#1077#1089#1090#1086#1074#1072#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 800
    Top = 8
    Width = 130
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
  end
  object Label2: TLabel
    Left = 808
    Top = 112
    Width = 22
    Height = 13
    Caption = #1048#1084#1103
  end
  object Label3: TLabel
    Left = 56
    Top = 176
    Width = 82
    Height = 13
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1080#1084#1077#1085#1080
  end
  object Label4: TLabel
    Left = 272
    Top = 176
    Width = 82
    Height = 13
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1080#1084#1077#1085#1080
  end
  object Label5: TLabel
    Left = 488
    Top = 176
    Width = 82
    Height = 13
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1080#1084#1077#1085#1080
  end
  object Label6: TLabel
    Left = 48
    Top = 304
    Width = 93
    Height = 13
    Caption = #1055#1077#1088#1077#1093#1086#1076' '#1087#1086' '#1080#1084#1077#1085#1080
  end
  object Label7: TLabel
    Left = 240
    Top = 304
    Width = 180
    Height = 13
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
  end
  object Label8: TLabel
    Left = 456
    Top = 304
    Width = 22
    Height = 13
    Caption = #1048#1084#1103
  end
  object Label9: TLabel
    Left = 664
    Top = 304
    Width = 130
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 8
    Width = 320
    Height = 120
    DataSource = DataModule2.DataSource1
    PopupMenu = PopupMenu2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'namework'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        Width = 250
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 256
    Top = 136
    Width = 75
    Height = 25
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 672
    Top = 136
    Width = 75
    Height = 25
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBGrid2: TDBGrid
    Left = 432
    Top = 8
    Width = 320
    Height = 120
    DataSource = DataModule2.DataSource2
    PopupMenu = PopupMenu1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idwork'
        Title.Caption = #1050#1086#1076
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'typework'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        Width = 250
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 800
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button3: TButton
    Left = 928
    Top = 32
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 5
    OnClick = Button3Click
  end
  object ComboBox1: TComboBox
    Left = 800
    Top = 72
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 800
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Button4: TButton
    Left = 928
    Top = 136
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 8
    OnClick = Button4Click
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 192
    Width = 185
    Height = 105
    Caption = #1055#1086#1080#1089#1082' '#1085#1072' '#1087#1086#1083#1085#1086#1077' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077
    TabOrder = 9
  end
  object Edit3: TEdit
    Left = 40
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Button5: TButton
    Left = 32
    Top = 248
    Width = 75
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 11
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 104
    Top = 248
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 12
    OnClick = Button6Click
  end
  object GroupBox2: TGroupBox
    Left = 232
    Top = 192
    Width = 185
    Height = 105
    Caption = #1055#1086#1080#1089#1082' '#1085#1072' '#1085#1077#1087#1086#1083#1085#1086#1077' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077
    TabOrder = 13
  end
  object Edit4: TEdit
    Left = 264
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object Button7: TButton
    Left = 256
    Top = 256
    Width = 75
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 15
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 328
    Top = 256
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 16
    OnClick = Button8Click
  end
  object GroupBox3: TGroupBox
    Left = 448
    Top = 192
    Width = 185
    Height = 105
    Caption = #1055#1086#1083#1085#1086#1090#1077#1082#1089#1090#1085#1099#1081' '#1087#1086#1080#1089#1082
    TabOrder = 17
  end
  object Edit5: TEdit
    Left = 480
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 18
  end
  object Button9: TButton
    Left = 464
    Top = 256
    Width = 75
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 19
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 536
    Top = 256
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 20
    OnClick = Button10Click
  end
  object GroupBox4: TGroupBox
    Left = 16
    Top = 320
    Width = 185
    Height = 105
    Caption = #1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1089#1090#1088#1086#1082#1091
    TabOrder = 21
  end
  object Edit6: TEdit
    Left = 48
    Top = 346
    Width = 121
    Height = 21
    TabOrder = 22
  end
  object Button11: TButton
    Left = 24
    Top = 386
    Width = 75
    Height = 25
    Caption = #1055#1077#1088#1077#1081#1090#1080
    TabOrder = 23
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 104
    Top = 388
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 24
    OnClick = Button12Click
  end
  object GroupBox5: TGroupBox
    Left = 232
    Top = 320
    Width = 185
    Height = 105
    Caption = #1055#1086#1080#1089#1082' '#1085#1072' '#1087#1086#1083#1085#1086#1077' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077
    TabOrder = 25
    object Button13: TButton
      Left = 16
      Top = 72
      Width = 75
      Height = 25
      Caption = #1053#1072#1081#1090#1080
      TabOrder = 0
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 96
      Top = 72
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button14Click
    end
    object Edit7: TEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object GroupBox6: TGroupBox
    Left = 448
    Top = 320
    Width = 185
    Height = 105
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 26
    object Button15: TButton
      Left = 8
      Top = 72
      Width = 75
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Button15Click
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      DataField = 'Name'
      DataSource = DataModule2.DataSource1
      TabOrder = 1
    end
  end
  object GroupBox7: TGroupBox
    Left = 664
    Top = 320
    Width = 185
    Height = 105
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 27
    object Button16: TButton
      Left = 8
      Top = 72
      Width = 75
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Button16Click
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 32
      Width = 121
      Height = 21
      DataField = 'typework'
      DataSource = DataModule2.DataSource2
      TabOrder = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 24
    object N1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 368
    Top = 64
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N2Click
    end
  end
end
