object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Limpar lista'
  ClientHeight = 693
  ClientWidth = 477
  Color = clWhite
  TransparentColorValue = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  StyleName = 'Windows'
  TextHeight = 15
  object mmoLista: TMemo
    Left = 8
    Top = 312
    Width = 457
    Height = 373
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'mmoLista')
    ParentFont = False
    TabOrder = 0
  end
  object vaetoers: TPanel
    Left = 0
    Top = 0
    Width = 469
    Height = 57
    Caption = 'Vetores em Delphi - Arrays'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    StyleName = 'Windows'
  end
  object btnArrayFixo: TButton
    Left = 88
    Top = 104
    Width = 300
    Height = 45
    Caption = 'Array de tamanho fixo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnArrayFixoClick
  end
  object btnArrayDinamico: TButton
    Left = 88
    Top = 168
    Width = 300
    Height = 45
    Caption = 'Array din'#226'mico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnArrayDinamicoClick
  end
  object btnLimparLista: TButton
    Left = 88
    Top = 232
    Width = 300
    Height = 45
    Caption = 'Limpar lista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnLimparListaClick
  end
end
