unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    Label4: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;
Type
Tvrem=record
ch,min: word;
end;
Type
   TReis=record
   Nom:integer;
  Tip, pnazn:String[20];
   vrvil:Tvrem;
   end;
var
  fz:file of TReis;
  Ft:TextFile;
  Rasp:Array[1..100] of TReis;
  nzap:integer;
FileNameZ, FileNameT:string;
var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.FormCreate(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Memo1.Clear;
nzap:=0;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
nzap:=nzap+1;
with Rasp[nzap] do begin
Nom:=StrToInt(Edit1.Text);
Tip:=Edit2.Text;
pnazn:=Edit3.Text;
vrvil.ch:=StrToInt(Edit4.Text);
vrvil.min:=StrToInt(Edit5.Text);
Memo1.Lines.Add(IntToStr(Nom)+' '+Tip+' '+pnazn+' '+IntToStr(vrvil.ch)+' '+IntToStr(vrvil.min));
                end;
Write(fz,Rasp[nzap]);
 Edit1.Text:='';
 Edit2.Text:='';
 Edit3.Text:='';
 Edit4.Text:='';
  Edit5.Text:='';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
OpenDialog1.Title:='������� ����� ����';
if OpenDialog1.Execute then begin
FileNameZ:=Opendialog1.FileName;
AssignFile(Fz,FileNameZ);
Rewrite(Fz);
end; 
Button1.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if OpenDialog1.Execute then begin
FileNameZ:=Opendialog1.FileName;
AssignFile(Fz,FileNameZ);
Reset(Fz);
end;
while not eof(fz)do begin
nzap:=nzap+1;
Read(fz,Rasp[nzap]);
with Rasp[nzap] do
Memo1.Lines.Add(IntToStr(Nom)+' '+Tip+' '+pnazn+' '+IntToStr(vrvil.ch)+' '+IntToStr(vrvil.min));
end;
Button1.Show;
end;

procedure TForm1.Button4Click(Sender: TObject);
var i,j,n:word;
st:TReis;
begin
n:=0;
for i:=1 to nzap do begin

if (rasp[i].pnazn=Edit6.Text)and (n=0) then n:=i else
if (rasp[i].pnazn=Edit6.Text)and (n<>0) then begin
if (rasp[i].vrvil.ch<rasp[n].vrvil.ch) or
((rasp[i].vrvil.ch=rasp[n].vrvil.ch) and (rasp[i].vrvil.min<rasp[n].vrvil.min))
 then begin st:=Rasp[i];
 Rasp[i]:=Rasp[n];
Rasp[n]:=st;
n:=i; end else 
if (rasp[i].vrvil.ch>rasp[n].vrvil.ch) then n:=i; end;
for j:=1 to nzap do
with rasp[j] do begin
if (rasp[j].pnazn=Edit6.Text) then
 Memo1.Lines.Add(IntToStr(j)+' '+IntToStr(Nom)+' '+IntToStr(vrvil.ch)+' '+IntToStr(vrvil.min));
end; end; end;

procedure TForm1.Button5Click(Sender: TObject);
var i:word;
begin
if SaveDialog1.Execute then
begin
FileNameT:=SaveDialog1.FileName;
AssignFile(Ft,FileNameT);
Rewrite(Ft);
end;
for i:=1 to nzap do
with rasp[i] do Writeln(ft,i:4,'.',Nom,vrvil.ch,vrvil.min);
CloseFile(ft);
end;


procedure TForm1.BitBtn1Click(Sender: TObject);
begin
CloseFile(fz);
end;

end.
