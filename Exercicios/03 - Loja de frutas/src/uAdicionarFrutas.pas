unit uAdicionarFrutas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    pnlBanner: TPanel;
    pnlPrincipal: TPanel;
    pnlRodape: TPanel;
    edtNomeFruta: TEdit;
    edtQuantidade: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtPrecoFruta: TEdit;
    btnAdicionar: TButton;
    btnNovaFruta: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
