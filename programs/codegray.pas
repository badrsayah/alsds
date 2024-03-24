program gray;
uses firstb;
var cg,n,x,i,k,p,d: int64;
begin
write('enter the last number:');
read(n);
writeln('decimal');
      for x:=1 to n do
	write(x,' ,');
	writeln;
	writeln('binary');
	for x:=1 to n do
	 begin
	k:=convertb1tob2(x,10,2);
	write(k,' ,');
        end;
        writeln;
        writeln('code gray :');
        for x:=1 to n do
        begin
                k:=convertb1tob2(x,10,2);
		d:= extrairech(k,1);
		cg:=0;
		p:=1;
		for i:=2 to nb_degit(k) do
		begin
		if (d <> extrairech(k,i)) then
		cg := cg + 1*p;
		p:=p*10;
		d:= extrairech(k,i);
		end;
		
		write(cg+1*puissance(10,nb_degit(k)-1) ,' ,')
	end;
end.

