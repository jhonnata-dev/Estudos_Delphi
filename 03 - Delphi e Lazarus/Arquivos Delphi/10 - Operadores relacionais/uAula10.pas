unit uAula10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  a : integer;
  b: integer;

begin
  a := 10;
  b := 20;

  if (a > b) then
  begin
    Edit1.Text := 'A � maior que B';
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
    Edit3.Text := 'A � maior ou igual a B';
  end
  else
  begin
    Edit3.Text := 'Falso';
  end;

  if (a <= b) then
  begin
    Edit4.Text := 'A � menos ou igual a B';
  end
  else
  begin
    Edit4.text := 'Falso';
  end;

  if (a = b) then
  begin
    Edit5.Text := 'A � igual a B';
  end
  else
  begin
    Edit5.Text := 'Falso';
  end;

  if (a <> b) then
  begin
    Edit6.Text := 'A � diferente de B';
  end
  else
  begin
    Edit6.Text := 'Falso';
  end;

end;

end.
