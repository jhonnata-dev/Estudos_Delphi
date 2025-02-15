unit uAula15;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    function Soma(a, b : Integer) : Integer;
    function ComparaNumero(a, b : Integer) : Boolean;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit3.Text := Soma(StrToInt(Edit1.Text), StrToInt(Edit2.Text)).ToString;
  CheckBox1.Checked := ComparaNumero(StrToInt(Edit1.Text), StrToInt(Edit2.Text));

end;

function TForm1.Soma(a, b: Integer): Integer;
begin
  Result := a + b;
end;

function TForm1.ComparaNumero(a, b: Integer): Boolean;
begin
  Result := a = b;
end;

end.

