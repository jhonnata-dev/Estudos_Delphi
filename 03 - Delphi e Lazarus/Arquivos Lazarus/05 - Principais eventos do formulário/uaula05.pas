unit uAula05;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormClick(Sender: TObject);
begin
  ShowMessage('OnClick');
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  ShowMessage('OnClose');
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ShowMessage('OnCreate');
end;

procedure TForm1.FormDblClick(Sender: TObject);
begin
  ShowMessage('OnDbClick');
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  ShowMessage('OnDestroy');
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ShowMessage('OnShow');
end;

end.

