unit fpag;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  Buttons, DBDateTimePicker, dprincipal, fbuscap;

type

  { TFormPag }

  TFormPag = class(TForm)
    BitBtnBuscar: TBitBtn;
    BitBtnFechar: TBitBtn;
    DBDateTimePicker1: TDBDateTimePicker;
    DBEditMat: TDBEdit;
    DBEditMed2: TDBEdit;
    DBEditMed3: TDBEdit;
    DBEditN: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure BitBtnBuscarClick(Sender: TObject);
  private

  public

  end;

var
  FormPag: TFormPag;

implementation

{$R *.lfm}

{ TFormPag }

procedure TFormPag.BitBtnBuscarClick(Sender: TObject);
begin
  FormPBusca.ShowModal();
end;

end.

