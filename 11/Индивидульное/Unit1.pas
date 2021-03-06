unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, Buttons, StdCtrls, TeeProcs, Chart, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Chart1: TChart;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Series1: TLineSeries;
    Series2: TLineSeries;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Xmin,Xmax,Ymin,Ymax,Hx,Hy,h:extended;

implementation

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
begin
Xmin:=-10;
Xmax:=10;
Ymin:=-10;
Ymax:=10;
Hx:=1;
Hy:=1;
h:=0.01;
Edit1.Text:=FloatToStr(Xmin);
Edit2.Text:=FloatToStr(Xmax);
Edit3.Text:=FloatToStr(Ymin);
Edit4.Text:=FloatToStr(Ymax);
Edit5.Text:=FloatToStr(Hx);
Edit6.Text:=FloatToStr(Hy);
Edit7.Text:=FloatToStr(h);
Chart1.BottomAxis.Automatic:=False;
Chart1.BottomAxis.Minimum:=Xmin;
Chart1.BottomAxis.Maximum:=Xmax;
Chart1.LeftAxis.Automatic:=False;
Chart1.LeftAxis.Minimum:=Ymin;
Chart1.LeftAxis.Maximum:=Ymax;
Chart1.BottomAxis.Increment:=Hx;
Chart1.LeftAxis.Increment:=Hy;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
Xmin:=StrToFloat(Edit1.Text);
Xmax:=StrToFloat(Edit2.Text);
Ymin:=StrToFloat(Edit3.Text);
Ymax:=StrToFloat(Edit4.Text);
Hx:=StrToFloat(Edit5.Text);
Hy:=StrToFloat(Edit6.Text);
Chart1.BottomAxis.Minimum:=Xmin;
Chart1.BottomAxis.Maximum:=Xmax;
Chart1.LeftAxis.Minimum:=Ymin;
Chart1.LeftAxis.Maximum:=Ymax;
Chart1.BottomAxis.Increment:=Hx;
Chart1.LeftAxis.Increment:=Hy;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
x,y1,y2:extended;
begin
Series1.Clear;
Series1.Clear;
Xmin:=StrToFloat(Edit1.Text);
Xmax:=StrToFloat(Edit2.Text);
h:=StrToFloat(Edit7.Text);
x:=Xmin;
repeat
y1:=x*x*x;
Series1.AddXY(x,y1,'',clTeeColor);
y2:=abs(x);
Series2.AddXY(x,y2,'',clTeeColor);
x:=x+h;
until(x>Xmax);
end;

end.
