unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uSplash;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  frmSplash := TfrmSplash.Create(self);
  frmSplash.Show;
  frmSplash.Refresh;
  Sleep(5000);

  if Assigned(frmSplash) then
  begin
    frmSplash.Free;
  end;
end;

end.
