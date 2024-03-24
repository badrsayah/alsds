program automorphe;
var N2,N0,N1,cpt : longint;
function puiss(a , b: longint) : longint ;
var p,i: longint;
begin
p:=1;
for i:=1 to b do
p:=p*a;
puiss := p;
end;
begin
write('enter your intervale:');
writeln('enter N1 : ');
read(N1);
writeln('enter N2 : ');
read(N2);
writeln('les nombres kaprekar entre',N1,' et ',N2,' sont :');
 while(N1<=N2) do
   begin
   N0 := N1;
   
   //calculate nombre des chiffre de nombre non carree N1
   cpt:=0;
     while(N0<>0) do
    	begin
   	cpt:=cpt+1;
   	N0 := N0 div 10;
   	end;
   if ( N1*N1 mod puiss(10,cpt) = N1) then
   writeln(N1,'----->',N1*N1);
  
	N1:=N1 +1;
   end;
   readln;
   readln;
   end.
