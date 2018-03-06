program Project13;

uses
  Forms,
  Unit13 in 'Unit13.pas' {Form1},
  Unit22 in 'Unit22.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
