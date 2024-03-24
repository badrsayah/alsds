program trying;
uses firstb;
Const max = 10;
Type Taille = 1..max;
Tab = Array[Taille] Of Longint;
var 
T : Tab;
n,d: longint;
begin
write('enter taille of array :');
read(n);
write('enter a number you wanna remove');
read(d);
remplir(T,n);
display(T,n);
writeln;
remove_number(T,n,d);
display(T,n);
readln;
readln;
end.
