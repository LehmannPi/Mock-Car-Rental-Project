unit fbuscap;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  DBGrids, DateTimePicker, dprincipal;

type

  { TFormPBusca }

  TFormPBusca = class(TForm)
    BitBtnBuscar: TBitBtn;
    BitBtnFechar: TBitBtn;
    CheckBoxD: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DBGrid1: TDBGrid;
    EditIDA: TEdit;
    EditNome: TEdit;
    EditIDP: TEdit;
    EditV: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Opcoes: TGroupBox;
    procedure BitBtnBuscarClick(Sender: TObject);
  private

  public

  end;

var
  FormPBusca: TFormPBusca;

implementation

{$R *.lfm}

{ TFormPBusca }

procedure formata(DBGrid1: TDBGrid);
var
  i: integer;
begin
  for i:=0 to DBGrid1.Columns.Count-1 do
    if(DBGrid1.Columns.Items[i].Width>210) then
      DBGrid1.Columns.Items[i].Width:=210;
end;

procedure TFormPBusca.BitBtnBuscarClick(Sender: TObject);
begin
  with DataModule1.ZQuery4 do begin
    Close();
    SQL.Clear();
    SQL.Add('SELECT DISTINCT * FROM pagamento AS p, cliente AS c WHERE 1=1');
    SQL.Add('AND p.id_cliente = c.id_cliente');
    if(EditIDP.Text <> '') then begin
      SQL.Add('AND p.id_pagamento = :id_pagamento');
      ParamByName('id_pagamento').AsString := EditIDA.Text;
    end;
    if(EditIDA.Text <> '') then begin
      SQL.Add('AND p.id_aluguel = :id_aluguel');
      ParamByName('id_aluguel').AsString := EditIDA.Text;
    end;
    if(EditNome.Text <> '') then begin
      SQL.Add('AND c.nome_cliente LIKE' + QuotedStr('%' + EditNome.Text + '%'));
    end;
    if(EditV.Text <> '') then begin
      SQL.Add('AND p.valor >= :valor');
      ParamByName('valor').AsFloat := StrToFloat(EditV.Text);
    end;
    if(CheckBoxD.Checked = True) then begin
      SQL.Add('AND p.data >= :inicio');
      ParamByName('inicio').AsDate := DateTimePicker1.Date;
    end;
    Open();
    formata(DBGrid1);
  end;
end;

end.

