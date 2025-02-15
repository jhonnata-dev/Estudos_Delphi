unit uAula06;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Edit1Click(Sender: TObject);
    procedure Edit1DblClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}


{ TForm1 }

procedure TForm1.Edit1Click(Sender: TObject);
begin
  //ShowMessage(TEdit(Sender).Text);
end;

procedure TForm1.Edit1DblClick(Sender: TObject);
begin
  //ShowMessage(TEdit(Sender).Text);
end;

procedure TForm1.Edit1Enter(Sender: TObject);
begin
  ShowMessage('OnEnter');
end;

procedure TForm1.Edit1Exit(Sender: TObject);
begin
  ShowMessage('OnExit');
end;

procedure TForm1.Memo1Click(Sender: TObject);
begin
  ShowMessage(TMemo(Sender).Text);
end;

end.

