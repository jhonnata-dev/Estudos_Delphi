object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Adicionar Frutas'
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
    Caption = 'Adicionar Frutas'
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
    ExplicitTop = 67
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
      TabOrder = 1
      TextHint = 'ex: 10'
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
      TabOrder = 2
      TextHint = 'Nome'
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
