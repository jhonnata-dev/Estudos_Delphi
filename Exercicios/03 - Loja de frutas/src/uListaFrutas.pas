unit uListaFrutas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    pnlBanner: TPanel;
    pnlPrincipal: TPanel;
    pnlRodape: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    pnlEditar: TPanel;
    Label1: TLabel;
    edtNomeFruta: TEdit;
    Label3: TLabel;
    edtPrecoFruta: TEdit;
    Label2: TLabel;
    edtQuantidade: TEdit;
    btnAdicionar: TButton;
    btnNovaFruta: TButton;
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnAdicionarClick(Sender: TObject);
begin
  btnA
end;

end.
