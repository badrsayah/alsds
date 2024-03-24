program stringoo;
const v = 'aeiouy';
var ch: string;
 i,j,cpt: longint;
 trouve: boolean;
 
begin
writeln('Enter your string:');
  readln(ch);


cpt:=0;
 for j:=1 to length(v) do
   begin
   trouve:=false;
   i:=1;
     while((i<=length(ch)) and (trouve=false)) do
       begin
         if(ch[i]=v[j]) then
          begin
          trouve:=true;
          cpt:=cpt+1;
          end;
         i:=i+1;
       end;
     end;
     
if(cpt=6) then
  writeln('all the voyels exist')
   else 
   writeln('nah hh');
  
  readln;
  readln;
  end.
