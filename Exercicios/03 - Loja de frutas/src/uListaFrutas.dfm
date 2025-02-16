object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Lista de Frutas'
  ClientHeight = 640
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object pnlBanner: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Lista de Frutas'
    Color = 4227072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 73
    Width = 784
    Height = 526
    Align = alClient
    BevelOuter = bvNone
    Color = 3421289
    ParentBackground = False
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 424
      Width = 784
      Height = 102
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 784
        Height = 102
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object pnlEditar: TPanel
      Left = 0
      Top = 0
      Width = 784
      Height = 424
      Align = alClient
      Color = 3421289
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 56
      ExplicitTop = 6
      object Label1: TLabel
        Left = 248
        Top = 54
        Width = 100
        Height = 20
        Caption = 'Nome da fruta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        StyleName = 'Windows'
      end
      object Label3: TLabel
        Left = 248
        Top = 134
        Width = 96
        Height = 20
        Caption = 'Pre'#231'o da fruta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        StyleName = 'Windows'
      end
      object Label2: TLabel
        Left = 248
        Top = 220
        Width = 140
        Height = 20
        Caption = 'Quantidade de frutas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        StyleName = 'Windows'
      end
      object edtNomeFruta: TEdit
        Left = 248
        Top = 80
        Width = 300
        Height = 36
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TextHint = 'Pre'#231'o'
      end
      object edtPrecoFruta: TEdit
        Left = 248
        Top = 160
        Width = 300
        Height = 36
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TextHint = 'Nome'
      end
      object edtQuantidade: TEdit
        Left = 248
        Top = 246
        Width = 100
        Height = 36
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 2
        TextHint = 'ex: 10'
      end
      object btnAdicionar: TButton
        Left = 247
        Top = 312
        Width = 141
        Height = 41
        Caption = 'Adicionar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btnAdicionarClick
      end
      object btnNovaFruta: TButton
        Left = 407
        Top = 312
        Width = 141
        Height = 41
        Caption = 'Nova Fruta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 599
    Width = 784
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'By Jhonnata'
    Color = 4227072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    StyleName = 'Windows'
  end
end
