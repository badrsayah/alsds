program goldbach;
var N,i,k,a : longint;
trouve : boolean;
function Prime(num: Integer): Boolean;
var
  i: Integer;
  p : boolean;
begin
  p := True;
  i:=2;
   while ((i <= num div 2) and p=true) do
    begin
      if (num mod i) = 0 then
        p := False;
        i:=i+1;
    end;
    Prime := p;
end;

begin
write('enter how many numbers pair u wanna verify:');
read(N);
i:=4;

while(i <= (N+1)*2) do
 begin
  k:=2; 
  a:=i;
  trouve := false;
   while((i-k <> 0) and (trouve=false)) do
      begin
   	a:=i-k;
   	if((Prime(a)=true) and (Prime(k)=true)) then
   	  trouve := true
   	else
   	  k:=k+1;
      end;
      if (trouve=true) then 
      writeln(i);
      i:=i+2;
  end;
  Readln;	  
  Readln;
end.

