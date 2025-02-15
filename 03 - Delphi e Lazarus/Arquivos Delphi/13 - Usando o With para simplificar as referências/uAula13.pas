unit uAula13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
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
