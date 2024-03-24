program mirror;
var 
s,n,r : Longint;
begin
write('enter number n :');
read(n);
r := n;
 s:=0;
 
while(r <> 0) do
begin
s := s*10 + r mod 10;
r := r div 10;
end;

writeln('mirror of : ', n ,' is: ', s );
readln;
readln;
End.

