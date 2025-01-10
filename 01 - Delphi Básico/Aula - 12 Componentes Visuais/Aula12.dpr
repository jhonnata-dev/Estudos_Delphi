program Aula12;

uses
  Vcl.Forms,
  fPrincipal in 'fPrincipal.pas' {Form1},
  fPesquisaProdutos in 'fPesquisaProdutos.pas' {frmPesquisaProdutos},
  fCadastroProdutos in 'fCadastroProdutos.pas' {frmCadastroProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmPesquisaProdutos, frmPesquisaProdutos);
  Application.CreateForm(TfrmCadastroProdutos, frmCadastroProdutos);
  Application.Run;
end.
