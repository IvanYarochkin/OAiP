unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, OleCtrls, SHDocVw, ToolWin;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    WebBrowser1: TWebBrowser;
    Edit1: TEdit;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
procedure ToolButton1Click(Sender: TObject);
procedure ToolButton2Click(Sender: TObject);
procedure ToolButton3Click(Sender: TObject);
procedure ToolButton5Click(Sender: TObject);
procedure ToolButton6Click(Sender: TObject);
procedure ToolButton8Click(Sender: TObject);

private
{ Private declarations }

public
{ Public declarations }
end;

var
Form1: TForm1;
implementation {$R *.dfm}
procedure TForm1.ToolButton1Click(Sender: TObject);
begin
WebBrowser1.Navigate(Edit1.Text);
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
WebBrowser1.GoBack;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
WebBrowser1.GoForward;
end;

procedure TForm1.ToolButton5Click(Sender: TObject);
begin
WebBrowser1.Refresh;
end;

procedure TForm1.ToolButton6Click(Sender: TObject);
begin
WebBrowser1.Stop;
end;

procedure TForm1.ToolButton8Click(Sender: TObject);
begin
WebBrowser1.GoHome;
end;
end.

