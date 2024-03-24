program matrica9owa;
uses crt,firstb;
Const 
maxl = 10;
maxc = 8;
Type 
taillel = 1 .. maxl;
taillec = 1 .. maxc;
matrix = array[taillel,taillec] of longint;
var 
M,T:matrix;
n,c,i,j,x:longint;
begin
write('enter taille of matrica hh n and c');
read(n,c);
remplir_m(M,n,c);
display_m(M,n,c);
writeln;
	for i:=1 to n do 
		begin
			for j:=1 to c do
				T[j,i]:=M[i,j];
		end;
display_m(T,c,n);
writeln;
	for i:=1 to n do
	   begin
	       for j:=1 to c-1 do
	       	   begin
	       	       x:=M[i,j];
	       	       M[i,j]:=M[i,j+1];
	       	       M[i,j+1]:=x;
	       	   end;
	    end;
	display_m(M,n,c);
	end.






