program exo;
function PGCD(a,b:integer):integer;
var r: integer;
begin
r:= a mod b;
  while(r <> 0) do
    begin
      a:=b;
      b:=r;
      r:=a mod b;
    end;
   PGCD := b;
  end;
  
var i,alpha,a,b: integer;
ch,s : string;
begin
s:='';

writeln('donner la taille de votre alphabet');
read(alpha);
repeat
  writeln('donner votre parametre a :');
   read(a);
    if (a>alpha) then
      begin
        if (PGCD(a,alpha)<>1) then
         writeln(a,' et ',alpha,' non premier entre eux!')
      end
      else
      begin
        if (PGCD(alpha,a)<>1) then
         writeln(a,' et ',alpha,' non premier entre eux!');
        end;

 until((PGCD(alpha,a)=1) or (PGCD(a,alpha)=1));
 writeln('correct!, donner maintenant votre parametre b :');
 read(b);
 write('votre equation est :', a,'x + ',b);
  writeln('donner votre chaine de caracteres :');
  read(ch);
 for i := 1 to length(ch) do
begin
  s := s + chr((a * ord(ch[i]) + 1) mod alpha + 64);
  write(s[i]);
end;
readln;
readln;
   end.
   
