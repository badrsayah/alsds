{program exo7;
uses firstb;
var a,b,c,d,e,f,n,k:longint;
begin
  for a:=1 to 9 do
   begin
     for b:=1 to 9 do
      begin
     	for c:=1 to 9 do
     	 begin
     	    for d:=1 to 9 do
		 begin
		     for e:=1 to 9 do
		     begin
		         for f:=1 to 9 do 
		         begin
		         n:= a*100 + b*10 + c;
		         k:= d*100 + e*10 + f;
		         if ((sum_degits(n+k)=18) and (order(concate(n,k,n+k))=123456789) and (nb_degit(n+k) = 3)) then
		         writeln(n,' + ',k,' = ',n+k);
		         
		      
		         end;
		         end;
		         end;
		         end;
		         end;
		         end;
		         readln;
		         readln;
		         end.}
program exo7;

function power(base, exponent: longint): longint;
var
  result, i: longint;
begin
  result := 1;
  for i := 1 to exponent do
  begin
    result := result * base;
  end;
  power := result;
end;
function nb_degit(num: longint): longint;
var
  count: longint;
begin
  count := 0;
  while num <> 0 do
  begin
    count := count + 1;
    num := num div 10;
  end;
  nb_degit := count;
end;
function order(num: longint): longint;
var
  i, r, s, p: longint;
begin
  r := 0;
  p := 1;
  i := 9;
  while i >= 1 do
  begin
    s := num;
    while s <> 0 do
    begin
      if i = (s mod 10) then
      begin
        r := r + (s mod 10) * p;
        p := p * 10;
      end;
      s := s div 10;
    end;
    i := i - 1;
  end;
  order := r;
end;

function concate(a, b, c: longint): longint;
begin
  concate := a * power(10,nb_degit(b) + nb_degit(c)) +
             b * power(10,nb_degit(c)) +
             c;
end;

function sum_degits(num: longint): longint;
var
  s: longint;
begin
  s := 0;
  while num <> 0 do
  begin
    s := s + (num mod 10);
    num := num div 10;
  end;
  sum_degits := s;
end;



var
  a, b, c, d, e, f, n, k, g, h, i, y: longint;

begin
  for a := 1 to 9 do
  begin
    for b := 1 to 9 do
    begin
      for c := 1 to 9 do
      begin
        for d := 1 to 9 do
        begin
          for e := 1 to 9 do
          begin
            for f := 1 to 9 do
            begin
                    n := a * 100 + b * 10 + c;
                    k := d * 100 + e * 10 + f;
                    y := n + k;
                    if ((sum_degits(y) = 18) and (order(concate(n, k, y)) = 123456789) and (nb_degit(y) = 3) and (n<k)) then
                      writeln(n, ' + ', k, ' = ', y);
                  
            end;
          end;
        end;
      end;
    end;
  end;

  readln;
  readln;
end.

