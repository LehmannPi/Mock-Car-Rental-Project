unit dconexao;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, ZConnection;

type

  { TDataConexao }

  TDataConexao = class(TDataModule)
    ZConnectionP: TZConnection;
  private

  public

  end;

var
  DataConexao: TDataConexao;

implementation

{$R *.lfm}

end.

