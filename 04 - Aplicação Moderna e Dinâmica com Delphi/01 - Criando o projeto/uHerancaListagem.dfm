inherited frmHerancaListagem: TfrmHerancaListagem
  Caption = 'Digite o titulo da tela aqui'
  ClientHeight = 632
  ClientWidth = 1013
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1013
  ExplicitHeight = 632
  TextHeight = 15
  inherited pnlHeader: TPanel
    Width = 1013
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1014
    inherited lblTitulo: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited imgBtnClose: TImage
      Left = 988
      ExplicitLeft = 989
    end
    inherited pnlHeaderLineTop: TPanel
      Width = 1013
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 1014
    end
    inherited pnlHeaderLineLeft: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlHeaderLineRight: TPanel
      Left = 1012
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 1013
    end
    inherited pnlHeaderLineGray: TPanel
      Width = 1182
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 1183
    end
  end
  inherited pnlFormLineLeft: TPanel
    Height = 596
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 596
  end
  inherited pnlFormLineRight: TPanel
    Left = 1012
    Height = 596
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 1013
    ExplicitHeight = 596
  end
  inherited pnlFormLineBotom: TPanel
    Top = 631
    Width = 1013
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 631
    ExplicitWidth = 1014
  end
  object pnlFormPrincipal: TPanel [4]
    Left = 1
    Top = 35
    Width = 1011
    Height = 596
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitWidth = 1012
    object pnlFormPrincipalTop: TPanel
      Left = 0
      Top = 0
      Width = 1011
      Height = 70
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 1012
      DesignSize = (
        1011
        70)
      object lblPesquisarPor: TLabel
        Left = 6
        Top = 19
        Width = 74
        Height = 15
        Caption = 'Pesquisar por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnlLineBottom: TPanel
        Left = 0
        Top = 69
        Width = 1011
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clBlack
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 1012
      end
      object mskPesquisar: TMaskEdit
        Left = 6
        Top = 40
        Width = 395
        Height = 23
        TabOrder = 1
        Text = ''
        TextHint = 'Digite sua pesquisa'
      end
      object btnNovo: TBitBtn
        Left = 677
        Top = 27
        Width = 100
        Height = 36
        Anchors = [akTop, akRight]
        ImageIndex = 1
        Images = imgButtons
        TabOrder = 2
        OnClick = btnNovoClick
        OnMouseEnter = btnNovoMouseEnter
        OnMouseLeave = btnNovoMouseLeave
        ExplicitLeft = 678
      end
      object btnModificar: TBitBtn
        Left = 793
        Top = 27
        Width = 100
        Height = 36
        Anchors = [akTop, akRight]
        ImageIndex = 3
        Images = imgButtons
        TabOrder = 3
        OnMouseEnter = btnModificarMouseEnter
        OnMouseLeave = btnModificarMouseLeave
        ExplicitLeft = 794
      end
      object btnApagar: TBitBtn
        Left = 905
        Top = 27
        Width = 100
        Height = 36
        Anchors = [akTop, akRight]
        ImageIndex = 9
        Images = imgButtons
        TabOrder = 4
        OnMouseEnter = btnApagarMouseEnter
        OnMouseLeave = btnApagarMouseLeave
        ExplicitLeft = 906
      end
    end
    object pnlFormPrincipalBottom: TPanel
      Left = 0
      Top = 546
      Width = 1011
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 1012
      DesignSize = (
        1011
        50)
      object pnlLineTop: TPanel
        Left = 0
        Top = 0
        Width = 1011
        Height = 1
        Align = alTop
        BevelOuter = bvNone
        Color = clBlack
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 1012
      end
      object DBNavigator1: TDBNavigator
        Left = 6
        Top = 11
        Width = 224
        Height = 25
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 1
      end
      object btnFechar: TBitBtn
        Left = 903
        Top = 7
        Width = 100
        Height = 36
        Anchors = [akTop, akRight]
        ImageIndex = 11
        Images = imgButtons
        TabOrder = 2
        OnClick = btnFecharClick
        OnMouseEnter = btnFecharMouseEnter
        OnMouseLeave = btnFecharMouseLeave
        ExplicitLeft = 904
      end
    end
    object grdListagem: TDBGrid
      Left = 0
      Top = 70
      Width = 1011
      Height = 476
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
end
