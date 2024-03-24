program rolate;
uses crt,firstb;
const max = 10;
type 
taille = 1..max;
Tab = array[taille] of longint;
var 
T:Tab;
n,i,j,x:longint;
begin
write('enter taille of tab T');
readln(n);
remplir(T,n);
display(T,n);
writeln;
write('enter rolate times');
readln(x);
rolate_right(T,n,x);
display(T,n);
end.
