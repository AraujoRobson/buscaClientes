object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Buscar Clientes com Contratos'
  ClientHeight = 454
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 723
    Height = 54
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 399
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 721
      Height = 52
      Align = alClient
      Caption = 'Buscar Cliente'
      TabOrder = 0
      ExplicitLeft = 80
      ExplicitTop = 8
      ExplicitWidth = 185
      ExplicitHeight = 105
      object edtCNPJ: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 202
        Height = 29
        Hint = 'CNPJ'
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Button1: TButton
        AlignWithMargins = True
        Left = 213
        Top = 18
        Width = 75
        Height = 29
        Align = alLeft
        Caption = 'Buscar'
        TabOrder = 1
        ExplicitLeft = 168
        ExplicitTop = 96
        ExplicitHeight = 25
      end
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 63
    Width = 723
    Height = 388
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 96
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 41
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 721
      Height = 386
      Align = alClient
      Caption = 'Contratos'
      TabOrder = 0
      ExplicitLeft = 56
      ExplicitTop = 40
      ExplicitWidth = 185
      ExplicitHeight = 105
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 717
        Height = 369
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object DataSource1: TDataSource
    Left = 644
    Top = 360
  end
end
