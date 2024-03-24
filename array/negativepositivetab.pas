program trying;
uses firstb;
Const max = 10;
Type Taille = 1..max;
Tab = Array[Taille] Of Longint;
var 
T : Tab;
x,n,i,j: longint;
trouve : boolean;
begin
write('enter taille of array :');
read(n);
remplir(T,n);
display(T,n);
writeln;
for i:=1 to n do
 begin
 j:=1;
  if (T[i] > 0) then
    begin
     j:=i+1; 
     trouve:=false;
       while((j<=n) and (trouve=false)) do
          begin
          	if (T[j] < 0) then
          	 begin
          	   x:=T[j];
          	   T[j]:=T[i];
          	   T[i]:=x;
          	   trouve:= true;
          	  end
          	 else
          	  j:=j+1;
          end;
    end;
  end;
   writeln;
   display(T,n);
   readln;
   readln;
   end.
           
