object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Delphi B'#225'sico - Aula 17 - StringList'
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
    Height = 41
    Align = alTop
    Caption = 'Delphi B'#225'sico - Aula 17 - StringList'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8388863
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 622
  end
  object Panel3: TPanel
    Left = 0
    Top = 424
    Width = 624
    Height = 17
    Align = alBottom
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 416
    ExplicitWidth = 622
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 624
    Height = 383
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 622
    ExplicitHeight = 375
    object btnCriarLista: TButton
      Left = 8
      Top = 6
      Width = 177
      Height = 51
      Caption = 'Criar Lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnCriarListaClick
    end
    object btnCarregarLista: TButton
      Left = 224
      Top = 6
      Width = 177
      Height = 51
      Caption = 'Carregar Lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnCarregarListaClick
    end
    object mmoLista: TMemo
      Left = 1
      Top = 63
      Width = 622
      Height = 319
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 55
      ExplicitWidth = 620
    end
    object btnSalvarLista: TButton
      Left = 424
      Top = 6
      Width = 177
      Height = 51
      Caption = 'Salvar Lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnSalvarListaClick
    end
  end
end
