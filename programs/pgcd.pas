program pgcdsubs;
var max,min,a,b,r : Integer;
Begin
write('enter values of a , b :');

read(a,b);
if (a > b) then
begin
max := a;
min := b;
end
else
Begin
min := a;
max := b;
end;
r := max - min ;
while (r <> 0) do
begin
if (r < min) Then
Begin
max := min;
min := r;
end
else
max := r;
r := max - min ;
end;
writeln('the pgcd is :',min);
readln;
readln;
End.
