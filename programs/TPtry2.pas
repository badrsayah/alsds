program TP1;
var N,d,N0,N1,P,cpt,i : Int64;
Begin
write('enter a number N');
read(N);
write('enter a degit you wanna search for');
read(d);
 N0 := N;
 cpt := 0;
 while(N0 <> 0) do
    begin
	if(N0 mod 10 = d) then
	cpt := cpt + 1;
      N0 := N0 div 10;
    end;
 N0 := N;
 i := 0;
 P := 1;
 N1 := 0;
  While( N0 <> 0 ) do
     begin
     if (N0 mod 10 = d) then
       begin
          i := i + 1;
            if (i < cpt) then
       	      begin
		    N1 := N1 + ( N0 mod 10)*P;
		    P := P*10;
              end;
        end
        else		  
         begin
           N1 := N1 + (N0 mod 10)*P;
	   P := P * 10;
         end;	
       N0 := N0 div 10;
     end;
write('the result is :',N1);
readln;
readln;
end.
