program devtools;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {fmMain},
  Devtools.Utils in 'Devtools.Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, fmMain);
  Application.Run;
end.
