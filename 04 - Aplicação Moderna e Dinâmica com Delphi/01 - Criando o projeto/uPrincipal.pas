unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, uDtmConexao, Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList,
  Vcl.WinXCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlPrincipalLeft: TPanel;
    pnlPrincipalCenter: TPanel;
    pnlPrincipalCenterLeft: TPanel;
    pnlPrincipalCenterRight: TPanel;
    pnlPrincipalCenterTop: TPanel;
    pnlPrincipalCenterBottom: TPanel;
    pgcPrincipal: TPageControl;
    tbsMenu: TTabSheet;
    pnlPrincipalTop: TPanel;
    Image1: TImage;
    imgButtons: TImageList;
    scbIcones: TScrollBox;
    Panel1: TPanel;
    Label1: TLabel;
    imgBtnClose: TImage;
    pnlPesquisaIcone: TPanel;
    edtLocalizaMenu: TSearchBox;
    pnlMenu: TPanel;
    Panel2: TPanel;
    Image2: TImage;
    Label2: TLabel;
    btnFinanceiro: TBitBtn;
    btnVendas: TBitBtn;
    btnConfiguracao: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtLocalizaMenuInvokeSearch(Sender: TObject);
    procedure imgBtnCloseClick(Sender: TObject);
    procedure btnFinanceiroClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
    procedure btnConfiguracaoClick(Sender: TObject);
    procedure btnFinanceiroMouseEnter(Sender: TObject);
    procedure btnFinanceiroMouseLeave(Sender: TObject);
    procedure btnVendasMouseEnter(Sender: TObject);
    procedure btnVendasMouseLeave(Sender: TObject);
    procedure btnConfiguracaoMouseEnter(Sender: TObject);
    procedure btnConfiguracaoMouseLeave(Sender: TObject);
  private
    { Private declarations }
    pnlAcao: TPanel;
    pnlDescAcao: TPanel;
    pnlLeft: TPanel;
    pnlRight: TPanel;
    pnlTop: TPanel;
    lblDescAcao: TLabel;
    imgIcone: TImage;
    procedure ClickChamada(Sender: TObject);
    procedure ControleMouseEnterTimage(Sender: TObject);
    procedure ControleMouseLeaveTimage(Sender: TObject);
    procedure DestroyIconesMenuDinamico;
    procedure MontarMenu;
    procedure FiltrarMenuProcesso(aProcesso: string);
    procedure FiltrarMenuLikeTitulo(aLike: string);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  dtmConexao: TdtmConexao;

implementation

{$R *.dfm}

uses uSplash, uHerancaBase, uFuncoes, uBancoListagem;

procedure TfrmPrincipal.btnConfiguracaoClick(Sender: TObject);
begin
  FiltrarMenuProcesso('CNF');
end;

procedure TfrmPrincipal.btnConfiguracaoMouseEnter(Sender: TObject);
begin
  ButtonMouseEnter(Sender, 4);
end;

procedure TfrmPrincipal.btnConfiguracaoMouseLeave(Sender: TObject);
begin
  ButtonMouseLeave(Sender, 5);
end;

procedure TfrmPrincipal.btnFinanceiroClick(Sender: TObject);
begin
  FiltrarMenuProcesso('FIN');
end;

procedure TfrmPrincipal.btnFinanceiroMouseEnter(Sender: TObject);
begin
  ButtonMouseEnter(Sender, 0);
end;

procedure TfrmPrincipal.btnFinanceiroMouseLeave(Sender: TObject);
begin
  ButtonMouseLeave(Sender, 1);
end;

procedure TfrmPrincipal.btnVendasClick(Sender: TObject);
begin
  FiltrarMenuProcesso('VEN');
end;

procedure TfrmPrincipal.btnVendasMouseEnter(Sender: TObject);
begin
  ButtonMouseEnter(Sender, 2);
end;

procedure TfrmPrincipal.btnVendasMouseLeave(Sender: TObject);
begin
  ButtonMouseLeave(Sender, 3);
end;

// ButtonMouseEnter(Sender,
// ButtonMouseLeave(Sender,

procedure TfrmPrincipal.FiltrarMenuProcesso(aProcesso: string);
begin
  dtmConexao.QryMenu.Close;
  dtmConexao.QryMenu.SQL.Clear;
  dtmConexao.QryMenu.SQL.Add(' SELECT menuId, titulo, nomeImagem, nomeFormulario, processo FROM Menu ');
  dtmConexao.QryMenu.SQL.ADD(' WHERE processo = :processo ');
  dtmConexao.QryMenu.ParamByName('processo').AsString := aProcesso;
  dtmConexao.QryMenu.Open;
  MontarMenu;
end;

procedure TfrmPrincipal.FiltrarMenuLikeTitulo(aLike: string);
begin
  dtmConexao.QryMenu.Close;
  dtmConexao.QryMenu.SQL.Clear;
  dtmConexao.QryMenu.SQL.Add(' SELECT menuId, titulo, nomeImagem, nomeFormulario, processo FROM Menu ');
  dtmConexao.QryMenu.SQL.Add(' WHERE titulo like :titulo ');
  dtmConexao.QryMenu.ParamByName('titulo').AsString := '%' + aLike + '%';
  dtmConexao.QryMenu.Open;
  MontarMenu;
end;

procedure TfrmPrincipal.MontarMenu;
var
  iLeft, iTop : Integer;
  cColorPanelIcone : TColor;
  png : TPngImage;
begin
  iLeft := 6;
  iTop  := 6;

  cColorPanelIcone := $00EBDDDA;

  DestroyIconesMenuDinamico;

  while not dtmConexao.QryMenu.Eof do begin
    pnlAcao                  := TPanel.Create(scbIcones);
    pnlAcao.Parent           := scbIcones;
    pnlAcao.BevelOuter       := bvNone;
    pnlAcao.Height           := 82;
    pnlAcao.Left             := iLeft;
    pnlAcao.Width            := 130;
    pnlAcao.Name             := '___pnl___' + dtmConexao.QryMenu.FieldByName('menuId').AsString;
    pnlAcao.Top              := iTop;
    pnlAcao.Caption          := EmptyStr;
    pnlAcao.Tag              := 9999;
    pnlAcao.Color            := clWhite;
    pnlAcao.ParentBackground := False;

    pnlDescAcao                  := TPanel.Create(Application);
    pnlDescAcao.Parent           := pnlAcao;
    pnlDescAcao.Color            := cColorPanelIcone;
    pnlDescAcao.Height           := 15;
    pnlDescAcao.Align            := alBottom;
    pnlDescAcao.BevelOuter       := bvNone;
    pnlDescAcao.ParentBackground := False;

    pnlLeft                  := TPanel.Create(Application);
    pnlLeft.Parent           := pnlAcao;
    pnlLeft.Align            := alLeft;
    pnlLeft.Width            := 1;
    pnlLeft.Color            := cColorPanelIcone;
    pnlLeft.BevelOuter       := bvNone;
    pnlLeft.ParentBackground := False;

    pnlRight                  := TPanel.Create(Application);
    pnlRight.Parent           := pnlAcao;
    pnlRight.Align            := alRight;
    pnlRight.Width            := 1;
    pnlRight.Color            := cColorPanelIcone;
    pnlRight.BevelOuter       := bvNone;
    pnlRight.ParentBackground := False;

    pnlTop                  := TPanel.Create(Application);
    pnlTop.Parent           := pnlAcao;
    pnlTop.Align            := alTop;
    pnlTop.Height           := 1;
    pnlTop.Color            := cColorPanelIcone;
    pnlTop.BevelOuter       := bvNone;
    pnlTop.ParentBackground := False;

    lblDescAcao             := TLabel.Create(Application);
    lblDescAcao.Parent      := pnlDescAcao;
    lblDescAcao.Align       := alClient;
    lblDescAcao.Alignment   := taCenter;
    lblDescAcao.Font.Style  := [TFontStyle.fsUnderline, TFontStyle.fsBold];
    lblDescAcao.Font.Name   := 'Tahoma';
    lblDescAcao.Font.Size   := 8;
    lblDescAcao.Font.Color  := clBlack;
    lblDescAcao.Cursor      := crHandPoint;
    lblDescAcao.Caption     := dtmConexao.QryMenu.FieldByName('titulo').AsString;
    lblDescAcao.Hint        := dtmConexao.QryMenu.FieldByName('nomeFormulario').AsString;
    lblDescAcao.HelpKeyword := '1';
    lblDescAcao.ShowHint    := False;
    lblDescAcao.OnClick     := ClickChamada;

    imgIcone             := TImage.Create(Application);
    png                  := TPngImage.Create;
    imgIcone.Parent      := pnlAcao;
    imgIcone.Align       := alClient;
    imgIcone.Transparent := True;
    imgIcone.Center      := True;

    try
      png.LoadFromFile('D:\\Programação\\Cursos Delphi\\04 - Aplicação Moderna e Dinâmica com Delphi\\images\\' + dtmConexao.QryMenu.FieldByName('nomeImagem').AsString);
      imgIcone.Picture.Assign(png);
    finally
      png.Free;
    end;

    imgIcone.Hint        := dtmConexao.QryMenu.FieldByName('nomeFormulario').AsString;
    imgIcone.HelpKeyword := '1';
    imgIcone.ShowHint    := False;
    imgIcone.OnClick     := ClickChamada;

    imgIcone.OnMouseEnter   := ControleMouseEnterTimage;
    imgIcone.OnMouseLeave   := ControleMouseLeaveTimage;

    iLeft := iLeft + pnlAcao.Width + 6;

    if iLeft > (self.Width - (pnlPrincipalLeft.Width + pnlAcao.Width) ) then begin
      iLeft := 6;
      itop := iTop + pnlAcao.Height + 6;
    end;

    dtmConexao.QryMenu.Next;
  end;

  pgcPrincipal.ActivePage := tbsMenu;

end;

procedure TfrmPrincipal.DestroyIconesMenuDinamico;
var
  i: Integer;
begin
  i := scbIcones.ComponentCount;
  while i > 0 do begin
    Dec(i);
    if TComponent (scbIcones.Components[i]).Tag = 9999 then begin
       TComponent (scbIcones.Components[i]).Destroy;
    end;
  end;

end;

procedure TfrmPrincipal.edtLocalizaMenuInvokeSearch(Sender: TObject);
begin
  FiltrarMenuLikeTitulo(TSearchBox(Sender).Text);
end;

procedure TfrmPrincipal.ControleMouseEnterTimage(Sender: TObject);
var
  ControleAtivo: TWinControl;
begin
  ControleAtivo := TImage(Sender).Parent;
  
  if ControleAtivo is TPanel then begin
    TPanel(ControleAtivo).Color := $006CC2F0;
    TPanel(ControleAtivo).ParentBackground := False;
    
  end;
end;

procedure TfrmPrincipal.ControleMouseLeaveTimage(Sender: TObject);
var
  ControleAtivo: TWinControl;
begin
  ControleAtivo := TImage(Sender).Parent;

  if (ControleAtivo is TPanel) then begin
    TPanel(ControleAtivo).Color := clWhite;
    TPanel(ControleAtivo).ParentBackground := False;
    
  end;
end;


procedure TfrmPrincipal.ClickChamada(Sender: TObject);
begin
  if (Sender is TLabel) then begin
    CriarAba(TFormClass(FindClass(TLabel(Sender).Hint)), pgcPrincipal, -1);

  end
  else if (Sender is TImage) then begin
    CriarAba(TFormClass(FindClass(TImage(Sender).Hint)), pgcPrincipal, -1);
      
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(dtmConexao) then
  begin
    FreeAndNil(dtmConexao);
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  try
    dtmConexao := TdtmConexao.Create(Self);
    dtmConexao.SQLConnection.Connected := True;
  except
    ShowMessage('Erro ao conectar o banco de dados');
  end;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  frmSplash := TfrmSplash.Create(self);
  frmSplash.Show;
  frmSplash.Refresh;

  FiltrarMenuProcesso('FIN');

  Sleep(1000);

  if Assigned(frmSplash) then
  begin
    frmSplash.Free;
  end;
end;

procedure TfrmPrincipal.imgBtnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
