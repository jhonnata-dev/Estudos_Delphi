unit uAula06;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Edit1Change(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
    procedure Edit1DblClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Edit1Change(Sender: TObject);
begin
  //ShowMessage('OnClick');
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
  //ShowMessage(TMemo(Sender).Text);
end;

end.
