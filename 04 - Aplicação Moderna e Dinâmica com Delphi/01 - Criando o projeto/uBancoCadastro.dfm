inherited frmBancoCadastro: TfrmBancoCadastro
  Caption = 'Cadastro de Banco'
  ClientHeight = 352
  ClientWidth = 774
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 774
  ExplicitHeight = 352
  TextHeight = 15
  inherited pnlHeader: TPanel
    Width = 774
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 774
    DesignSize = (
      774
      35)
    inherited lblTitulo: TLabel
      Width = 102
      Caption = 'Cadastro de Banco'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 102
    end
    inherited imgBtnClose: TImage
      Left = 749
      ExplicitLeft = 749
    end
    inherited pnlHeaderLineTop: TPanel
      Width = 774
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 774
    end
    inherited pnlHeaderLineLeft: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlHeaderLineRight: TPanel
      Left = 773
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 773
    end
    inherited pnlHeaderLineGray: TPanel
      Width = 943
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 943
    end
  end
  inherited pnlFormLineLeft: TPanel
    Height = 316
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 316
  end
  inherited pnlFormLineRight: TPanel
    Left = 773
    Height = 316
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 773
    ExplicitHeight = 316
  end
  inherited pnlFormLineBotom: TPanel
    Top = 351
    Width = 774
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 351
    ExplicitWidth = 774
  end
  inherited pnlPrincipal: TPanel
    Width = 772
    Height = 316
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 772
    ExplicitHeight = 316
    object Label1: TLabel [0]
      Left = 21
      Top = 19
      Width = 18
      Height = 15
      Caption = '#ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [1]
      Left = 21
      Top = 80
      Width = 61
      Height = 15
      Caption = 'Cod. Banco'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [2]
      Left = 21
      Top = 133
      Width = 104
      Height = 15
      Caption = 'Descri'#231#227'o do Banco'
      FocusControl = DBEdit3
    end
    object Label4: TLabel [3]
      Left = 21
      Top = 197
      Width = 19
      Height = 15
      Caption = 'Site'
      FocusControl = DBEdit4
    end
    inherited pnlPrincipalBottom: TPanel
      Top = 267
      Width = 772
      StyleElements = [seFont, seClient, seBorder]
      ExplicitTop = 267
      ExplicitWidth = 772
    end
    object DBEdit1: TDBEdit
      Tag = 81
      Left = 21
      Top = 40
      Width = 154
      Height = 23
      DataField = 'BancoId'
      DataSource = dtsCadastro
      Enabled = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 21
      Top = 96
      Width = 116
      Height = 23
      DataField = 'CodBanco'
      DataSource = dtsCadastro
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 21
      Top = 154
      Width = 572
      Height = 23
      DataField = 'DescBanco'
      DataSource = dtsCadastro
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 21
      Top = 213
      Width = 572
      Height = 23
      DataField = 'WebSite'
      DataSource = dtsCadastro
      TabOrder = 4
    end
  end
  inherited imgButtons: TImageList
    Left = 184
    Top = 128
  end
  inherited QryCadastro: TZQuery
    Tag = 81
    Connection = dtmConexao.SQLConnection
    SQL.Strings = (
      
        'SELECT BancoId, CodBanco, DescBanco, WebSite FROM Banco WHERE Ba' +
        'ncoId = :BancoId;')
    Params = <
      item
        Name = 'BancoId'
      end>
    Left = 272
    ParamData = <
      item
        Name = 'BancoId'
      end>
    object QryCadastroBancoId: TZIntegerField
      DisplayLabel = '#ID'
      FieldName = 'BancoId'
      ReadOnly = True
    end
    object QryCadastroCodBanco: TZUnicodeStringField
      DisplayLabel = 'Cod. Banco'
      FieldName = 'CodBanco'
      Required = True
      Size = 3
    end
    object QryCadastroDescBanco: TZUnicodeStringField
      DisplayLabel = 'Descri'#231#227'o do Banco'
      FieldName = 'DescBanco'
      Required = True
      Size = 50
    end
    object QryCadastroWebSite: TZUnicodeStringField
      DisplayLabel = 'Site'
      FieldName = 'WebSite'
      Size = 100
    end
  end
  inherited updCadastro: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Banco'
      'WHERE'
      
        '  ((Banco.BancoId IS NULL AND :OLD_BancoId IS NULL) OR (Banco.Ba' +
        'ncoId = :OLD_BancoId))')
    InsertSQL.Strings = (
      'INSERT INTO Banco'
      '  (CodBanco, DescBanco, WebSite)'
      'VALUES'
      '  (:CodBanco, :DescBanco, :WebSite)')
    ModifySQL.Strings = (
      'UPDATE Banco SET'
      '  CodBanco = :CodBanco,'
      '  DescBanco = :DescBanco,'
      '  WebSite = :WebSite'
      'WHERE'
      
        '  ((Banco.BancoId IS NULL AND :OLD_BancoId IS NULL) OR (Banco.Ba' +
        'ncoId = :OLD_BancoId))')
    ParamData = <
      item
        Name = 'CodBanco'
      end
      item
        Name = 'DescBanco'
      end
      item
        Name = 'WebSite'
      end
      item
        Name = 'OLD_BancoId'
      end>
  end
end
