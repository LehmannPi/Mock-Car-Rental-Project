unit fconsultas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  DBGrids, ExtCtrls, Spin, DBDateTimePicker, DateTimePicker, dprincipal;

type

  { TFormConsultas }

  TFormConsultas = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGrid;
    EditVal: TEdit;
    EditC: TEdit;
    EditMarca: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private

  public

  end;

var
  FormConsultas: TFormConsultas;
  check: Integer;

implementation

{$R *.lfm}

{ TFormConsultas }

procedure TFormConsultas.Button1Click(Sender: TObject);
begin;
  with DataModule1.ZReadOnlyQueryConsulta do begin
    Close();
    SQL.Clear();
    SQL.LoadFromFile('consultas'+ DirectorySeparator + 'marca.sql');
    ParamByName('nome').AsString := EditMarca.Text;
    Open();
  end;
end;

procedure TFormConsultas.Button2Click(Sender: TObject);
begin
  with DataModule1.ZReadOnlyQueryConsulta do begin
    Close();
    SQL.Clear();
    SQL.LoadFromFile('consultas'+ DirectorySeparator + 'ano.sql');
    ParamByName('inicio').AsInteger:=SpinEdit1.Value;
    ParamByName('fim').AsInteger:=SpinEdit2.Value;
    Open();
  end;
end;

procedure TFormConsultas.Button3Click(Sender: TObject);
begin
  with DataModule1.ZReadOnlyQueryConsulta do begin
    Close();
    SQL.Clear();
    SQL.LoadFromFile('consultas'+ DirectorySeparator + 'estado.sql');
    // CONTORNANDO APARENTE PROBLEMA DE .AsBoolean
    if CheckBox1.Checked = True then check := 1
    else
      check := 0;
    ParamByName('estado').AsInteger := check;
    Open();
  end;
end;

procedure TFormConsultas.Button4Click(Sender: TObject);
begin
    with DataModule1.ZReadOnlyQueryConsulta do begin
    Close();
    SQL.Clear();
    SQL.LoadFromFile('consultas'+ DirectorySeparator + 'cli.sql');
    ParamByName('nome').AsString := EditC.Text;
    Open();
  end;
end;

procedure TFormConsultas.Button5Click(Sender: TObject);
begin
    with DataModule1.ZReadOnlyQueryConsulta do begin
    Close();
    SQL.Clear();
    SQL.LoadFromFile('consultas'+ DirectorySeparator + 'valores.sql');
    ParamByName('valor').AsFloat := StrToFloat(EditVal.Text);
    Open();
  end;
end;

end.

