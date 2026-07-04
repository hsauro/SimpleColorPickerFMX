program SimpleColorPickerProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufMain in 'ufMain.pas' {frmMain},
  uRhoColorPicker in 'uRhoColorPicker.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
