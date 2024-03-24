program cubsomme;
var n,m,s,k,cpt: integer;
begin
Cpt := 0; //Compteur 
n := 100; //premier nombre
Writeln('De 100 a 500, les Nbrs tels que (C*C*C + D*D*D+ U*U*U = N) sont : ');
repeat
k:=n;
s:=0;
repeat
m:= k mod 10;
s:=s+m*m*m;
k:= k div 10;
until(k = 0);
if(s=n)then 
begin
cpt:=cpt+1;
Writeln(' ',n);
end;
n:=n+1;
until(n>500);
Writeln;
Writeln ('Le nombre de cas est de : ',Cpt);
    readln;
end.