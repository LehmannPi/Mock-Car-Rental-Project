unit fbuscav;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  DBGrids, dprincipal;

type

  { TFormVBusca }

  TFormVBusca = class(TForm)
    BitBtnBuscar: TBitBtn;
    BitBtnFechar: TBitBtn;
    DBGrid1: TDBGrid;
    EditID: TEdit;
    EditDesc: TEdit;
    EditMarca: TEdit;
    EditAno: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Opcoes: TGroupBox;
    procedure BitBtnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FormVBusca: TFormVBusca;

implementation

{$R *.lfm}

{ TFormVBusca }

procedure formata(DBGrid1: TDBGrid);
var
  i: integer;
begin
  for i:=0 to DBGrid1.Columns.Count-1 do
    if(DBGrid1.Columns.Items[i].Width>210) then
      DBGrid1.Columns.Items[i].Width:=210;
end;

procedure TFormVBusca.BitBtnBuscarClick(Sender: TObject);
begin
  with DataModule1.ZQuery1 do begin
    Close();
    SQL.Clear();
    SQL.Add('SELECT * FROM veiculo WHERE 1=1');
    if(EditID.Text <> '') then begin
      SQL.Add('AND id_veiculo = :id_veiculo');
      ParamByName('id_veiculo').AsString := EditID.Text;
    end;
    if(EditAno.Text <> '') then begin
      SQL.Add('AND ano > :ano');
      ParamByName('ano').AsInteger := StrToInt(EditAno.Text);
    end;
    if(EditDesc.Text <> '') then begin
      SQL.Add('AND den_veiculo LIKE' + QuotedStr('%' + EditDesc.Text + '%'));
    end;
    if(EditMarca.Text <> '') then begin
      SQL.Add('AND marca LIKE' + QuotedStr('%' + EditMarca.Text + '%'));
    end;
    Open();
    formata(DBGrid1);
  end;
end;

procedure TFormVBusca.FormCreate(Sender: TObject);
begin
  formata(DBGrid1);
end;


end.

