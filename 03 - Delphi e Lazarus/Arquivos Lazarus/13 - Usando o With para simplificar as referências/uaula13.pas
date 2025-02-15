unit uAula13;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
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
begin
  {Edit1.Text := 'Esse é o texto';
  Edit1.MaxLength := 50;
  Edit1.Width := 300;
  Edit1.Color := clYellow;
  Edit1.Font.Size := 15;
  Edit1.Font.Style := [fsBold];
  Edit1.Height := 50;}

  With Edit1 do
  begin
    Text := 'Esse é o texto';
    MaxLength := 50;
    Width := 300;
    Color := clYellow;
    Font.Size := 15;
    Font.Style := [fsBold];
    Height := 50;
  end;

end;

end.

