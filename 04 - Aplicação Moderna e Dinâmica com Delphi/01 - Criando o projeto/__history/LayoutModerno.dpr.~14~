program LayoutModerno;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uSplash in 'uSplash.pas' {frmSplash},
  uHerancaBase in 'uHerancaBase.pas' {frmHerancaBase},
  uHerancaListagem in 'uHerancaListagem.pas' {frmHerancaListagem},
  uHerancaCadastro in 'uHerancaCadastro.pas' {frmHerancaCadastro},
  uFuncoes in 'uFuncoes.pas',
  uDtmConexao in 'uDtmConexao.pas' {dtmConexao: TDataModule},
  uBancoListagem in 'uBancoListagem.pas' {frmBancoListagem},
  uEnum in 'uEnum.pas',
  uBancoCadastro in 'uBancoCadastro.pas' {frmBancoCadastro},
  uCartaoCadastro in 'uCartaoCadastro.pas' {frmCartaoCadastro},
  uCartaoListagem in 'uCartaoListagem.pas' {frmCartaoListagem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCartaoCadastro, frmCartaoCadastro);
  Application.CreateForm(TfrmCartaoListagem, frmCartaoListagem);
  Application.Run;
end.
