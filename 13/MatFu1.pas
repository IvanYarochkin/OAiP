unit MatFu1;
interface

Function Tg(x:extended):extended;
Function Ch(x:extended):extended;
Function DoubleX(x:extended):extended;

implementation

Function Tg;
begin
Result:=sin(x)/cos(x);
end;

Function Ch;
begin
Result:=(exp(x)-exp(-x))/2;
end;

Function DoubleX;
begin
Result:=sqr(x);
end;

end.

