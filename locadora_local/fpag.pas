unit fpag;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  DBDateTimePicker, dprincipal;

type

  { TFormPag }

  TFormPag = class(TForm)
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
  private

  public

  end;

var
  FormPag: TFormPag;

implementation

{$R *.lfm}

end.

