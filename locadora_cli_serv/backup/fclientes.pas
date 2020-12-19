unit fclientes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  Buttons, dprincipal, fbuscacli;

type

  { TFormCli }

  TFormCli = class(TForm)
    BitBtnBuscar: TBitBtn;
    BitBtnFechar: TBitBtn;
    DBEditMat: TDBEdit;
    DBEditMed2: TDBEdit;
    DBEditMed3: TDBEdit;
    DBEditN: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure BitBtnBuscarClick(Sender: TObject);
  private

  public

  end;

var
  FormCli: TFormCli;

implementation

{$R *.lfm}

{ TFormCli }

procedure TFormCli.BitBtnBuscarClick(Sender: TObject);
begin
  FormCBusca.ShowModal();
end;

end.

