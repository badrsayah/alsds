program fusiowithrepeat;
uses firstb;
Const 
max = 10;
Type 
Taille = 1..max;
Tab = Array[Taille] Of Longint;
var
V1,V2,V3:Tab;
n,m,i,j,k,b:longint;
begin
read(n,m);
remplir(V1,n);
display(V1,n);
writeln;
remplir(V2,m);
display(V2,m);
writeln;
k:=1;
i:=1;
j:=1;
while((i<=n) and (j<=m)) do
 begin
   if(V1[i]<V2[j]) then
     begin
       V3[k]:=V1[i];
       k:=k+1;
       i:=i+1;
     end
   else
      begin
        V3[k]:=V2[j];
       k:=k+1;
       j:=j+1;
     end;
  end;
    while(i<=n) do
     begin
       V3[k]:=V1[i];
       k:=k+1;
       i:=i+1;
     end;
     while(j<=m) do
     begin
        V3[k]:=V2[j];
       k:=k+1;
       j:=j+1;
     end;
     display(V3,n+m);
     writeln;
        
     readln;
     readln;
     end.
      
        
        
        
        
        
