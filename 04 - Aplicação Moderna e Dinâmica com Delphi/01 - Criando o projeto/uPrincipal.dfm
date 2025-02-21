object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 548
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object pnlPrincipalLeft: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 548
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 30
      Top = 64
      Width = 123
      Height = 25
      Caption = 'Teste Listagem'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object pnlPrincipalCenter: TPanel
    Left = 185
    Top = 0
    Width = 608
    Height = 548
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlPrincipalCenterLeft: TPanel
      Left = 0
      Top = 10
      Width = 10
      Height = 528
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
    end
    object pnlPrincipalCenterRight: TPanel
      Left = 598
      Top = 10
      Width = 10
      Height = 528
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
    end
    object pnlPrincipalCenterTop: TPanel
      Left = 0
      Top = 0
      Width = 608
      Height = 10
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
    end
    object pnlPrincipalCenterBottom: TPanel
      Left = 0
      Top = 538
      Width = 608
      Height = 10
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
    end
    object pgcPrincipal: TPageControl
      Left = 10
      Top = 10
      Width = 588
      Height = 528
      ActivePage = tbsMenu
      Align = alClient
      TabOrder = 4
      object tbsMenu: TTabSheet
        Caption = 'MENU'
      end
    end
  end
end
