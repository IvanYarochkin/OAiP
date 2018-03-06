{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Menus, Mask, DBCtrls,DB;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Button3: TButton;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Label2: TLabel;
    Button4: TButton;
    GroupBox1: TGroupBox;
    Edit3: TEdit;
    Button5: TButton;
    Button6: TButton;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Edit4: TEdit;
    Button7: TButton;
    Button8: TButton;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Edit5: TEdit;
    Button9: TButton;
    Button10: TButton;
    GroupBox4: TGroupBox;
    Edit6: TEdit;
    Button11: TButton;
    Button12: TButton;
    Label6: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    PopupMenu2: TPopupMenu;
    N2: TMenuItem;
    GroupBox5: TGroupBox;
    Button13: TButton;
    Button14: TButton;
    Label7: TLabel;
    Edit7: TEdit;
    GroupBox6: TGroupBox;
    Button15: TButton;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    GroupBox7: TGroupBox;
    Button16: TButton;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  aTypeWork:Array of integer;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from table1');
ADOQuery1.Open;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select * from table2');
ADOQuery2.Open;
end;
end;



procedure TForm1.Button3Click(Sender: TObject);
var i: integer;
begin
if Edit1.Text<>'' then
begin
with DataModule2 do
begin
ADOQuery2.Close;
ADOQuery2.Open;
if ADOQuery2.IsEmpty= false then ADOQuery2.Insert;
ADOQuery2.Edit;
ADOQuery2typework.AsString:= Edit1.Text;
ADOQuery2.Post;
ADOQuery2.Open;
end;
end;
Edit1.Clear;
i:=0;
ComboBox1.Clear;
with DataModule2 do
begin
ADOQuery2.Close;
ADOQuery2.Open;
ADOQuery1.Close;
ADOQuery1.Open;
end;
if DataModule2.ADOQuery2.RecordCount<>0 then
begin
SetLength(aTypeWork,DataModule2.ADOQuery2.RecordCount);
for i:=1 to DataModule2.ADOQuery2.RecordCount do
begin
DataModule2.ADOQuery2.RecNo:=i;
ComboBox1.Items.Add(DataModule2.ADOQuery2typework.AsString);
aTypeWork[i-1]:=DataModule2.ADOQuery2idwork.AsInteger;
end;
end;
end;
procedure TForm1.FormShow(Sender: TObject);
var i: integer;
begin
i:=0;
ComboBox1.Clear;
with DataModule2 do
begin
ADOQuery2.Close;
ADOQuery2.Open;
ADOQuery1.Close;
ADOQuery1.Open;
end;
if DataModule2.ADOQuery2.RecordCount<>0 then
begin
SetLength(aTypeWork, DataModule2.ADOQuery2.RecordCount);
for i:= 1 to DataModule2.ADOQuery2.RecordCount do
begin
DataModule2.ADOQuery2.RecNo:=i;
ComboBox1.Items.Add(DataModule2.ADOQuery2typework.AsString);
aTypeWork[i-1]:=DataModule2.ADOQuery2idwork.AsInteger;
end;
end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if ComboBox1.ItemIndex=-1 then
begin
ShowMessage('¬ыбрать специальность');
exit;
end;
if Edit2.Text='' then
begin
ShowMessage('¬вести им€');
exit;
end;
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.Open;
if ADOQuery1.IsEmpty= false then
ADOQuery1.Insert;
ADOQuery1.Edit;
ADOQuery1name.AsString:=Edit2.Text;
ADOQuery1idw.AsInteger:=atypework[ComboBox1.ItemIndex];
ADOQuery1.Post;
Edit2.Clear;
ComboBox1.ItemIndex:=-1;
end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from table1');
ADOQuery1.SQL.Add('where name=pname');
ADOQuery1.Parameters.ParamByName('pname').Value:=Edit3.Text;
ADOQuery1.Open;
end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from table1');
ADOQuery1.Open;
end;
Edit3.Clear;
end;


procedure TForm1.Button7Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from table1');
ADOQuery1.SQL.Add('where name like:pname');
ADOQuery1.Parameters.ParamByName('pname').Value:=Edit4.Text+'%';
ADOQuery1.Open;
end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from table1');
ADOQuery1.Open;
end;
Edit4.Clear;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from table1');
ADOQuery1.SQL.Add('where name like:pname');
ADOQuery1.Parameters.ParamByName('pname').Value:='%'+Edit5.Text+'%';
ADOQuery1.Open;
end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from table1');
ADOQuery1.Open;
end;
Edit5.Clear;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Locate('name',Edit6.Text,[loCaseInsensitive]);
end;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
if DataModule2.ADOQuery1.RecordCount<>0 then
 DataModule2.ADOQuery1.RecNo:=1;
end;

procedure TForm1.N1Click(Sender: TObject);
var i,code:integer;
begin
with DataModule2 do
begin
if ADOQuery2.IsEmpty=true then
begin
ShowMessage('в таблице нет записей!');
Exit;
end;
code:=DBGrid2.DataSource.DataSet.FieldValues['idwork'];
ADOQuery2.Delete;
end;
i:=1;
ComboBox1.Clear;
with DataModule2 do
begin
ADOQuery2.Close;
ADOQuery2.Open;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('delete from table1 where idw=:idwork');
ADOQuery1.Parameters.ParamByName('idwork').Value:=code;
ADOQuery1.ExecSQL;
ADOQuery1.Close;
ADOQuery1.Close;
ADOQuery1.SQL.Add('select * from table1');
ADOQuery1.Open;
end;
if DataModule2.ADOQuery2.RecordCount<>0 then
begin
SetLength(aTypeWork,DataModule2.ADOQuery2.RecordCount);
for i:=1 to DataModule2.ADOQuery2.RecordCount do
begin
DataModule2.ADOQuery2.RecNo:=i;
ComboBox1.Items.Add(DataModule2.ADOQuery2typework.AsString);
aTypeWork[i-1]:=DataModule2.ADOQuery2idwork.AsInteger;
end;
end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
with DataModule2 do
begin
if ADOQuery1.IsEmpty=true then
begin
ShowMessage('в таблице нет записей');
Exit;
end;
ADOQuery1.Delete;
end;
end;

procedure TForm1.Button13Click(Sender: TObject);
var codeSpec:integer;
begin
if Edit7.Text='' then
begin
showMessage('¬ведите название специальности');
exit;
end;
with DataModule2 do
begin
if ADOQuery2.Locate('typework',Edit7.Text,[]) then
begin
codeSpec:=ADOQuery2idwork.AsInteger;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='select * from table1 where idw=:idwork';
ADOQuery1.Parameters.ParamByName('idwork').Value:=codeSpec;
ADOQuery1.Open;
end
else
begin
ShowMessage('“акой специальности не существует');
exit;
end;
end;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from table1');
ADOQuery1.Open;
end;
Edit7.Clear;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
if DataModule2.ADOQuery1.State=dsEdit then
DataModule2.ADOQuery1.Post;
end;


procedure TForm1.Button16Click(Sender: TObject);
var i:integer;
begin
if DataModule2.ADOQuery2.State=dsEdit then
begin
DataModule2.ADOQuery2.Post;
i:=0;
ComboBox1.Clear;
if DataModule2.ADOQuery2.RecordCount<>0 then
begin
SetLength(aTypeWork,DataModule2.ADOQuery2.RecordCount);
for i:=1 to DataModule2.ADOQuery2.RecordCount do
begin
DataModule2.ADOQuery2.RecNo:=i;
ComboBox1.Items.Add(DataModule2.ADOQuery2typework.AsString);
aTypeWork[i-1]:=DataModule2.ADOQuery2idwork.AsInteger;
end;
end;
end;
end;


end.
