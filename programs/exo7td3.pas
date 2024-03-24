program exo7;
uses firstb;
var a,b,c,d,e,f,n,k,i,y:longint;
    trouve : boolean;
begin
  for a:=1 to 9 do
   begin
     for b:=1 to 9 do
      begin
     	for c:=1 to 9 do
     	 begin
     	    for d:=1 to 9 do
		 begin
		     for e:=1 to 9 do
		     begin
		         for f:=1 to 9 do 
		         begin
		         n:= a*100 + b*10 + c;
		         k:= d*100 + e*10 + f;
		         i:= n+k;
		         y:=1;
		         trouve:= true;
		         while ((y<=9) and (trouve)) do
		         begin
		         if ((num_exist(n,y)=false) and (num_exist(k,y)=false) and (num_exist(i,y)=false)) then
		         trouve := false
		         else y:=y+1;  
		         end;
		         if ((sum_degits(i)=18) and (n+k=i) and (trouve = true) and (nb_degit(i) = 3) and (n<k)) then
		         writeln(n,' + ',k,' = ',i);
		         end;
		         end;
		         end;
		         end;
		         end;
		         end;
		         
		         readln;
		         readln;     
  
  end.


