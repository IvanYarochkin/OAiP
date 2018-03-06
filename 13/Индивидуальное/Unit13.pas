unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit22;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit6: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//procedure max(mas:array of integer);
//var i,m: integer;
//begin
//m:=1;
//for i:= 2 to 5 do
//if mas[m]<mas[i] then mas[m]:=mas[i] else mas[m]:=mas[m];
//Form1.Edit6.Text:=IntToStr(mas[m]);
//end;

procedure TForm1.Button1Click(Sender: TObject);
var a: array [1..5] of integer;
i, max, maxIndex : integer;
st:string;
begin
for i:=1 to 5 do a[i]:=random(20)+1;
Form1.Edit6.Text:=IntToStr(Find(a));
st:='';
for i:=1 to 5 do
st:=st+' '+IntToStr(a[i]);
Edit1.Text:=st;
end;

end.
