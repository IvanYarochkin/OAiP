unit Unit22;

interface

Function Find(var a: array of integer): integer;

implementation

Function Find;
var
i, max: integer;
begin
max:=a[i];
for i:= 1 to 5 do
begin
if (max < a[i]) then
max:=a[i];
end;
result:=max;
end;
end.
