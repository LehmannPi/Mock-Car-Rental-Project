unit fclientes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls;

type

  { TFormCli }

  TFormCli = class(TForm)
    DBEditMat: TDBEdit;
    DBEditMed2: TDBEdit;
    DBEditMed3: TDBEdit;
    DBEditN: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
  private

  public

  end;

var
  FormCli: TFormCli;

implementation

{$R *.lfm}

end.

