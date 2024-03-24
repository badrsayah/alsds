program exo11;
var N,N0,N1,p,i,d : integer;
begin
read(N,d);
    N0 := N;
    p := 1;
    i := 0;
    N1 := 0;
     while(N0 <> 0) do
       begin
	       if(N0 mod 10 = d) then
	       begin
	       i := i +1;
		if(i=1) then
		 N0 := N0 div 10
		 else 
		 begin
		 N1 := N1 + (N0 mod 10)*p;
		 p := p * 10;
		 N0 := N0 div 10;
		  end;
		end
	       else
	       begin  
	       N1 := N1 + (N0 mod 10)*p;
	       p := p *10;
	       N0 := N0 div 10;
	       end;
       end;
 write('result is:',N1);
 readln;
 readln;   
End.

