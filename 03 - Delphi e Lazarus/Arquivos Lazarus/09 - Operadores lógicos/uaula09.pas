unit uAula09;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  a : integer;
  b : integer;
  c : boolean;

begin
  a := 5;
  b := 2;

  if (a = 5) and (b = 2) then
  begin
    Edit1.Text := 'Verdadeiro';
  end
  else
  begin
    Edit1.Text := 'Falso';
  end;

  b := 4;
  a := 10;
  if (a = 5) or (b = 2) then
  begin
    Edit2.Text := 'Verdadeiro';
  end
  else
  begin
    Edit2.Text := 'Falso';
  end;

  c := not True;
  if (c = True) then
  begin
    Edit3.Text := 'Verdadeiro';
  end
  else
  begin
    Edit3.Text := 'Falso';
  end;
end;

end.

