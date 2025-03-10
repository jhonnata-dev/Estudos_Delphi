inherited frmCartaoListagem: TfrmCartaoListagem
  Caption = 'frmCartaoListagem'
  StyleElements = [seFont, seClient, seBorder]
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
  inherited pnlFormPrincipal: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited pnlFormPrincipalTop: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited lblPesquisarPor: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited pnlLineBottom: TPanel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited mskPesquisar: TMaskEdit
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited btnModificar: TBitBtn
        OnClick = btnModificarClick
      end
      inherited btnApagar: TBitBtn
        OnClick = btnApagarClick
      end
    end
    inherited pnlFormPrincipalBottom: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited pnlLineTop: TPanel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited DBNavigator1: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited grdListagem: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'cartaoId'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'decricaoCartao'
          Visible = True
        end>
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'SELECT cartaoId, decricaoCartao FROM Cartao')
    object QryListagemcartaoId: TZIntegerField
      DisplayLabel = '#ID'
      FieldName = 'cartaoId'
      ReadOnly = True
    end
    object QryListagemdecricaoCartao: TZUnicodeStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'decricaoCartao'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
end
