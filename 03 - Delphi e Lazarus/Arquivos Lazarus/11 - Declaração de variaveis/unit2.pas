unit unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

uses
  Unit1;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.xPublic := 100;
  Edit1.Text := Form1.xPublic.ToString();

end;

end.

