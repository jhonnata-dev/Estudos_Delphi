object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 176
    Top = 147
    Width = 79
    Height = 15
    Caption = 'Variavel private'
  end
  object Label2: TLabel
    Left = 176
    Top = 203
    Width = 76
    Height = 15
    Caption = 'Variavel public'
  end
  object Button1: TButton
    Left = 384
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 176
    Top = 168
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 176
    Top = 224
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'Edit2'
  end
  object Button2: TButton
    Left = 384
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    OnClick = Button2Click
  end
end
