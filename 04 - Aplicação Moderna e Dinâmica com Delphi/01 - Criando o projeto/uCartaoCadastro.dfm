inherited frmCartaoCadastro: TfrmCartaoCadastro
  Caption = 'Cadastro de Cart'#227'o'
  ClientHeight = 264
  ClientWidth = 577
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 577
  ExplicitHeight = 264
  TextHeight = 15
  inherited pnlHeader: TPanel
    Width = 577
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitulo: TLabel
      Width = 104
      Caption = 'Cadastro de Cart'#227'o'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 104
    end
    inherited imgBtnClose: TImage
      Left = 552
    end
    inherited pnlHeaderLineTop: TPanel
      Width = 577
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlHeaderLineLeft: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlHeaderLineRight: TPanel
      Left = 576
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlHeaderLineGray: TPanel
      Width = 746
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pnlFormLineLeft: TPanel
    Height = 228
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlFormLineRight: TPanel
    Left = 576
    Height = 228
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlFormLineBotom: TPanel
    Top = 263
    Width = 577
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlPrincipal: TPanel
    Width = 575
    Height = 228
    StyleElements = [seFont, seClient, seBorder]
    object Label1: TLabel [0]
      Left = 16
      Top = 24
      Width = 18
      Height = 15
      Caption = '#ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [1]
      Left = 16
      Top = 72
      Width = 51
      Height = 15
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    inherited pnlPrincipalBottom: TPanel
      Top = 179
      Width = 575
      StyleElements = [seFont, seClient, seBorder]
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 154
      Height = 23
      DataField = 'cartaoId'
      DataSource = dtsCadastro
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 88
      Width = 454
      Height = 23
      DataField = 'decricaoCartao'
      DataSource = dtsCadastro
      TabOrder = 2
    end
  end
  inherited imgButtons: TImageList
    Top = 160
  end
  inherited QryCadastro: TZQuery
    Connection = dtmConexao.SQLConnection
    SQL.Strings = (
      'SELECT cartaoId, decricaoCartao FROM Cartao = :cartaoId')
    Params = <
      item
        Name = 'cartaoId'
      end>
    Left = 240
    Top = 48
    ParamData = <
      item
        Name = 'cartaoId'
      end>
    object QryCadastrocartaoId: TZIntegerField
      DisplayLabel = '#ID'
      FieldName = 'cartaoId'
      ReadOnly = True
    end
    object QryCadastrodecricaoCartao: TZUnicodeStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'decricaoCartao'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  inherited updCadastro: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Cartao'
      'WHERE'
      
        '  ((Cartao.cartaoId IS NULL AND :OLD_cartaoId IS NULL) OR (Carta' +
        'o.cartaoId = :OLD_cartaoId))')
    InsertSQL.Strings = (
      'INSERT INTO Cartao'
      '  (decricaoCartao)'
      'VALUES'
      '  (:decricaoCartao)')
    ModifySQL.Strings = (
      'UPDATE Cartao SET'
      '  decricaoCartao = :decricaoCartao'
      'WHERE'
      
        '  ((Cartao.cartaoId IS NULL AND :OLD_cartaoId IS NULL) OR (Carta' +
        'o.cartaoId = :OLD_cartaoId))')
    Left = 368
    Top = 56
    ParamData = <
      item
        Name = 'decricaoCartao'
      end
      item
        Name = 'OLD_cartaoId'
      end>
  end
  inherited dtsCadastro: TDataSource
    Top = 56
  end
end
