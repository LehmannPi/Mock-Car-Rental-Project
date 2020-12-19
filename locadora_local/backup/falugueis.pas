unit falugueis;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  DBExtCtrls, DBDateTimePicker, dprincipal;

type

  { TFormAl }

  TFormAl = class(TForm)
    DBDateTimePicker1: TDBDateTimePicker;
    DBDateTimePicker2: TDBDateTimePicker;
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
    Label6: TLabel;
    Label7: TLabel;
  private

  public

  end;

var
  FormAl: TFormAl;

implementation

{$R *.lfm}

end.

