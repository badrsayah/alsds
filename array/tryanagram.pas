program ana;
uses crt,firstb;
var 
CH , SH: string;
m: boolean;

begin
writeln('enter ch');
readln(CH);
writeln('enter sch');
readln(SH);

m:=anagram(CH,SH);
if(m) then
  writeln(CH,' and ',SH,' are : anagram')
  else
   writeln(CH,' and ',SH,' are not anagram');
   
   end.

