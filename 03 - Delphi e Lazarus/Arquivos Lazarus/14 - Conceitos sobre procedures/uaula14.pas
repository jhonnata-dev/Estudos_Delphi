unit uAula14;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure VerificarParImpar(iNumero : integer);

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  VerificarParImpar(2);
end;

procedure TForm1.VerificarParImpar(iNumero: integer);
begin
  if (iNumero mod 2 = 0) then
  begin
    ShowMessage('Número: ' + iNumero.ToString() + ' é par');
  end
  else
  begin
    ShowMessage('Número: ' + iNumero.ToString() + ' é impar');
  end;

end;

end.

