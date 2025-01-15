object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de parcelas'
  ClientHeight = 701
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 41
    Align = alTop
    Caption = 'Aula 08 - For - Sistema de Parcelas'
    TabOrder = 0
    ExplicitWidth = 622
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 624
    Height = 128
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 622
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 119
      Height = 17
      Caption = 'N'#250'mero de Parcelas'
    end
    object Label2: TLabel
      Left = 210
      Top = 19
      Width = 76
      Height = 17
      Caption = 'Valor Parcela'
    end
    object Label3: TLabel
      Left = 378
      Top = 19
      Width = 125
      Height = 17
      Caption = 'Descri'#231#227'o da compra'
    end
    object edtNumeroParcelas: TEdit
      Left = 16
      Top = 42
      Width = 129
      Height = 25
      NumbersOnly = True
      TabOrder = 0
    end
    object edtValorParcela: TEdit
      Left = 210
      Top = 42
      Width = 129
      Height = 25
      TabOrder = 1
    end
    object edtDescricaoDaCompra: TEdit
      Left = 378
      Top = 42
      Width = 223
      Height = 25
      TabOrder = 2
    end
  end
  object mmoListaParcelas: TMemo
    Left = 0
    Top = 221
    Width = 624
    Height = 480
    Align = alClient
    Lines.Strings = (
      'mmoListaParcelas')
    TabOrder = 2
    ExplicitWidth = 622
    ExplicitHeight = 472
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 169
    Width = 624
    Height = 52
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 622
    object btnGerarParcelas: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 200
      Height = 44
      Align = alLeft
      Caption = 'Gerar Parcelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnGerarParcelasClick
    end
    object btnLimparCampos: TButton
      AlignWithMargins = True
      Left = 210
      Top = 4
      Width = 200
      Height = 44
      Align = alLeft
      Caption = 'Limpar Campos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnLimparCamposClick
    end
  end
end
