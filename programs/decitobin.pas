program decitobin ;

var n,r,s,p : SuperInt;


begin
	write('enter value of n : ');
	readln(n);
	r:=n mod 2;
	if r=1 then s:=1
	else 
		s:=0;

		r:= n div 2;
		p:=10;

		while r <> 0 do 
		begin
			p := p * 10;
			if r mod 2 = 1 then
				s := s + p;
				r := r div 2;
		end;	
	writeln('the number of n in binary is :',s);
	readln;
	readln;

END.
