program yo;
uses firstb;
var n,k,a,b,c,d,e: longint;
begin

// make number 
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
		     	n:= a*100 + b*10 + c;
		     	k:= d*10 + e;
		     	if ((n*k = mirroir(n)*mirroir(k)) and (a <> b) and (b <> c) and (c <> a) and (d <> e) and (a<>e) and (a<>d) and (c<>e) and (b<>d) and (b<>e)) then
		     	  writeln(n,' * ',k,' = ',mirroir(n),' * ',mirroir(k));
		     end;
		 end;
             end;
         end;
     end;
     readln;
     readln;
end.
       
      
