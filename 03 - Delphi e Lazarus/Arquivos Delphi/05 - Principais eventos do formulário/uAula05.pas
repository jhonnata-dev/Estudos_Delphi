unit uAula05;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure FormClick(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    bFechar : boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  bFechar := True;
  Close;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  //ShowMessage('Evento OnActivate')
end;

procedure TForm1.FormClick(Sender: TObject);
begin
  //ShowMessage('Evento onClick');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //ShowMessage('Evento OnClose')
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := bFechar;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //ShowMessage('Evento OnCreate')
  bFechar := False;
end;

procedure TForm1.FormDblClick(Sender: TObject);
begin
  //ShowMessage('Evento OnDbClick')
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  //ShowMessage('Evento OnDestroy')
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  //ShowMessage('Evento OnShow')
end;

end.
