unit frelatorios;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, LR_Class,
  LR_DBSet, dprincipal;

type

  { TFormRelatorios }

  TFormRelatorios = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ReportDB: TfrDBDataSet;
    ReportPrincipal: TfrReport;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ShowReport(ReportName: String);
  private

  public

  end;

var
  FormRelatorios: TFormRelatorios;

implementation

{$R *.lfm}

{ TFormRelatorios }

procedure TFormRelatorios.ShowReport(ReportName: String);
begin
  with DataModule1.ZReadOnlyQueryConsulta do begin
    Close();
    SQL.LoadFromFile('relatorios' + DirectorySeparator + ReportName + '.sql');
    Open();
  end;
  ReportPrincipal.LoadFromFile('relatorios' + DirectorySeparator + ReportName +'.lrf');
  ReportPrincipal.ShowReport();
end;


procedure TFormRelatorios.Button1Click(Sender: TObject);
begin
  ShowReport('listagem');
end;

procedure TFormRelatorios.Button2Click(Sender: TObject);
begin
  ShowReport('veiculos');
end;

procedure TFormRelatorios.Button3Click(Sender: TObject);
begin
  ShowReport('pagamentos');
end;



end.

