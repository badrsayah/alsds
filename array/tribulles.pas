program bulles;
uses firstb;
const max = 10;
type
taille = 1 .. max;
tab = array[taille] of longint;
var 
T1: tab;
n,j,i: longint;
permut : boolean;
begin
read(n);
remplir(T1,n);
display(T1,n);
writeln;
j:=n-1;
repeat
permut:=false;
	for i:=1 to j do
	  begin
		if(T1[i] > T1[i+1]) then
		begin
		permute(T1[i],T1[i+1]);
		permut:=true;
		end;
	   end;
	   j:=j-1;
   until ((j<1) or (permut=false));
   display(T1,n);
   readln;
   readln;
   end.     
        
           
