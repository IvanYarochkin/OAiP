object Form1: TForm1
  Left = 192
  Top = 113
  Width = 807
  Height = 444
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 799
    Height = 417
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 48
      Width = 23
      Height = 13
      Caption = 'Xmin'
    end
    object Label2: TLabel
      Left = 32
      Top = 96
      Width = 26
      Height = 13
      Caption = 'Xmax'
    end
    object Label3: TLabel
      Left = 32
      Top = 136
      Width = 23
      Height = 13
      Caption = 'Ymin'
    end
    object Label4: TLabel
      Left = 32
      Top = 168
      Width = 26
      Height = 13
      Caption = 'Ymax'
    end
    object Label5: TLabel
      Left = 24
      Top = 216
      Width = 97
      Height = 13
      Caption = #1064#1072#1075' '#1088#1072#1079#1084#1077#1090#1082#1080' '#1087#1086' '#1061
    end
    object Label6: TLabel
      Left = 24
      Top = 256
      Width = 97
      Height = 13
      Caption = #1064#1072#1075' '#1088#1072#1079#1084#1077#1090#1082#1080' '#1087#1086' Y'
    end
    object Label7: TLabel
      Left = 16
      Top = 344
      Width = 109
      Height = 13
      Caption = #1064#1072#1075' '#1088#1072#1089#1095#1077#1090#1072' '#1090#1072#1073#1083#1080#1094#1099
    end
    object Edit1: TEdit
      Left = 80
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 80
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 80
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 80
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 136
      Top = 208
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 136
      Top = 248
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object Edit7: TEdit
      Left = 136
      Top = 336
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object Chart1: TChart
      Left = 304
      Top = 40
      Width = 457
      Height = 297
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        #1043#1088#1072#1092#1080#1082#1080' '#1092#1091#1085#1082#1094#1080#1081)
      BottomAxis.Automatic = False
      BottomAxis.AutomaticMaximum = False
      BottomAxis.AutomaticMinimum = False
      BottomAxis.Maximum = 25.000000000000000000
      View3D = False
      TabOrder = 7
      object Series1: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = 'X^3'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series2: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clGreen
        Title = '|X|'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object Button1: TButton
      Left = 88
      Top = 280
      Width = 113
      Height = 41
      Caption = #1056#1072#1079#1084#1077#1090#1080#1090#1100' '#1086#1089#1080
      TabOrder = 8
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 320
      Top = 360
      Width = 123
      Height = 33
      Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1075#1088#1072#1092#1080#1082
      TabOrder = 9
      OnClick = Button2Click
    end
    object BitBtn1: TBitBtn
      Left = 520
      Top = 360
      Width = 107
      Height = 33
      TabOrder = 10
      Kind = bkClose
    end
  end
end
