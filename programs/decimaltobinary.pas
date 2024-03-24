program decitobin;

var
  n, r, s, p: integer;

begin
  write('Enter value of n: ');
  readln(n);
  s := 0;
  p := 1;

  while n > 0 do
  begin
    r := n mod 2;
    s := s + r * p;
    p := p * 10;
    n := n div 2;
  end;

  writeln('The binary representation is: ', s);
end.

