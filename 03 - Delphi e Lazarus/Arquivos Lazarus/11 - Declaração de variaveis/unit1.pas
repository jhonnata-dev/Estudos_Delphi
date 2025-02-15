unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    xPrivate : Integer;

  public
    xPublic : Integer;

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

uses
  unit2;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  xPrivate := 10;
  xPublic := 20;

  Edit1.Text := xPrivate.ToString();
  Edit2.Text := xPublic.ToString();

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form2 := TForm2.Create(self);
  Form2.ShowModal;
  Form2.Release;

end;

end.

