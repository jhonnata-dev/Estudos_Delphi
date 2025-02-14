unit uAula03;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btnOK: TButton;
    Button2: TButton;
    chkTeste: TCheckBox;
    edtMensagem: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

end;

end.

