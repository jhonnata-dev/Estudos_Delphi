unit uAula12;

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
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  dDateTime : TDateTime;
  dDate : TDateTime;
begin
  dDateTime := Now;
  dDate := Date;

  Edit1.Text := DateTimeToStr(dDateTime);
  Edit2.Text := DateToStr(dDate);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

