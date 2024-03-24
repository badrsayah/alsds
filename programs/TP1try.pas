program TP1;
var
  N, d, N0, N1, P, cpt, i: Int64;

begin
  write('Enter a number N: ');
  read(N);

  write('Enter a digit you want to search for: ');
  read(d);

  N0 := N;
  cpt := 0;

  // Count the occurrences of the digit in the number
  while (N0 <> 0) do
  begin
    if (N0 mod 10 = d) then
      cpt := cpt + 1;
    N0 := N0 div 10;
  end;

  if (cpt > 0) then
  begin
    N0 := N;
    i := 0;
    P := 1;
    N1 := 0;

    // Construct the result by removing the first occurrence of the digit
    while (N0 <> 0) do
    begin
      if (N0 mod 10 = d) then
      begin
        i := i + 1;
        if (i < cpt) then
        begin
          N1 := N1 + (N0 mod 10) * P;
          P := P * 10;
        end;
      end
      else
      begin
        N1 := N1 + (N0 mod 10) * P;
        P := P * 10;
      end;

      N0 := N0 div 10;
    end;

    write('The result is: ', N1);
  end
  else
    write('The digit ', d, ' does not exist in the number.');

  readln;
  readln;
end.

