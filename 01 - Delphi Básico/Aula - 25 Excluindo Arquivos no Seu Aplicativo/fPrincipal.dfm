object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Delphi B'#225'sico - Aula 25 - Excluindo Arquivos'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 65
    Align = alTop
    Caption = 'Delphi B'#225'sico - Aula 25 - Excluindo Arquivos'
    Color = 16727295
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 624
    Height = 376
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 224
    ExplicitWidth = 185
    ExplicitHeight = 41
    object btnApagarArquivo: TButton
      Left = 160
      Top = 136
      Width = 315
      Height = 81
      Caption = 'Apagar Arquivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      StyleName = 'Windows'
      OnClick = btnApagarArquivoClick
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 112
    Top = 288
  end
end
