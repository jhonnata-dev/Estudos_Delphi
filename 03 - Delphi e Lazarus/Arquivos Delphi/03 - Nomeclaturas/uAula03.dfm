object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Tela Principal'
  ClientHeight = 495
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object edtMensagem: TEdit
    Left = 72
    Top = 48
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Digite uma Mensagem'
  end
  object btnOK: TButton
    Left = 622
    Top = 47
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 40
    Top = 128
    Width = 675
    Height = 225
    Caption = 'Panel1'
    TabOrder = 2
    object Panel2: TPanel
      Left = 16
      Top = 136
      Width = 641
      Height = 73
      Caption = 'Panel2'
      TabOrder = 0
      object Edit3: TEdit
        Left = 16
        Top = 24
        Width = 121
        Height = 23
        TabOrder = 0
        Text = 'Edit3'
      end
    end
    object Edit2: TEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 23
      TabOrder = 1
      Text = 'Edit2'
    end
    object Button2: TButton
      Left = 582
      Top = 31
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 2
    end
  end
  object chkTeste: TCheckBox
    Left = 344
    Top = 408
    Width = 97
    Height = 17
    Caption = 'chkTeste'
    TabOrder = 3
  end
end
