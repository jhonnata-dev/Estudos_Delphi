object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 656
  ClientWidth = 968
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 968
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'App de Tarefas'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
  end
  object pnlMenuAcoes: TPanel
    Left = 0
    Top = 41
    Width = 968
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    StyleName = 'Windows'
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 60
      Height = 60
      Align = alLeft
    end
  end
  object pnlInformacoes: TPanel
    Left = 0
    Top = 101
    Width = 968
    Height = 159
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitTop = 82
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 624
    Width = 968
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    StyleName = 'Windows'
  end
  object grdTarefas: TDBGrid
    Left = 0
    Top = 301
    Width = 513
    Height = 323
    Align = alLeft
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object pnlDescricaoTarefa: TPanel
    Left = 513
    Top = 301
    Width = 455
    Height = 323
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    StyleName = 'Windows'
    ExplicitTop = 282
    ExplicitHeight = 342
  end
  object pnlMenuSalvar: TPanel
    Left = 0
    Top = 260
    Width = 968
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    StyleName = 'Windows'
    ExplicitTop = 241
  end
end
