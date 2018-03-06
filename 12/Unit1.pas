unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    procedure ComboBox1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ComboBox1Click(Sender: TObject);
var
st:string;
n,i,nst,ind:integer;
begin
n:=0;    //n?число слов в строке
ind:=0;
nst:=ComboBox1.ItemIndex; // определение номера выбранной //строки
st:=ComboBox1.Items[nst]; //занесение выделенной строки в //переменную st
for i:=1 to Length(st) do      //просмотр всех символов строки st
begin
case ind of
0:
If st[i]<>' ' then//если встретился символ после пробела
begin
ind:=1;
               n:=n+1; //число слов увеличивается на единицу
end;
1:
If st[i]=' ' then ind:=0;   //если встретился пробел после символов
end;
Label3.Caption:=IntToStr(n); //вывод числа слов в Label3
end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
ComboBox1.SetFocus; //передача фокуса в ComboBox1
end;

procedure TForm1.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then 
begin //если нажата клавиша Enter
ComboBox1.Items.Add(ComboBox1.Text); //строка из окна редактирования заносится в список выбора
ComboBox1.Text:=''; //очистка окна редактирования
end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
