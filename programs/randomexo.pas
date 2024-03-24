program exoconcate;
var i,n,p,d,s: int64;
begin
write('enter your number n:');
read(n);
s:= 13;
writeln(s);
i:=3;
while(i <= n) do
 begin
p:=1;
d:=i;
  repeat
   p:=p*10;
   d:=d div 10;
   until(d=0);
      writeln((i-2)*p +i,'+');
      s:=s+ (i-2)*p + i;
 i:=i+4    
end;
if(i-2 = n) then
      begin
      writeln(n*p,'=');
      s:=s+ n*p;
      end;
write(s);
readln;
readln;
end.

