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
n:=0;    //n?����� ���� � ������
ind:=0;
nst:=ComboBox1.ItemIndex; // ����������� ������ ��������� //������
st:=ComboBox1.Items[nst]; //��������� ���������� ������ � //���������� st
for i:=1 to Length(st) do      //�������� ���� �������� ������ st
begin
case ind of
0:
If st[i]<>' ' then//���� ���������� ������ ����� �������
begin
ind:=1;
               n:=n+1; //����� ���� ������������� �� �������
end;
1:
If st[i]=' ' then ind:=0;   //���� ���������� ������ ����� ��������
end;
Label3.Caption:=IntToStr(n); //����� ����� ���� � Label3
end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
ComboBox1.SetFocus; //�������� ������ � ComboBox1
end;

procedure TForm1.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then 
begin //���� ������ ������� Enter
ComboBox1.Items.Add(ComboBox1.Text); //������ �� ���� �������������� ��������� � ������ ������
ComboBox1.Text:=''; //������� ���� ��������������
end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
