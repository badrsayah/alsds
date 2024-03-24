program yoo;
var ch,chi:string;
n,p,j,i:longint;
begin
writeln('enter ur chaine');
readln(ch);
writeln(ch);
writeln('enter p position and how many char u wanna remove');
readln(p,n);
chi:='';
for i:=1 to p-1 do
  chi:=chi +ch[i];
   for i:=p+n to length(ch) do
       chi:=chi+ch[i];
    ch:=chi;   
 writeln(ch);
 readln;
 readln;
 
 end.
