unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    pnlCampos: TPanel;
    pnlMenu: TPanel;
    mmoListaPessoas: TMemo;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure pnlCamposClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.pnlCamposClick(Sender: TObject);
begin

end;

end.
