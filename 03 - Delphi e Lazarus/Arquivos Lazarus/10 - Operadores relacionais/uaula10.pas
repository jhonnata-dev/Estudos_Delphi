unit uAula10;

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
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
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
  b: integer;

begin
  a := 10;
  b := 20;

  if (a > b) then
  begin
    Edit1.Text := 'A é maior que B';
  end
  else
  begin
    Edit1.Text := 'Falso';
  end;

  if (a < b) then
  begin
    Edit2.Text := 'A menor que B';
  end
  else
  begin
    Edit2.Text := 'Falso';
  end;

  if (a >= b) then
  begin
    Edit3.Text := 'A é maior ou igual a B';
  end
  else
  begin
    Edit3.Text := 'Falso';
  end;

  if (a <= b) then
  begin
    Edit4.Text := 'A é menos ou igual a B';
  end
  else
  begin
    Edit4.text := 'Falso';
  end;

  if (a = b) then
  begin
    Edit5.Text := 'A é igual a B';
  end
  else
  begin
    Edit5.Text := 'Falso';
  end;

  if (a <> b) then
  begin
    Edit6.Text := 'A é diferente de B';
  end
  else
  begin
    Edit6.Text := 'Falso';
  end;
end;

end.

