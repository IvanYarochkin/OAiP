program Project12;

uses
  Forms,
  Unit12 in 'Unit12.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
