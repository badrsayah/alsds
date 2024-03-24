program makeit;
uses firstb;
const max = 10;
type taille = 1 .. max;
Tab = array[taille] of longint;
var
T: Tab;
n: longint;
begin
read(n);
remplir(T,n);
writeln;
display(T,n);
inverse_tab(T,n);
writeln;
display(T,n);
readln;
readln;
end.
