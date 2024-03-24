{program sell;
uses crt,firstb;
const maxl = 10;
maxc = 8;
type 
taillel = 1 .. maxl;
taillec = 1 .. maxc;
matrix = array[taillel,taillec] of longint;
var
M:matrix;
i,j,n,m: longint;
begin
writeln('enter number of lignes');
read(n);
writeln('enter number of colums');
read(m);
remplir_m(M,n,m);
display_m(M,n,m);



end.}
program RemoveRow;
uses crt,firstb;
Const 
max = 20;
maxl = 10;
maxc = 8;
Type 

taillel = 1 .. maxl;
taillec = 1 .. maxc;
mat = array[taillel,taillec] of longint;

procedure DisplayMatrix(var A: mat; rows, cols:longint);
var
  i, j: longint;
begin
  for i := 1 to rows do
  begin
    for j := 1 to cols do
    begin
      write(A[i, j]:4);
    end;
    writeln;
  end;
  writeln;
end;

procedure removeligne(var A: mat; var l, c: longint; ligneindice: longint);
var
  i, j: longint;
begin
  if (ligneindice >= 1) and (ligneindice <= l) then
  begin
    
    for i := ligneindice to l - 1 do
      for j := 1 to c do
        A[i, j] := A[i + 1, j];

    
    l:=l-1;
  end
  else
    writeln('ligne ghalta');
end;

var
  m: Mat;
  l, c, rowToRemove: longint;

begin
writeln('enter l and c');
read(l,c);
  remplir_m(m, l, c);
  writeln('Original Matrix:');
  display_m(m,l,c);

  // Specify the row to remove
  write('Enter the row index to remove: ');
  readln(rowToRemove);

  // Remove the specified row
  removeligne(m, l, c, rowToRemove);

  writeln('Matrix after removing row ', rowToRemove, ':');
  display_m(m,l,c);

  readln;
  readln;
end.

