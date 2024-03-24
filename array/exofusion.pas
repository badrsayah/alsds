program Fusion;

const
  MAX = 100;

var
  n, i, j, k, totalElements: integer;
  tableaux: array[1..MAX, 1..MAX] of integer;
  res: array[1..MAX*MAX] of integer;

procedure fusionner(var tableau1, tableau2, resultat: array of integer; taille1, taille2: integer);
var
  i, j, k: integer;
begin
  i := 0;
  j := 0;
  k := 0;

  while (i < taille1) and (j < taille2) do
  begin
    if tableau1[i] <= tableau2[j] then
    begin
      resultat[k] := tableau1[i];
      Inc(i);
    end
    else
    begin
      resultat[k] := tableau2[j];
      Inc(j);
    end;
    Inc(k);
  end;

  
  while i < taille1 do
  begin
    resultat[k] := tableau1[i];
    Inc(i);
    Inc(k);
  end;

  
  while j < taille2 do
  begin
    resultat[k] := tableau2[j];
    Inc(j);
    Inc(k);
  end;
end;

begin
  writeln('Entrez le nombre de tableaux (n) : ');
  readln(n);

  writeln('Entrez les tableaux triés : ');
  totalElements := 0;
  for i := 1 to n do
  begin
    writeln('Entrez la taille du tableau ', i, ' : ');
    readln(j);
    writeln('Entrez les éléments du tableau ', i, ' : ');
    for k := 1 to j do
    begin
      read(tableaux[i, k]);
      Inc(totalElements);
    end;
  end;

  
  k := 0;
  for i := 1 to n do
  begin
    fusionner(res, tableaux[i], res, k, totalElements - k);
    k := k + Length(tableaux[i]);
  end;

 
  writeln('Tableau résultant trié : ');
  for i := 0 to totalElements - 1 do
    write(res[i], ' ');

  readln;
end.

