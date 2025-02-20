unit uHerancaListagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaBase, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.DBCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TfrmHerancaListagem = class(TfrmHerancaBase)
    pnlFormPrincipal: TPanel;
    pnlFormPrincipalTop: TPanel;
    pnlFormPrincipalBottom: TPanel;
    grdListagem: TDBGrid;
    pnlLineBottom: TPanel;
    pnlLineTop: TPanel;
    mskPesquisar: TMaskEdit;
    lblPesquisarPor: TLabel;
    btnNovo: TBitBtn;
    btnModificar: TBitBtn;
    btnApagar: TBitBtn;
    DBNavigator1: TDBNavigator;
    btnFechar: TBitBtn;
    QryListagem: TZQuery;
    DtsListagem: TDataSource;
    procedure btnNovoMouseEnter(Sender: TObject);
    procedure btnNovoMouseLeave(Sender: TObject);
    procedure btnModificarMouseEnter(Sender: TObject);
    procedure btnApagarMouseEnter(Sender: TObject);
    procedure btnFecharMouseEnter(Sender: TObject);
    procedure btnModificarMouseLeave(Sender: TObject);
    procedure btnApagarMouseLeave(Sender: TObject);
    procedure btnFecharMouseLeave(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHerancaListagem: TfrmHerancaListagem;

implementation

{$R *.dfm}

uses uFuncoes, uPrincipal, uDtmConexao;

procedure TfrmHerancaListagem.btnApagarMouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 8);
end;

procedure TfrmHerancaListagem.btnApagarMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 9);
end;

procedure TfrmHerancaListagem.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmHerancaListagem.btnFecharMouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 10);
end;

procedure TfrmHerancaListagem.btnFecharMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 11);
end;

procedure TfrmHerancaListagem.btnModificarMouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 2);
end;

procedure TfrmHerancaListagem.btnModificarMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 3);
end;

procedure TfrmHerancaListagem.btnNovoMouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 0);
end;

procedure TfrmHerancaListagem.btnNovoMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 1);
end;

procedure TfrmHerancaListagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FecharAba(Self.Caption, frmPrincipal.pgcPrincipal);

end;

end.
