program chainee;
procedure update(m : string ;substr : string);
 var i,j,n,cpt,d: integer;
 ch : string;
 begin
   j:=1; cpt :=0; ch:=''; n:=0;
   for i:=1 to length(m) do
     begin
       ch:=ch+m[i];
       d:=pos(substr , ch);
       if d<>0 then
         begin
           
           j:=j+1;
           cpt:=cpt+1;
           n:=n+length(ch);
           delete(ch,1,length(ch));
         end;
     end;
