program MotsMeles;

const
  TailleGrille = 10;

type
  Grille = array[1..TailleGrille, 1..TailleGrille] of Char;
  Mot = record
    MotString: string;
    PositionX, PositionY: Integer;
    Direction: (Horizontale, Verticale);
  end;
  ListeMots = array of Mot;

procedure fill(var grille: Grille; n :longint);
var
  i, j: Integer;
begin
  for i := 1 to n do
    for j := 1 to n do
      grille[i, j] := Chr(Ord('a') + Random(26));  // Lettres majuscules aléatoires
end;

procedure display(const grille: Grille ; n : longint);
var
  i, j: Integer;
begin
  for i := 1 to n do
  begin
    for j := 1 to n do
      Write(grille[i, j], ' ');
    Writeln;
  end;
end;
var n: longint;
M : Grille;
begin
readln(n);
fill(M,n);
writeln;
display(M,n);
readln;
readln;
end.

