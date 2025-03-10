inherited frmBancoListagem: TfrmBancoListagem
  Caption = 'Cadastro de Banco'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnlHeader: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitulo: TLabel
      Width = 102
      Caption = 'Cadastro de Banco'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 102
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
      OnDblClick = btnModificarClick
      Columns = <
        item
          Expanded = False
          FieldName = 'BancoId'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodBanco'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescBanco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WebSite'
          Visible = True
        end>
    end
  end
  inherited imgButtons: TImageList
    Left = 152
    Top = 208
  end
  inherited QryListagem: TZQuery
    SortedFields = 'CodBanco'
    SQL.Strings = (
      'SELECT *  FROM Banco')
    IndexFieldNames = 'CodBanco Asc'
    object QryListagemBancoId: TZIntegerField
      DisplayLabel = '#ID'
      FieldName = 'BancoId'
      ReadOnly = True
    end
    object QryListagemCodBanco: TZUnicodeStringField
      DisplayLabel = 'Cod. Banco'
      FieldName = 'CodBanco'
      Required = True
      Size = 3
    end
    object QryListagemDescBanco: TZUnicodeStringField
      DisplayLabel = 'Descri'#231#227'o do Banco'
      FieldName = 'DescBanco'
      Required = True
      Size = 50
    end
    object QryListagemWebSite: TZUnicodeStringField
      DisplayLabel = 'Site'
      FieldName = 'WebSite'
      Size = 100
    end
  end
end
