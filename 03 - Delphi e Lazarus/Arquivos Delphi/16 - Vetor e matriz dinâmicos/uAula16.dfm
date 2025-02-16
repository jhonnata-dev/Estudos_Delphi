object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 651
  ClientWidth = 1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblTamanho: TLabel
    Left = 32
    Top = 139
    Width = 49
    Height = 15
    Caption = 'Tamanho'
  end
  object rdgTipoDeArray: TRadioGroup
    Left = 32
    Top = 8
    Width = 1009
    Height = 121
    Caption = 'Selecionar o tipo de array'
    Columns = 2
    Items.Strings = (
      'Unidimensional (vetor)'
      'Bidimensional (Matriz)')
    TabOrder = 0
  end
  object edtTamanho: TEdit
    Left = 32
    Top = 160
    Width = 121
    Height = 23
    NumbersOnly = True
    TabOrder = 1
    Text = '1'
  end
  object mmoResultado: TMemo
    Left = 32
    Top = 216
    Width = 1009
    Height = 385
    TabOrder = 2
  end
  object btnCriar: TButton
    Left = 168
    Top = 159
    Width = 161
    Height = 25
    Caption = 'Criar'
    TabOrder = 3
    OnClick = btnCriarClick
  end
  object btnLimpar: TButton
    Left = 344
    Top = 159
    Width = 161
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = btnLimparClick
  end
end
