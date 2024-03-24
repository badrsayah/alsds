program impaire;
var a,b,c,d,e: longint;
begin
a:=1;
b:=1;
c:=1;
d:=1;
e:=1;
while(a<=9) do
begin
    while(b<=9) do
    begin
    	while(c<=9) do
        begin
             while(d<=9) do
             begin
                 while(e<=9) do
                 begin
                 writeln(a*10000+b*1000+c*100+d*10+e);
                 e:=e+2;
                 end;
                 d:=d+2;
             end;
             c:=c+2;
        end;
        b:=b+2;
    end;
    a:=a+2;
 end;
 readln;
 readln;
 end.
 
