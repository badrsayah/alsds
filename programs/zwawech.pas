program zwawechh;
uses crt,firstb;
const x=1995;
var n,s,i,av: longint;
begin
n:=1995;
for i:=2 to x do
  begin 
   n:= delete_degit(n,0);
   s:= repeat_degit(1,nb_degit(n));
   n:=(n-s)*10+nb_degit(s);
  end;
  writeln('the number of avaries is:',nb_degit(delete_degit(n,0)));
  
   for i:=1 to nb_degit(n) do
    begin
     writeln('the avary ',i,' has ',extract_degit_from_p_to_m(n,i,1),' birds');
     end;
     end.


