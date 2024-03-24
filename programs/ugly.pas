program ugly;

var
  N1, N2, i, j, cpt: Int64;
  ugl: boolean;

begin
  write('enter your interval: ');
  read(N1, N2);
  writeln('les nombres ugly sont: ');

  if N1 = 1 then
  begin
    write(N1);
    j := 2;
    cpt := 1;
  end
  else
  begin
    cpt := 0;
    j := N1;
  end;

  while j <= N2 do
  begin
    i := 2;
    ugl := true;  // Reset ugl to true at the beginning of each iteration

    while (i <= j div 2) and ugl do
    begin
      if (i <> 2) and (i <> 3) and (i <> 5) and (j mod i = 0) then
        ugl := false;
      i := i + 1;
    end;

    if ugl then
    begin
      write(j);
      cpt := cpt + 1;
    end;

    j := j + 1;
  end;

  writeln('the number of ugly nums is', cpt);
  readln;
  readln;
end.

