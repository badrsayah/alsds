program boom;
type 
tab = array[1 .. 20] of integer;
E = record 
v : tab;
positions : integer;
end;
procedure update(m : string ; var enreg : E ; substr : string);
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
           enreg.v[j]:=d+n;
           j:=j+1;
           cpt:=cpt+1;
           n:=n+length(ch);
           delete(ch,1,length(ch));
         end;
     end;
     
   enreg.positions := cpt;
   end;
   var
    i:integer;
    sh:string;
    sch:string;
    enr : E;
    
   begin
   write('enter your chaine sh');
   readln(sh);
   writeln('enter ur subchaine sch');
   readln(sch);
   
   update(sh, enr , sch);
         
   with enr do
    begin
    for i:=1 to positions do
      write(v[i],'->');
    
    writeln;
    writeln(positions);
    end;
    
    readln;
    readln;
    end.
          
