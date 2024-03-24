program matricaomar;
uses firstb;
Const 
maxl = 10;
maxc = 8;
Type 
taillel = 1 .. maxl;
taillec = 1 .. maxc;
matrix = array[taillel,taillec] of longint;
tab = array[taillec] of longint;
var 
M:matrix;
S:tab;
n,c,i,j,x,smax,smin,jmin,jmax:longint;
begin
write('enter taille of matrica hh n and c');
read(n,c);
remplir_m(M,n,c);
display_m(M,n,c);
writeln;
for j:=1 to c do 
   begin
   S[j]:=0;
     for i:=1 to n do
     	S[j]:=S[j]+M[i,j];
    end;
    smax:=S[1];
    smin:=S[1];
    jmin:=1;
    jmax:=1;
    for j:=1 to c do
    	begin
    	    if(S[j]>smax) then
    	    	begin
    	    	   smax:=S[j];
    	    	   jmax:=j;
    	    	end;
    	    if(S[j]<smin) then
    	    	begin
    	           smin:=S[j];
    	           jmin:=j;
    	        end;
    	 end;
    	 writeln('pos jmin:',jmin,'pos jmax:',jmax);
    	 if (jmin>jmax) then
    	    begin
    	    	for i:=1 to n do
    	    	   begin
    	    	   x:=M[i,jmin];
    	    	   M[i,jmin]:=M[i,jmax];
    	    	   M[i,jmax]:=x;
    	    	   end;
    	    end
    	  else writeln('there is not jmin < jmax');
    	  writeln;
    	 display_m(M,n,c);
    	 
    	 readln;
    	 readln;
    	 end.	
    
