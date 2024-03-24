program matrica;
uses firstb;
const 
maxl = 10;
maxc = 8;
type 
taillel = 1 .. maxl;
taillec = 1 .. maxc;
matrix = array[taillel,taillec] of longint;
var 
M:matrix;
c,l:longint;
begin
read(l,c);
remplir_m(M,l,c);
display_m(M,l,c);
   readln;
   readln;
   end.

