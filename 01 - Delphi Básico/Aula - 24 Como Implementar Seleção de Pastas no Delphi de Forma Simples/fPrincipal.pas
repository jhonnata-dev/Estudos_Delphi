unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button2: TButton;
    FileOpenDialog1: TFileOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  lSelectDir: string;
begin



end;

procedure TForm1.Button2Click(Sender: TObject);
begin

  if FileOpenDialog1.Execute then
  begin
    ShowMessage('A pasta selecionada é esta: ' +
                FileOpenDialog1.FileName);
  end
  else
  begin
    ShowMessage('A seleção foi cancelada!');
  end;

end;

end.
