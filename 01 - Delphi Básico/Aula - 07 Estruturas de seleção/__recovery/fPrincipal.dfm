object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 577
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Script'
  Font.Style = []
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 616
    Height = 41
    Align = alTop
    Caption = 'Aula 07 - Condicionais - Cadastro de Pessoas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 208
    ExplicitTop = 24
    ExplicitWidth = 185
  end
  object pnlCampos: TPanel
    Left = 0
    Top = 41
    Width = 616
    Height = 230
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = pnlCamposClick
    ExplicitLeft = 40
    ExplicitTop = 105
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 271
    Width = 616
    Height = 50
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 10
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Button1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 128
      Height = 42
      Align = alLeft
      Caption = 'Cadastrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 25
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitHeight = 39
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 138
      Top = 4
      Width = 128
      Height = 42
      Align = alLeft
      Caption = 'Button2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 25
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 129
      ExplicitTop = 1
      ExplicitHeight = 48
    end
  end
  object mmoListaPessoas: TMemo
    Left = 0
    Top = 321
    Width = 616
    Height = 256
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'mmoListaPessoas')
    ParentFont = False
    TabOrder = 3
    ExplicitTop = 312
    ExplicitWidth = 624
  end
end
