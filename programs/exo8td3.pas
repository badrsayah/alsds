program exo8;
uses firstb;
var x,b,N0,pos,d,k,n:int64;
trouve : boolean;
begin
d:=0;
pos:=0;
write('enter a number n:');
read(n);
 writeln('Decimal :');
    for x:=1 to n do
    write(x,' ,');
       writeln('binary nums:');
       for x:=1 to n do 
          write(convertdecimaltobase(x,2),' ,');
       writeln('gray codes :');
         for x:=1 to n do
         begin
         b:=convertdecimaltobase(x,2);
         d:=d+freqch(b,1);
            if(d mod 2 = 0) then
            begin
            k:=extrairech(b,1);
             b:=b-k+((k+1) mod 10)
            end
             else
              begin
              trouve := false;
              N0:=b;
              while((N0 <> 0) and (trouve=false)) do
                begin
                pos:=pos+1;
                if(N0 mod 10 =1) then trouve := true;
                N0 := N0 div 10;
                end;
                k:= extrairech(b,pos+1);
                b:=b-k*puissance(10,pos)+((k+1)mod 10)*puissance(10,pos);
              end;
     write(b,' ,');       
         end;
readln;
readln;
end.
