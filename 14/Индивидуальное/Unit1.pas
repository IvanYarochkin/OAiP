unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Edit4: TEdit;
    Button3: TButton;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    Edit5: TEdit;
    Button4: TButton;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    Edit6: TEdit;
    Button5: TButton;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox4: TGroupBox;
    Edit7: TEdit;
    Button6: TButton;
    Label9: TLabel;
    GroupBox5: TGroupBox;
    Edit8: TEdit;
    Button7: TButton;
    Label10: TLabel;
    GroupBox6: TGroupBox;
    Edit9: TEdit;
    Button8: TButton;
    Label11: TLabel;
    GroupBox7: TGroupBox;
    Edit10: TEdit;
    Button9: TButton;
    Label12: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Buton6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
with DataModule2 do
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from goods');
  ADOQuery1.Open;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
If (Edit1.Text<>'') AND (Edit2.Text<>'') AND (Edit3.Text<>'') then
begin
  with DataModule2 do
  begin
    ADOQuery1.Close;
    ADOQuery1.Open;
    If ADOQuery1.IsEmpty=false
Then
ADOQuery1.Insert;
    ADOQuery1.Edit;
    ADOQuery1name.AsString:=Edit1.Text;
    ADOQuery1price.AsString:=Edit2.Text;
    ADOQuery1counts.AsString:=Edit3.Text;
    ADOQuery1.Post;
    ADOQuery1.Open;
  end;
end;
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from goods');
ADOQuery1.SQL.Add('where name like :pname;');
ADOQuery1.Parameters.ParamByName('pname').Value:=Edit4.Text+'%';
ADOQuery1.Open;
end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from goods');
ADOQuery1.SQL.Add('where price > pprice or price = pprice;');
ADOQuery1.Parameters.ParamByName('pprice').Value:=StrToInt(Edit5.Text);
ADOQuery1.Open;
end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from goods');
ADOQuery1.SQL.Add('where price < pprice or price = pprice;');
ADOQuery1.Parameters.ParamByName('pprice').Value:=StrToFloat(Edit6.Text);
ADOQuery1.Open;
end;
end;

procedure TForm1.Buton6Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from goods');
ADOQuery1.SQL.Add('where counts > pcounts or counts = pcounts;');
ADOQuery1.Parameters.ParamByName('pcounts').Value:=StrToInt(Edit7.Text);
ADOQuery1.Open;
end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update goods set name=pname where id=pid');
ADOQuery1.Parameters.ParamByName('pname').Value:=Edit8.Text;
ADOQuery1.Parameters.ParamByName('pid').Value:=StrToInt(Label12.Caption);
ADOQuery1.ExecSQL;

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from goods');
ADOQuery1.Open;
end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
Edit8.Text:=DBGrid1.DataSource.DataSet.FieldValues['name'];
Edit9.Text:=DBGrid1.DataSource.DataSet.FieldValues['price'];
Edit10.Text:=DBGrid1.DataSource.DataSet.FieldValues['counts'];
Label12.Caption:=DBGrid1.DataSource.DataSet.FieldValues['id'];
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
 with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update goods set price=pprice where id=pid');
ADOQuery1.Parameters.ParamByName('pprice').Value:=Edit9.Text;
ADOQuery1.Parameters.ParamByName('pid').Value:=StrToInt(Label12.Caption);
ADOQuery1.ExecSQL;

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from goods');
ADOQuery1.Open;
end;

end;

procedure TForm1.Button9Click(Sender: TObject);
begin
with DataModule2 do
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update goods set counts=pcounts where id=pid');
ADOQuery1.Parameters.ParamByName('pcounts').Value:=Edit10.Text;
ADOQuery1.Parameters.ParamByName('pid').Value:=StrToInt(Label12.Caption);
ADOQuery1.ExecSQL;

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from goods');
ADOQuery1.Open;
end;
end;
end.
