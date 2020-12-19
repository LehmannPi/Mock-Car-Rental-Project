unit fbusal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  DBGrids, EditBtn, Calendar, DateTimePicker, dprincipal;

type

  { TFormABusca }

  TFormABusca = class(TForm)
    BitBtnBuscar: TBitBtn;
    BitBtnFechar: TBitBtn;
    CheckBoxI: TCheckBox;
    CheckBoxF: TCheckBox;
    ComboBoxE: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    DBGrid1: TDBGrid;
    EditNome: TEdit;
    EditIDA: TEdit;
    EditIDV: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Opcoes: TGroupBox;
    procedure BitBtnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FormABusca: TFormABusca;

implementation

{$R *.lfm}

{ TFormABusca }

procedure formata(DBGrid1: TDBGrid);
var
  i: integer;
begin
  for i:=0 to DBGrid1.Columns.Count-1 do
    if(DBGrid1.Columns.Items[i].Width>210) then
      DBGrid1.Columns.Items[i].Width:=210;
end;

procedure TFormABusca.BitBtnBuscarClick(Sender: TObject);
begin
  with DataModule1.ZQuery3 do begin
    Close();
    SQL.Clear();
    SQL.Add('SELECT DISTINCT * FROM aluguel AS a, cliente AS c WHERE 1=1');
    SQL.Add('AND a.id_cliente = c.id_cliente');
    if(EditIDA.Text <> '') then begin
      SQL.Add('AND a.id_aluguel = :id_aluguel');
      ParamByName('id_aluguel').AsString := EditIDA.Text;
    end;
    if(EditIDV.Text <> '') then begin
      SQL.Add('AND a.id_veiculo = :id_veiculo');
      ParamByName('id_aluguel').AsString := EditIDA.Text;
    end;
    if(EditNome.Text <> '') then begin
      SQL.Add('AND c.nome_cliente LIKE' + QuotedStr('%' + EditNome.Text + '%'));
    end;
    if(ComboBoxE.Text <> '') then begin
      if(ComboBoxE.Text = 'Alugado') then
        SQL.Add('AND a.estado = True')
      else
        SQL.Add('AND a.estado = False');
    end;
    if(EditNome.Text <> '') then begin
      SQL.Add('AND c.nome_cliente LIKE' + QuotedStr('%' + EditNome.Text + '%'));
    end;
    if(CheckBoxI.Checked = True) then begin
      SQL.Add('AND a.data_inicio BETWEEN :inicio AND :fim');
      ParamByName('inicio').AsDate := DateTimePicker1.Date;
      ParamByName('fim').AsDate := DateTimePicker2.Date;
    end;
    if(CheckBoxF.Checked = True) then begin
      SQL.Add('AND a.data_fim BETWEEN :inicio2 AND :fim2');
      ParamByName('inicio2').AsDate := DateTimePicker3.Date;
      ParamByName('fim2').AsDate := DateTimePicker4.Date;
    end;
    Open();
    formata(DBGrid1);
  end;
end;


procedure TFormABusca.FormCreate(Sender: TObject);
begin
  formata(DBGrid1);
end;


end.

