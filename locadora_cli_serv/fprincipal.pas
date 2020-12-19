unit fprincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  fveiculos, fclientes, falugueis, fpag, frelatorios;

type

  { TFormPrincipal }

  TFormPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private

  public

  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.lfm}

{ TFormPrincipal }

procedure TFormPrincipal.Button1Click(Sender: TObject);
begin
  FormV.ShowModal();
end;

procedure TFormPrincipal.Button2Click(Sender: TObject);
begin
  FormCli.ShowModal();
end;

procedure TFormPrincipal.Button3Click(Sender: TObject);
begin
  FormAl.ShowModal();
end;

procedure TFormPrincipal.Button4Click(Sender: TObject);
begin
  FormPag.ShowModal();
end;

 procedure TFormPrincipal.Button5Click(Sender: TObject);
 begin
   FormRelatorios.ShowModal();
 end;


end.

