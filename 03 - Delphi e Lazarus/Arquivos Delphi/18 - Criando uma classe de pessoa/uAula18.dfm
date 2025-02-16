object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'but'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Calcular: TButton
    Left = 250
    Top = 207
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = CalcularClick
  end
  object edtNome: TEdit
    Left = 72
    Top = 144
    Width = 121
    Height = 23
    TabOrder = 1
    TextHint = 'Informe o nome'
  end
  object edtIdade: TEdit
    Left = 72
    Top = 173
    Width = 121
    Height = 23
    TabOrder = 2
    TextHint = 'Informe a idade'
  end
  object edtCodigo: TEdit
    Left = 72
    Top = 115
    Width = 121
    Height = 23
    TabOrder = 3
    TextHint = 'Informe o c'#243'digo'
  end
  object edtSomaIdade: TEdit
    Left = 72
    Top = 240
    Width = 121
    Height = 23
    TabOrder = 4
    TextHint = 'Idade a ser somada'
  end
  object edtResultado: TEdit
    Left = 72
    Top = 269
    Width = 121
    Height = 23
    TabOrder = 5
    TextHint = 'RESULTADO'
  end
end
