program hellooo;
uses crt,firstb;
const maxl = 10;
maxc = 8;
max = 20;
type 
taillel = 1 .. maxl;
taillec = 1 .. maxc;
taille = 1 .. max;
matrix = array[taillel,taillec] of longint;
Tab = array[taille] of longint;
var
M:matrix;
T:Tab;
i,j,n,k,cpt: longint;
begin
writeln('enter number of lignes');
read(n);
writeln('enter number of colums');
read(k);
remplir_m(M,n,k);
display_m(M,n,k);
cpt:=1;
for i:=1 to n do
   begin
      j:=1;
      T[cpt]:=0;
      b:=i;
       while(j<=i) do
           begin
             T[cpt]:=T[cpt]+M[b,j];
             cpt:=cpt+1;
            j:=j+1;
            b:=b-1;
            end;
     end;
   display(T,cpt); 
     

end.
