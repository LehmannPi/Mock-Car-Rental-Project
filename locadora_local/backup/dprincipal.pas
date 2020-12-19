unit dprincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, ZConnection, ZDataset, ZSqlUpdate;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    SourceConsulta: TDataSource;
    SourceV: TDataSource;
    SourceCli: TDataSource;
    SourceAl: TDataSource;
    SourcePag: TDataSource;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    ZQuery3: TZQuery;
    ZQuery4: TZQuery;
    ZReadOnlyQueryConsulta: TZReadOnlyQuery;
    ZUpdateSQL1: TZUpdateSQL;
    ZUpdateSQL2: TZUpdateSQL;
    ZUpdateSQL3: TZUpdateSQL;
    ZUpdateSQL4: TZUpdateSQL;
    procedure DataModuleCreate(Sender: TObject);
  private

  public

  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

{ TDataModule1 }

procedure TDataModule1.DataModuleCreate(Sender: TObject);
var
  DBDir, DBName: String;
begin
  DBDir := ExtractFilePath(ApplicationName);
  DBName := DBDir + DirectorySeparator + 'locadora.db';
  ZConnection1.Database:= DBName;
  ZConnection1.Connect();
  ZQuery1.Open();
  ZQuery2.Open();
  ZQuery3.Open();
  ZQuery4.Open();
end;

end.

