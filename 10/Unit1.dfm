object Form1: TForm1
  Left = 192
  Top = 126
  Width = 535
  Height = 539
  Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072' '#8470'10'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 27
    Height = 13
    Caption = #1060#1048#1054
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 38
    Height = 13
    Caption = #1054#1094#1077#1085#1082#1080
  end
  object Label3: TLabel
    Left = 40
    Top = 112
    Width = 63
    Height = 13
    Caption = #1052#1072#1090#1077#1084#1072#1090#1080#1082#1072
  end
  object Label4: TLabel
    Left = 40
    Top = 152
    Width = 41
    Height = 13
    Caption = #1060#1080#1079#1080#1082#1072
  end
  object Label5: TLabel
    Left = 40
    Top = 192
    Width = 54
    Height = 13
    Caption = #1057#1086#1095#1080#1085#1077#1085#1080#1077
  end
  object Button1: TButton
    Left = 376
    Top = 208
    Width = 105
    Height = 25
    Caption = #1042#1074#1077#1089#1090#1080' '#1079#1072#1087#1080#1089#1100
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 56
    Top = 448
    Width = 75
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 144
    Top = 448
    Width = 75
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 232
    Top = 448
    Width = 75
    Height = 25
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 320
    Top = 448
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 4
    OnClick = Button5Click
  end
  object Edit1: TEdit
    Left = 96
    Top = 32
    Width = 321
    Height = 21
    TabOrder = 5
  end
  object Edit2: TEdit
    Left = 120
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 6
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 120
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 7
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 120
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 8
    OnKeyPress = Edit4KeyPress
  end
  object BitBtn1: TBitBtn
    Left = 408
    Top = 448
    Width = 75
    Height = 25
    TabOrder = 9
    Kind = bkClose
  end
  object Memo1: TMemo
    Left = 40
    Top = 256
    Width = 449
    Height = 145
    Lines.Strings = (
      'Memo1')
    TabOrder = 10
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.dat'
    Filter = #1060#1072#1081#1083' '#1076#1072#1085#1085#1099#1093'|*.dat|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 312
    Top = 96
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.dat'
    Filter = #1060#1072#1081#1083' '#1076#1072#1085#1085#1099#1093'|*.dat|'#1042#1089#1077' '#1076#1072#1085#1085#1099#1077'|*.*'
    Left = 352
    Top = 96
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 112
    object N1: TMenuItem
      Caption = #1054#1073' '#1072#1074#1090#1086#1088#1077
      OnClick = N1Click
    end
  end
end
