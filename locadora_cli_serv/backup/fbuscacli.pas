unit fbuscacli;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  DBGrids, dprincipal;

type

  { TFormCBusca }

  TFormCBusca = class(TForm)
    BitBtnBuscar: TBitBtn;
    BitBtnFechar: TBitBtn;
    DBGrid1: TDBGrid;
    EditCont: TEdit;
    EditEnd: TEdit;
    EditID: TEdit;
    EditNome: TEdit;
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
  FormCBusca: TFormCBusca;

implementation

{$R *.lfm}

{ TFormCBusca }

procedure formata(DBGrid1: TDBGrid);
var
  i: integer;
begin
  for i:=0 to DBGrid1.Columns.Count-1 do
    if(DBGrid1.Columns.Items[i].Width>210) then
      DBGrid1.Columns.Items[i].Width:=210;
end;

procedure TFormCBusca.BitBtnBuscarClick(Sender: TObject);
begin
  with DataModule1.ZQuery2 do begin
    Close();
    SQL.Clear();
    SQL.Add('SELECT * FROM cliente WHERE 1=1');
    if(EditID.Text <> '') then begin
      SQL.Add('AND id_cliente = :id_cliente');
      ParamByName('id_cliente').AsString := EditID.Text;
    end;
    if(EditEnd.Text <> '') then begin
      SQL.Add('AND endereco LIKE' + QuotedStr('%' + EditEnd.Text + '%'));
    end;
    if(EditCont.Text <> '') then begin
      SQL.Add('AND contato LIKE' + QuotedStr('%' + EditCont.Text + '%'));
    end;
    if(EditNome.Text <> '') then begin
      SQL.Add('AND nome_cliente LIKE' + QuotedStr('%' + EditNome.Text + '%'));
    end;
    Open();
    formata(DBGrid1);
  end;
end;

procedure TFormCBusca.FormCreate(Sender: TObject);
begin
  formata(DBGrid1);
end;

end.

