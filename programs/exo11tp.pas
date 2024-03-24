program exo11;
var N,N1,N0,p,d : longint;
begin
write('enter number N:');
read(N);
write('enter chiffre d:');
read(d);
N0:=N;
p:=1;
N1:=0;
repeat
if (N0 mod 10 <> d) then
begin
N0 := N0 div 10;
p:=p*10;
end
until ((N0 mod 10 = d) or (N0 div 10 = 0));
N1:=(N mod p + (N0 div 10)*p)*10;
write('the number is:',N1);

readln;
readln;
end.
