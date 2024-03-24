program emd2024;

function puissance(a,b: longint):longint;
var i,p: longint;
begin
p:=1;
for i:=1 to b do
p:=p*a;
puissance := p;
end;

function extract_degits(num,p,m:longint):longint;
begin 
extract_degits:=(num div puissance(10,p-1)) mod puissance(10,m); //extract_degit_from_p_to_m
end;
type 
tab = array[1..20] of longint;
var
V : tab;
min : longint;
i : longint;
n : longint;
d : longint;

begin
read(n);
i:=1;
while(i<=n)do
  begin
    read(V[i]);
    i:=i+1;
  end;
  
 min:=V[1];
 i:=2;
  //annee de forme ddmmyyyy
  while(i<=n) do
   begin
   d:=V[i];
     if(extract_degits(d,1,4) < extract_degits(min,1,4)) then
       min:=d
      else 
          if(extract_degits(d,1,4) = extract_degits(min,1,4)) then
             if(extract_degits(d,5,2) < extract_degits(min,5,2)) then
                min:=d
              else 
              if(extract_degits(d,5,2) = extract_degits(min,5,2)) then
                if(extract_degits(d,7,2) < extract_degits(min,7,2)) then
                      min:=d;
                      
         i:=i+1;
     end;
   writeln('the minimum date is :',min);
   
   readln;
   readln;
   end.
                

