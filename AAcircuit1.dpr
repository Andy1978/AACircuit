program AAcircuit1;

uses
  Forms,
  main in 'main.pas' {mainForm},
  component in 'component.pas' {Seditform},
  scanmemo in 'scanmemo.pas' {sresult},
  command in 'command.pas' {commandF},
  clipBformunit in 'clipBformunit.pas' {clipbForm},
  selection in 'selection.pas' {selectform},
  splash in 'splash.pas' {splashF},
  magline in 'magline.pas' {maglineF},
  ImportASC in 'ImportASC.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'AACircuit 1.28.7 beta';
  Application.HelpFile := 'AACIRCUIT.HLP';
  Application.CreateForm(TmainForm, mainForm);
  Application.CreateForm(TSeditform, Seditform);
  Application.CreateForm(Tsresult, sresult);
  Application.CreateForm(TcommandF, commandF);
  Application.CreateForm(TclipbForm, clipbForm);
  Application.CreateForm(Tselectform, selectform);
  Application.CreateForm(TsplashF, splashF);
  Application.CreateForm(TmaglineF, maglineF);
  Application.Run;
end.
