unit fveiculos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  Buttons, fbuscav;

type

  { TFormV }

  TFormV = class(TForm)
    BitBtnBuscar: TBitBtn;
    BitBtnFechar: TBitBtn;
    DBEditMat: TDBEdit;
    DBEditMed: TDBEdit;
    DBEditMed1: TDBEdit;
    DBEditMed2: TDBEdit;
    DBEditMed3: TDBEdit;
    DBEditN: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure BitBtnBuscarClick(Sender: TObject);
  private

  public

  end;

var
  FormV: TFormV;

implementation

{$R *.lfm}

{ TFormV }

procedure TFormV.BitBtnBuscarClick(Sender: TObject);
begin
  FormVBusca.ShowModal();
end;

end.

