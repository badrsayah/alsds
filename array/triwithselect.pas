program trying;
uses firstb;
const max = 20;
Type 
taille = 1 .. max;
tab = array[taille] of longint;

var T1 : tab;
    n : longint;
begin
write('enter taille of array:');
read(n);
remplir(T1,n);

display(T1,n);
writeln;
tri_selection(T1,n);
display(T1,n);

readln;
readln;
end.

