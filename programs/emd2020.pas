program exo7;

type
  etudiant = record
    nom: string;
    prenom: string;
    matricule: string;
    position: longint;
  end;

  tab = array[1 .. 20] of etudiant;
procedure fill_array(var v : tab; taille : longint);
var i:longint;
begin
 for i := 1 to taille do
  begin
    with v[i] do
    begin
      readln(nom);
      readln(prenom);
      readln(matricule);
      position:=i;
    end;
  end;
 end;
 procedure display_array(v : tab; n : longint);
 var i: longint;
 begin
 for i := 1 to n do
  begin
    with v[i] do
    begin
      writeln(nom, ', ', prenom, ', ', matricule, ', ', position, '->');
    end;
  end;
  end;
  procedure permute(var a,b:etudiant);
var x: etudiant;
begin
x:=a;
a:=b;
b:=x;
end;
 function indice_min(T : tab ; b1 , b2 : longint): longint; // ici b1 et b2 sont deux indices tel que on fait boucle b1 jusquq b2 
 var i,ind: longint;
 begin
 ind := b1;
 for i:=b1+1 to b2 do
 begin
 if (T[i].matricule < T[ind].matricule) then
 ind := i;
 end;
 indice_min := ind;
 end;
 procedure tri_selection(var T : tab;n : longint);
var ind,i,p,err: longint;
begin
for i:=1 to n do
begin
ind := indice_min(T,i,n);
permute(T[i],T[ind]);
//val(copy(T[i].matricule,6,7),p,err);
T[i].position:= i;
end;
end;
procedure getname(v : tab; n: longint; mat: string);
var i: longint;
trouve : boolean;
begin
trouve := false;
  for i:=1 to n do
    begin
      if (v[i].matricule = mat) then
      begin
       writeln('name is :', v[i].nom ,' prenom est :', v[i].prenom);
        trouve := true;
      end;
  end;
  if not(trouve) then
   writeln('matricule not found');
  end;
var
  v: tab;
   n,k: longint;
   mat : string;
begin
  write('enter number of etudiants');
  readln(n);
  
fill_array(v,n);
writeln;
display_array(v,n);
writeln;
tri_selection(v,n);
writeln;
display_array(v,n);
writeln('enter your matricule i will give you your nom et prenom');
readln(mat);
getname(v,n,mat);
writeln('enter your position i will give you your nom et prenom');
readln(k);
writeln('name is :', v[k].nom ,' prenom est :', v[k].prenom); 
  readln;
  readln; // This is optional, it just waits for a key press before closing the program
end.

 
