inherited frmHerancaCadastro: TfrmHerancaCadastro
  Caption = 'frmHerancaCadastro'
  KeyPreview = True
  StyleElements = [seFont, seClient, seBorder]
  OnKeyDown = FormKeyDown
  TextHeight = 15
  inherited pnlHeader: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitulo: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlHeaderLineTop: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlHeaderLineLeft: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlHeaderLineRight: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlHeaderLineGray: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pnlFormLineLeft: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlFormLineRight: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlFormLineBotom: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  object pnlPrincipal: TPanel [4]
    Left = 1
    Top = 35
    Width = 781
    Height = 425
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object pnlPrincipalBottom: TPanel
      Left = 0
      Top = 376
      Width = 781
      Height = 49
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object btnCancelar: TBitBtn
        Left = 6
        Top = 7
        Width = 100
        Height = 36
        ImageIndex = 7
        Images = imgButtons
        TabOrder = 0
        OnClick = btnCancelarClick
        OnMouseEnter = btnCancelarMouseEnter
        OnMouseLeave = btnCancelarMouseLeave
      end
      object btnGravar: TBitBtn
        Left = 121
        Top = 7
        Width = 100
        Height = 36
        ImageIndex = 5
        Images = imgButtons
        TabOrder = 1
        OnClick = btnGravarClick
        OnMouseEnter = btnGravarMouseEnter
        OnMouseLeave = btnGravarMouseLeave
      end
      object btnApagar: TBitBtn
        Left = 233
        Top = 7
        Width = 100
        Height = 36
        ImageIndex = 9
        Images = imgButtons
        TabOrder = 2
        OnClick = btnApagarClick
        OnMouseEnter = btnApagarMouseEnter
        OnMouseLeave = btnApagarMouseLeave
      end
    end
  end
  inherited imgButtons: TImageList
    Left = 56
    Top = 72
  end
  object QryCadastro: TZQuery
    AfterPost = QryCadastroAfterPost
    AfterDelete = QryCadastroAfterDelete
    UpdateObject = updCadastro
    Params = <>
    Left = 224
    Top = 80
  end
  object updCadastro: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 376
    Top = 80
  end
  object dtsCadastro: TDataSource
    DataSet = QryCadastro
    Left = 496
    Top = 88
  end
end
