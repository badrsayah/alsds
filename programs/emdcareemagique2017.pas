program emd2017;
var a,b,c,D,E,F,k: longint;
begin
for a:=0 to 9 do
 begin
   for b:=0 to 9 do
     begin
        for c:=0 to 9 do
           begin
           D:= a*100 + b*10 + c;
           E:= b*100 + c*10 + a;
           F:= c*100 + a*10 + b;
           k:=a+b+c;
           if
           writeln(D);
           writeln(E);
           writeln(F);
           writeln('---------');
           end;
      end;
  end;
  readln;
  readln;
  end.
             
