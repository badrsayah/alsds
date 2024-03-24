program tryin;
uses firstb;
Const max = 10;
Type Taille = 1..max;
Tab = Array[Taille] Of Longint;
var T,TT:Tab;
n,i,j,x:longint;
begin
read(n);
remplir(T,n);
display(T,n);
writeln;
 for i:=2 to n do 
 begin
   j:=i-1;
 x:=T[i];
     while((j>=1) and (T[j] > x)) do //si on veut decroissant T[j]>T[i]
	   begin
	   
	   T[j+1]:=T[j];
	   j:=j-1;
	   
	   end;
	T[j+1]:=x;
      
   end;
   display(T,n);
   readln;
   readln;
   end.
 

