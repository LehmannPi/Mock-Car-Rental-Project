unit falugueis;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  DBExtCtrls, Buttons, DBDateTimePicker, dprincipal, fbusal;

type

  { TFormAl }

  TFormAl = class(TForm)
    BitBtnBuscar: TBitBtn;
    BitBtnFechar: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    DBDateTimePicker1: TDBDateTimePicker;
    DBDateTimePicker2: TDBDateTimePicker;
    DBEditMat: TDBEdit;
    DBEditMed2: TDBEdit;
    DBEditMed3: TDBEdit;
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
  FormAl: TFormAl;

implementation

{$R *.lfm}

{ TFormAl }

procedure TFormAl.BitBtnBuscarClick(Sender: TObject);
begin
  FormABusca.ShowModal();
end;

end.

