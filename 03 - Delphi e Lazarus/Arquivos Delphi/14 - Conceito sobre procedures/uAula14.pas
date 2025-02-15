unit uAula14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure VerificarParImpar(iNumero : Integer);

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  VerificarParImpar(StrToInt(Edit1.Text));
end;

procedure TForm1.VerificarParImpar(iNumero: Integer);
begin
  if (iNumero mod 2 = 0) then
  begin
    ShowMessage('Número: ' + iNumero.ToString() + ' é par');
  end
  else
  begin
    ShowMessage('Número: ' + iNumero.ToString() + ' è impar')
  end;
end;

end.
