program fusiowithrepeat;
uses firstb;
Const 
max = 10;
Type 
Taille = 1..max;
Tab = Array[Taille] Of Longint;
var
V1,V2,V3:Tab;
n,m,i,j,k:longint;
begin
read(n,m);
remplir(V1,n);
display(V1,n);
writeln;
remplir(V2,m);
display(V2,m);
writeln;
if (V1[1]<V2[1]) then
 begin
  V3[1]:=V1[1];
  i:=2;
  j:=1;
  end
 else 
 begin
  V3[1]:=V2[1];
  i:=1;
  j:=2;
  end;
  k:=2;
while((i<=n) and (j<=m)) do
 begin
   if(V1[i]<V2[j]) then
     begin
     if(V3[k-1]<>V1[i]) then
       begin
       V3[k]:=V1[i];
       k:=k+1;
       end;
      i:=i+1;
     end
   else
      begin
       if(V3[k-1]<>V2[j]) then
        begin
        V3[k]:=V2[j];
       k:=k+1;
        end;
        j:=j+1;
     end;
  end;
    while(i<=n) do
     begin
       if(V3[k-1]<>V1[i]) then
        begin
	       V3[k]:=V1[i];
	       k:=k+1;
     	end;
     	i:=i+1;
     	end;
     while(j<=m) do
     begin
       if(V3[k-1]<>V2[j]) then
        begin
        V3[k]:=V2[j];
       k:=k+1;
        end;
        j:=j+1;
     end;
     display(V3,k-1);
     writeln;
        
     readln;
     readln;
     end.
      
        
        
        
        
        
