unit uBancoListagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, uEnum;

type
  TfrmBancoListagem = class(TfrmHerancaListagem)
    QryListagemBancoId: TZIntegerField;
    QryListagemCodBanco: TZUnicodeStringField;
    QryListagemDescBanco: TZUnicodeStringField;
    QryListagemWebSite: TZUnicodeStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
  private
    procedure AbrirCadastro(estadoCadastro: TEstadoCadastro);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBancoListagem: TfrmBancoListagem;

implementation

{$R *.dfm}

uses uBancoCadastro;

{ TfrmBancoListagem }

procedure TfrmBancoListagem.AbrirCadastro(estadoCadastro: TEstadoCadastro);
begin
  try
    frmBancoCadastro := TfrmBancoCadastro.Create(Self);
    frmBancoCadastro.EstadoDoCadastro := estadoCadastro;
    case estadoCadastro of
      ecNovo: begin
        frmBancoCadastro.QryCadastro.ParamByName('BancoId').AsInteger := -1;

        frmBancoCadastro.QryCadastro.Open;
        frmBancoCadastro.QryCadastro.Append;
      end;

      ecModificar: begin
        frmBancoCadastro.QryCadastro.ParamByName('BancoId').AsInteger := QryListagemBancoId.AsInteger;
        frmBancoCadastro.QryCadastro.Open;
        frmBancoCadastro.QryCadastro.Edit;
      end;

      ecApagar: begin
        frmBancoCadastro.QryCadastro.ParamByName('BancoId').AsInteger := QryListagemBancoId.AsInteger;
        frmBancoCadastro.QryCadastro.Open;
        frmBancoCadastro.HabilitaDesabilitaTela(False)
      end;
    end;

    frmBancoCadastro.ShowModal;

  finally
    frmBancoCadastro.Release;
    Self.RefreshQuery(QryListagem);
  end;
end;

procedure TfrmBancoListagem.btnApagarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecApagar);
end;

procedure TfrmBancoListagem.btnModificarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecModificar);
end;

procedure TfrmBancoListagem.btnNovoClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecNovo);
end;

initialization
  RegisterClass(TfrmBancoListagem);

end.
