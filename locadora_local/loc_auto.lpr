program loc_auto;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, datetimectrls, zcomponent, fprincipal, dprincipal, fveiculos,
  fclientes, falugueis, fpag, fconsultas
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormV, FormV);
  Application.CreateForm(TFormCli, FormCli);
  Application.CreateForm(TFormAl, FormAl);
  Application.CreateForm(TFormPag, FormPag);
  Application.CreateForm(TFormConsultas, FormConsultas);
  Application.Run;
end.

