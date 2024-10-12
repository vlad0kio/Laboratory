program mario;
uses
  Vcl.Forms,
  Main in 'Main.pas' {ScreenForm},
  Level_1_1.Entities in 'Level_1_1.Entities.pas',
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TScreenForm, ScreenForm);
  Application.Run;
end.
