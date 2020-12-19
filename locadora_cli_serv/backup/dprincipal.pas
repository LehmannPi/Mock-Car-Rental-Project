unit dprincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, SQLDB, ZConnection, ZDataset, ZSqlUpdate, ZSequence;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    SourceConsulta: TDataSource;
    SourceV: TDataSource;
    SourceCli: TDataSource;
    SourceAl: TDataSource;
    SourcePag: TDataSource;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    ZQuery2contato: TStringField;
    ZQuery2endereco: TStringField;
    ZQuery2id_cliente: TLongintField;
    ZQuery2nome_cliente: TStringField;
    ZQuery3: TZQuery;
    ZQuery4: TZQuery;
    ZReadOnlyQueryConsulta: TZReadOnlyQuery;
    ZUpdateSQL1: TZUpdateSQL;
    ZUpdateSQL2: TZUpdateSQL;
    ZUpdateSQL3: TZUpdateSQL;
    ZUpdateSQL4: TZUpdateSQL;

  private

  public

  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

{ TDataModule1 }

end.

