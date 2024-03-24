program exo10;
var N,N0,Sd,cpt,i: Int64;
begin
write('enter number N:');
read(N);
N0:=N;
cpt := 0;

repeat
Sd:=1;
for i:=2 to N0 div 2 do
begin
if (N0 mod i = 0) then
Sd := Sd + i;
end;
cpt:= cpt + 1;
N0 := Sd;
writeln(N0);
until((N0 = 1) or (N0 = N));
  if (N0 = 1) then
	writeln(N,' is a prime number')
	else 
	begin
	  if (cpt = 1) then
		writeln(N,' is sociable and perfect in order',cpt)
	else 
	  begin
	    if(cpt = 2) then
		writeln(N,' is sociable and friendly with order',cpt)
	     else
	     writeln(N,' is sociable with order',cpt);
	  end;
	 end;
readln;
readln;
end.
	 

