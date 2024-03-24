program s_harshad;
uses firstb;
var n,x: int64;
begin
write('enter a number n:');
read(n);

for x:=2 to n do
begin
if ((k_harshad(x) > 1) and (x <> 10) ) then
writeln('[',x,'][',k_harshad(x),']');
end;
readln;
readln;
end.
