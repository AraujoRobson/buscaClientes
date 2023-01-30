object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 328
  ClientWidth = 833
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 633
    Height = 105
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 608
    object Arquivo1: TMenuItem
      Caption = '&Arquivo'
      object BancodeDados1: TMenuItem
        Caption = 'Banco de Dados'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object BuscarCliente1: TMenuItem
        Caption = 'Buscar Cliente'
      end
      object BuscarCliente2: TMenuItem
        Caption = 'Altera Banco'
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
    end
    object Sobre2: TMenuItem
      Caption = 'Sair'
      OnClick = Sobre2Click
    end
  end
end
