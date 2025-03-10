unit uFuncoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.DBCtrls, Vcl.ComCtrls;

  procedure CriarAba(aForm: TFormClass; aPageControl: TPageControl; aIndexImagem: Integer);
  function  AbaExiste(aNomeAba: string; aPageControl: TPageControl) : Boolean;
  procedure  FecharAba(aNomeAba: string; aPageControl: TPageControl);
  procedure ButtonMouseEnter(Sender: TObject; ImageIndex: Integer);
  procedure ButtonMouseLeave(Sender: Tobject; ImageIndex: Integer);

implementation

procedure CriarAba(aForm: TFormClass; aPageControl: TPageControl; aIndexImagem: Integer);
var
  TabSheet : TTabSheet;
  Form : TForm;
begin
  Form := aForm.Create(nil);

  if AbaExiste(Form.Caption, aPageControl) then
  begin
    if Assigned(Form) then
    begin
      FreeAndNil(Form);
    end;
    exit;

  end;

  TabSheet := TTabSheet.Create(nil);
  TabSheet.PageControl := aPageControl;
  TabSheet.Caption := Form.Caption;
  TabSheet.ImageIndex := aIndexImagem;

  Form.Align := alClient;
  Form.BorderStyle := bsNone;
  Form.Parent := TabSheet;
  Form.Show;

  aPageControl.ActivePage := TabSheet;

end;

function AbaExiste(aNomeAba: string; aPageControl: TPageControl) : Boolean;
var
  i : Integer;
begin
  Result := False;

  for i := 0 to aPageControl.PageCount - 1 do
  begin
    if LowerCase(aPageControl.Pages[i].Caption) = LowerCase(aNomeAba) then
    begin
      aPageControl.ActivePage := aPageControl.Pages[i];
      aPageControl.TabIndex := i;
      Result := True;
      Break;
    end;
  end;
end;

procedure  FecharAba(aNomeAba: string; aPageControl: TPageControl);
var
  i : Integer;
begin
  for i := 0 to aPageControl.PageCount - 1 do
  begin
    if LowerCase(aPageControl.Pages[i].Caption) = LowerCase(aNomeAba) then
    begin
      aPageControl.Pages[i].Destroy;
      aPageControl.ActivePageIndex := 0;
      Break;
    end;
  end;
end;

procedure ButtonMouseEnter(Sender: TObject; ImageIndex: Integer);
begin
  (Sender as TBitBtn).ImageIndex := ImageIndex;
  (Sender as TBitBtn).Cursor := crHandPoint;
end;

procedure ButtonMouseLeave(Sender: Tobject; ImageIndex: Integer);
begin
  (Sender as TBitBtn).ImageIndex := ImageIndex;
  (Sender as TBitBtn).Cursor := crDefault;
end;

end.
