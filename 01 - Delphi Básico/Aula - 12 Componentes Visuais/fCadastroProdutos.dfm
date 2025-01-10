object frmCadastroProdutos: TfrmCadastroProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 502
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
    Caption = 'Cadastro de Produtos'
    Color = 5138078
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 624
    Height = 412
    Align = alClient
    TabOrder = 1
    ExplicitTop = 39
    ExplicitHeight = 351
    object Label1: TLabel
      Left = 16
      Top = 35
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 16
      Top = 99
      Width = 30
      Height = 15
      Caption = 'Pre'#231'o'
    end
    object Label3: TLabel
      Left = 16
      Top = 200
      Width = 62
      Height = 15
      Caption = 'Observa'#231#227'o'
    end
    object edtNome: TEdit
      Left = 16
      Top = 56
      Width = 201
      Height = 23
      TabOrder = 0
    end
    object RadioGroup1: TRadioGroup
      Left = 392
      Top = 35
      Width = 209
      Height = 65
      Caption = 'situacaoDoProduto'
      Columns = 2
      Items.Strings = (
        'Ativo'
        'Inativo')
      TabOrder = 1
    end
    object edtPreco: TEdit
      Left = 16
      Top = 120
      Width = 201
      Height = 23
      TabOrder = 2
    end
    object mmoObs: TMemo
      Left = 16
      Top = 216
      Width = 585
      Height = 121
      Lines.Strings = (
        'mmoObs')
      TabOrder = 3
    end
    object chkPromocao: TCheckBox
      Left = 392
      Top = 123
      Width = 97
      Height = 17
      Caption = 'Promo'#231#227'o'
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 453
    Width = 624
    Height = 49
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 392
    object Button1: TButton
      AlignWithMargins = True
      Left = 545
      Top = 4
      Width = 75
      Height = 41
      Align = alRight
      Caption = 'Salvar'
      TabOrder = 0
      ExplicitLeft = 272
      ExplicitTop = 16
      ExplicitHeight = 25
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 464
      Top = 4
      Width = 75
      Height = 41
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 1
      ExplicitLeft = 272
      ExplicitTop = 16
      ExplicitHeight = 25
    end
  end
end
