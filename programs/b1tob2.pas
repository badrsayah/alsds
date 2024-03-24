program tryfunctionconvert;
uses firstb;
var n,b2,d,b1: int64;
begin
write('enter a number :');
read(n);
write('enter its base');
read(b1);
writeln('enter a base which u want to convert', n ,' to :');
read(b2);
d:=convertbasetodecimal(n,b1);
writeln('the number:',n ,' to base:',b2 ,' is :',convertdecimaltobase(d,b2));
readln;
readln;
end.
