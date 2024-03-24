program boom;
var 
  a, b, c: integer;
  d, x1, x2, x3: real;

begin
  write('enter a, b, c: ');
  readln(a, b, c);
  if a = 0 then
    writeln('Impossible')
  else begin
    d := sqr(b) - 4 * a * c;
    if d > 0 then begin
      x1 := (-b + sqrt(d)) / (2 * a);
      x2 := (-b - sqrt(d)) / (2 * a);
      writeln('Solutions of the equation are: ',Round(x1), ' and ',Round(x2));
    end
    else if d = 0 then begin
      x3 := -b / (2 * a);
      writeln('Solution of the equation is: ', Round(x3));
    end
    else
      writeln('There is no solution');
  end;
  readln;
end.

