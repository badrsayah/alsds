program miaw;
function puiss(a,b : longint):longint;
begin
if(b=1) then
  puiss := a
  else
   if b=0 then
    puiss := 0
    else
 puiss := a*puiss(a,b-1);
 end;
function divinRec (a,b :longint):longint;
begin
if a < b then
divinRec := 0
else
divinRec := 1 + divinRec(a-b,b);
end;
var 
a,b: longint;
begin
read(a,b);
writeln('result is :', divinRec(a,b));
writeln('result is :', puiss(a,b));
readln;
readln;
end.
