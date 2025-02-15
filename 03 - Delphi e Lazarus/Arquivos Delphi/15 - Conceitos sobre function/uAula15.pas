unit uAula15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function Soma(a, b : Integer) : Integer;
    function CompararNumero(a, b : Integer) : Boolean;

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
  Edit3.Text := Soma(StrToInt(Edit1.Text), StrToInt(Edit2.Text)).ToString;
  CheckBox1.Checked := CompararNumero(StrToInt(Edit1.Text), StrToInt(Edit2.Text));

end;

function TForm1.CompararNumero(a, b: Integer): Boolean;
begin
  Result := a = b;
end;

function TForm1.Soma(a, b: Integer): Integer;
begin
  Result := a + b;

end;

end.
