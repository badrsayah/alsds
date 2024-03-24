program gray;
uses crt,firstb;
var x,k,s,d,p,b,n: longint;
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
        p:=1; s:=0;
                k:=convertb1tob2(x,10,2);
                b:=k;
		d:= k div 10;
		while(d<>0) do
			begin
			s:= s+((d mod 10 + k mod 10) mod 2)*p;
			p:=p*10;
			k:=k div 10;
			d:=d div 10;
			end;
		
		write(s+1*puissance(10,nb_degit(b)-1) ,' ,')
	end;
end.

