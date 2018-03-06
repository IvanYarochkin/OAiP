unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
 ComboBox1.SetFocus;
end;

procedure TForm1.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
ComboBox1.Items.Add(ComboBox1.Text);
ComboBox1.Text:='';
end;
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
var max, temp, i : integer;
s : String;
begin
max:=1;
temp:=1;
s:=ComboBox1.Text;
for i:=2 to Length(s) do
begin
if (s[i] = s[i-1]) then
temp:=temp+1
else
temp:=1;
if(temp>max) then
begin
max:=temp;
end;
end;
Label3.Caption:=IntToStr(max);
end;
end.
