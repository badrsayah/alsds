program exo9;

var
  X, Y, R, b, c, e: longint;

begin

  for b := 0 to 9 do
  begin
    for c := 0 to 9 do
    begin
      for e := 0 to 9 do
      begin
        X := 14000 + b * 100 + c * 10 + 8;
        Y := 509 + e * 10;
        R := X * Y;

        if ((R div 1000000 = 7) and (R mod 1000 = 392)) then
        begin
          writeln('X: ', X, ' Y: ', Y, ' R: ', R);
        end;
      end;
    end;
  end;

  readln;
  readln;

end.

