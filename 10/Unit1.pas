unit Unit1;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,   Dialogs, Buttons, StdCtrls,
  Menus;

   type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    
    private     { Private declarations }
    public     { Public declarations }
end;
Type
TStudent=record
  FIO:string[40];
  otc:array[1..3] of word;
  sball:extended;
end;
     var
       fz:file of TStudent;
       Ft:TextFile;
       Stud:Array[1..100] of TStudent;
       nzap:integer;
       FileNameZ, FileNameT:string;
     var
     Form1: TForm1;
     implementation

uses Unit2;
     {$R *.dfm}
     procedure TForm1.FormCreate(Sender: TObject);
     begin
      Edit1.Text:='';
      Edit2.Text:='';
      Edit3.Text:='';
      Edit4.Text:='';
      Memo1.Clear;
      nzap:=0;
     end;

procedure TForm1.Button1Click(Sender: TObject);
begin nzap:=nzap+1;
with stud[nzap] do begin
      FIO:=Edit1.Text;
      otc[1]:=StrToInt(Edit2.Text);
      otc[2]:=StrToInt(Edit3.Text);
      otc[3]:=StrToInt(Edit4.Text);
      sball:=(otc[1]+otc[2]+otc[3])/3;
      Memo1.Lines.Add(FIO+' '+IntToStr(otc[1])+' '+IntToStr(otc[2])+' '+IntToStr(otc[1]));
           end;
        Write(fz,Stud[nzap]);
        Edit1.Text:='';
        Edit2.Text:='';
        Edit3.Text:='';
        Edit4.Text:='';
      end;

procedure TForm1.Button2Click(Sender: TObject);
 begin OpenDialog1.Title:='Создать новый Файл';
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
                      Read(fz,stud[nzap]);
                      with stud[nzap] do
                      Memo1.Lines.Add(FIO+' '+IntToStr(otc[1])+' '+IntToStr(otc[2])+' '+IntToStr(otc[1]));
                      end;
                      Button1.Show;
      end;

procedure TForm1.Button4Click(Sender: TObject);
 var i,j:word;
 st:TStudent;
 begin
 for i:=1 to nzap-1 do
 for j:=i+1 to nzap do
 if Stud[i].sball<Stud[j].sball then
 begin
 st:=Stud[i];
 Stud[i]:=Stud[j];
 Stud[j]:=st;
 end;
 Memo1.Clear;
 for i:=1 to nzap do
 with stud[i] do
 Memo1.Lines.Add(IntToStr(i)+' '+FIO+' '+FloattoStrF(sball,fffixed,4,2));
 end;

procedure TForm1.Button5Click(Sender: TObject);
var i:word; begin if SaveDialog1.Execute then
              begin
              FileNameT:=SaveDialog1.FileName;
              AssignFile(Ft,FileNameT);
              Rewrite(Ft);
              end;
for i:=1 to nzap do
with stud[i] do Writeln(ft,i:4,'.',FIO,sball:8:2);
CloseFile(ft);
end; 
 
procedure TForm1.BitBtn1Click(Sender: TObject);
begin CloseFile(fz);
end;
procedure TForm1.N1Click(Sender: TObject);
begin
Form2.show;
end;
procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8]) then Key:=#0;
end;
procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8]) then Key:=#0;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8]) then Key:=#0;
end;
end.
