object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Delphi B'#225'sico - Aula 16 - Record Types'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 28
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 41
    Align = alTop
    Caption = 'Delphi B'#225'sico - Aula 16 - Record Types'
    Color = 16711808
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
  end
  object Panel2: TPanel
    Left = 0
    Top = 424
    Width = 624
    Height = 17
    Align = alBottom
    Color = 16711808
    ParentBackground = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 624
    Height = 383
    Align = alClient
    TabOrder = 2
    ExplicitTop = 35
    object btnPessoa: TButton
      Left = 160
      Top = 24
      Width = 305
      Height = 65
      Caption = 'Exibir dados da pessoa'
      TabOrder = 0
      OnClick = btnPessoaClick
    end
    object mmoPessoa: TMemo
      Left = 1
      Top = 120
      Width = 622
      Height = 262
      Align = alBottom
      TabOrder = 1
    end
  end
end
