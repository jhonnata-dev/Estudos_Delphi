program ProjetoAula09;

uses
  Vcl.Forms,
  uAula09 in 'uAula09.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
