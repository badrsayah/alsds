program ta;
const max = 5;
type
taille = 1 .. max;
tab = array[taille] of int64;
var 
T1: tab;
n ,d , i ,cpt: int64;
procedure remplir(var T : tab ; var size : int64);
var 
i: int64;
begin
for i:=1 to size do
 begin

  writeln('T[',i,'] =');
  read(T[i]);

 end;

end;
procedure display(T : tab ; size : int64);
var 
i: int64;
begin
for i:=1 to size do
  write(T[i]);
end;

begin
write('enter number of elements:');
read(n);
write('enter a number u wanna find hh');
read(d);

remplir(T1, n); // we dont need to specify the var
display(T1, n);
cpt :=0;
for i:=1 to n do
begin
if (T1[i] = d) then
 cpt:= cpt + 1;
 end;
 write('the number ',d ,' existes :',cpt,' times');
readln;
readln;
end.


