unit uAula03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtMensagem: TEdit;
    btnOK: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit2: TEdit;
    Button2: TButton;
    Edit3: TEdit;
    chkTeste: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

end.
