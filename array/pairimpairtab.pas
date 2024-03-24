program trying;
uses firstb;
Const max = 10;
Type Taille = 1..max;
Tab = Array[Taille] Of Longint;
var 
T,T1,T2 : Tab;
k,n,i,j: longint;
begin
write('enter taille of array :');
read(n);
remplir(T,n);
display(T,n);
writeln;
k:=1;
j:=1;
for i:=1 to n do
 begin
  if(t[i] mod 2 = 0) then
           begin
           T1[j]:=T[i];
           j:=j+1;
           end
  else 
      begin
      T2[k]:=T[i];
      k:=k+1;
      end;
 end;
 display(T1,j-1);
 writeln;
 display(T2,k-1);
 readln;
 readln;
 end.
