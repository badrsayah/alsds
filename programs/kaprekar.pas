program kap;
var N2,N,N0,N1,d,cpt : longint;
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
   N0 := N1*N1;
   N:=N0;
   cpt:=0;
     while(N<>0) do
    	begin
   	cpt:=cpt+1;
   	N := N div 10;
   	end;
   if (cpt mod 2 = 0) then
   d:=cpt div 2
   else
	d:=cpt div 2 +1;

	if((N0 mod puiss(10,d))+(N0 div puiss(10,d)) = N1) then
	writeln(N1,'---->',N0);
	
	N1:=N1 +1;
   end;
   readln;
   readln;
   end.
