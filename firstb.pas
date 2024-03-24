unit firstb;

interface

Const 
max = 20;
maxl = 10;
maxc = 8;
Type 
Taille = 1..max;
Tab = Array[Taille] Of Longint;
taillel = 1 .. maxl;
taillec = 1 .. maxc;
matrix = array[taillel,taillec] of longint;

function AddTwoNumbers(a, b: Integer): longint;
function IsPrime(num: Integer): string;
function sum_divisors(num: int64): int64;
function perfect(num: int64):boolean;
function puissance(a,b: longint): longint;
function nb_degit(num: longint) : longint;
function convertbasetodecimal(num,base: int64):int64;
function convertdecimaltobase(num,base : int64): int64;
function convertb1tob2(num,b1,b2 : int64):int64;
function freqch(num,c:int64):int64;
function sum_degits(num: longint):longint;
function extrairech(num ,pos : int64):int64;
function extract_degit_from_p_to_m(num,p,m:longint):longint;
function k_harshad(num: int64): int64;
function shiftright(num: int64):int64;
procedure permute(var a,b:longint);
function mirroir(num : longint):longint;
function num_exist(num,c :longint):boolean;
function order(num :longint):longint;
function concate(a,b,c:longint):longint;
function repeat_degit(d,nb:longint):longint;
function delete_degit(n,d: longint):longint;
//functions of arrays >>>
procedure remplir(var T : tab ;var size : longint);
procedure display(T : tab ; size : longint);
function exist(T : tab ; n: longint ; d : longint): Boolean;
function number_occ(T : tab ; n: longint ; d : longint): longint;
function min_tab(T : tab ; n: Longint) : Longint;
function max_tab(T : tab ; n: Longint) : Longint;
function indice_min(T : tab ; b1 , b2 : longint): longint;
Function Ind_grand(T : tab; A,B : longint): longint;
Function lig_mincol(T : matrix; l,col : longint): longint;
Function lig_maxcol(T : matrix; l,col : longint): longint;
Function col_minlig(T : matrix; lig,C : longint): longint;
Function col_maxlig(T : matrix; lig,C : longint): longint;
//---------Comptage des elements------------------------------------------------
Function Comptinf(T : tab; n,V : longint) : longint;
Function FreqV1D(T : tab; n,V : longint) : longint;
Function FreqV2D(T : matrix; l,C,V : longint) : longint;
//------------------------------------------------------------------------------

//----------Conversion De Tables------------------------------------------------
Procedure Convert2to1(T2 : matrix;l,C : longint; var T1 :tab; var n : longint);
Procedure Convert1to2(T1 : tab; n : longint;var T2 : matrix; l : longint; var C : longint);
Procedure Invert1D(var T : tab; n : longint);
Procedure Transpose(var T : matrix;var l,C : longint);
procedure sym(var t:matrix;var l:longint ;var c:longint);
//------------------------------------------------------------------------------

//---------Insertion et suppression dans les Tableaux---------------------------
Procedure insertcase (var T : tab; var n : longint; V,R : longint);
Procedure Delcase (var T : tab;var n : longint;R : longint);
Procedure Dellig(var T : matrix;var l : longint;C : longint; lig : longint);
Procedure Delcol(var T : matrix;l : longint;var C : longint; col : longint);
//------------------------------------------------------------------------------
procedure tri_selection(var T : tab; n : longint);
Procedure Tri_transp(var T : tab; n : longint);
Procedure Tri_bulle(var T : tab; n : longint);
Procedure Tri_compt3(T1 : tab; n : longint; var T2 : tab);
Procedure Tri_compt2(var T : tab; n : longint);
Procedure Tri_compt1(var T : tab; n : longint);
function rechdich( T : tab; n,V : longint ): longint;
procedure inverse_tab(var T : tab; n : longint);
procedure remove_number(var T : tab ;var n : longint ; d : longint);
procedure rolate_right(var T : tab ; var n,x : longint);
// function of matrix
procedure remplir_m(var M : matrix ; l,c : longint);
procedure display_m(M : matrix ; l,c : longint);
function min_m(M : matrix ; n,k: Longint ) : Longint;
function max_m(M : matrix ; n,k: Longint ) : Longint;
// functions of chaine de characters
function first_schaine(ch,sch:string):longint;
function nb_sch(ch,sch: string): longint;
function anagram(ch,sh:string):boolean;
procedure decalage_circulaire_droite(var ch : string; times : longint);

implementation

function AddTwoNumbers(a, b: Integer): longint;
begin
  AddTwoNumbers := a + b;
end;
// prime
function IsPrime(num: Integer): string;
var
  i: Integer;
  result : boolean;
begin
  Result := True;
  for i := 2 to num div 2 do
  begin
    if num mod i = 0 then
      Result := False;
  end;
  if result=true then 
  Isprime := 'prime'
  else Isprime := ' not prime';
end;
// sum of divisors of num 

function sum_divisors(num : int64):int64;
var s,i:int64;
begin
s:=num+1;
for i:=2 to num div 2 do
begin
if (num mod i=0) then
 s:=s+i;
end;
sum_divisors := s;
end;

//perfect number is a num equal to sum of its divisors except itself

function perfect(num : int64):boolean ;

begin
   if (num = sum_divisors(num)-num) then 
   perfect := true
   else
   perfect := false
end;


// a puisance b

function puissance(a,b: longint):longint;
var i,p: int64;
begin
p:=1;
for i:=1 to b do
p:=p*a;
puissance := p;
end;

//nombre des positions dans un nombre
function nb_degit(num: longint): longint;
var d: longint;
begin
d:=0;
while (num <> 0) do
begin
d:=d+1;
num := num div 10;
end;
nb_degit := d;
end;
//convertir un numero du base b1 a decimal
function convertbasetodecimal(num,base:int64):Int64;
var s,p: Int64; 
begin
//from base to decimal
s:= 0;
p:=1;
while(num <> 0) do
begin
s:= s + (num mod 10)*p;
p:=p*base;
num := num div 10;
end;
convertbasetodecimal := s;
end;
function convertdecimaltobase(num,base: int64): int64;
var s,p: int64;
begin
s:=0;
p:=1;
while(num <> 0) do
begin
s:= s+ (num mod base)*p;
p:=p*10;
num := num div base;
end;
convertdecimaltobase := s;
end;
// convertir number de base b1 to b2
function convertb1tob2(num,b1,b2: int64):int64;
var d: int64;
begin
d:= convertbasetodecimal(num,b1);

	convertb1tob2 := convertdecimaltobase(d,b2);
end;
//nombre dapparition dun chifre c dans num
function freqch(num,c:int64):int64;
var cpt: int64;
begin
cpt:=0;
while(num <> 0) do 
begin
if (num mod 10 = c) then
cpt:= cpt + 1;
num := num div 10;
end;
freqch := cpt;
end;

//some des chiffres de num 
function sum_degits(num: longint):longint;
var s: longint;
begin
s:=0;
while(num <> 0) do
begin
s:= s + (num mod 10);
num := num div 10;
end;
sum_degits := s;
end;
function extrairech(num ,pos : int64):int64;
var i: int64;
begin
for i:=1 to pos-1 do
num:=num div 10;
extrairech := num mod 10;
end;
function extract_degit_from_p_to_m(num,p,m:longint):longint;
begin 
extract_degit_from_p_to_m:=(num div puissance(10,p-1)) mod puissance(10,m);
end;

function k_harshad(num: int64): int64;
var s,k: int64;
hd: boolean;
begin
hd := true;
k:=1;
s:=num;
repeat
if (s mod sum_degits(s) <> 0)then
hd := false
else 
k:=k+1;
s:= puissance(s,k);
until(hd = false);
if (hd= false) then k_harshad:=0
else
k_harshad := k;
end;
function shiftright(num: int64):int64;
var p,d: int64;
begin
p:=puissance(10,nb_degit(num) - 1);
d:=num div p;
num := (num mod p)*10 + d;
shiftright:= num;
end;
// permute a avec b
procedure permute(var a,b:longint);
var x: longint;
begin
x:=a;
a:=b;
b:=x;
end;
//function display inverse of num
function mirroir(num : longint):longint;
var s: longint;
begin
s:=0;
while(num <> 0) do
begin
s := num mod 10 + s*10;
num := num div 10;
end;
mirroir := s;
end;
//exist degit c dans num?
function num_exist(num,c :longint):boolean;
var trouve: boolean;
begin
trouve := false;
while((num <> 0) and (trouve=false)) do
begin
if ( num mod 10 = c) then
trouve := true
else 
num := num div 10;
end;
num_exist := trouve;
end;
function order(num :longint):longint;
var i,r,s,p:longint;
begin
r:=0;
p:=1;
i:=9;
while(i>=1) do
 begin
 s:=num;
   while(s <> 0) do
   begin
   if(i=(s mod 10)) then
    begin
      r:=r + (s mod 10)*p;
      p:=p*10;
   end;
   s:=s div 10;
   end;
   i:=i-1;
end;
order := r;
end;
function concate(a,b,c:longint):longint;
begin
concate:=a*puissance(10,nb_degit(b)+nb_degit(c))+b*puissance(10,nb_degit(c)-1)+c;
end;

//function returns a degit d repeated nb times
function repeat_degit(d,nb:longint):longint;
var s: longint;
begin
s:=0;
while(nb<>0) do
  begin
   s:=s+puissance(10,nb-1)*d;
   nb:=nb-1;
  end;
  repeat_degit:=s;
  end;
  //supprimer degit d de n
  function delete_degit(n,d: longint):longint;
  var s,p:longint;
   begin
   s:=0;
   p:=1;
   while(n<>0) do
   begin
    if(n mod 10 <> d) then
           begin
           s:=s+ (n mod 10)*p;  
           p:=p*10;
           end;
     n:=n div 10;
   end;
    delete_degit:=s;
    end;
    
// functions related to arrays >>>
// remplir un tableau avec lire
procedure remplir(var T : tab ;var size : longint);
var 
i: longint;
begin
for i:=1 to size do
 begin

  write('T[',i,'] =');
  read(T[i]);

 end;
end;
// afficher le contenue de tableau avec write
procedure display(T : tab ; size : longint);
var 
i: longint;
begin
for i:=1 to size do
begin
  write(T[i]);
  write('-->');
  end;
end;
// function returns boolean if number d exists in tab 
function exist(T : tab ; n: longint ; d : longint): Boolean;
var i: longint;
trouve : boolean = false;
begin
i:=1;
while((i<=n) and (trouve=false)) do
begin
if (T[i] = d) then
 trouve := true;
 end;
 exist := trouve;
 end;
// function finds number of occurence of a nubmer giving d
function number_occ(T : tab ; n: longint ; d : longint): longint;
var i,cpt: longint;
begin
cpt :=0;
for i:=1 to n do
begin
if (T[i] = d) then
 cpt:= cpt + 1;
 end;
 number_occ := cpt;
 end;
 //minimum des valeur du tableau
 function min_tab(T : tab ; n: Longint) : Longint;
 var i,min: longint;
 begin
 min := T[1];
 for i:=2 to n do
 begin
 if (T[i] < min) then
 min := T[i];
 end;
 min_tab := min;
 end;
 //maximum des valeur du tableau
function max_tab(T : tab ; n: Longint) : Longint;
var i,max: longint;
 begin
 max := T[1];
 for i:=2 to n do
 begin
 if (T[i] > max) then
 max := T[i];
 end;
 max_tab := max;
 end;
 // function which returns the index of the minimum value of tab in a part of tab
 function indice_min(T : tab ; b1 , b2 : longint): longint; // ici b1 et b2 sont deux indices tel que on fait boucle b1 jusquq b2 
 var i,ind: longint;
 begin
 ind := b1;
 for i:=b1+1 to b2 do
 begin
 if (T[i] < T[ind]) then
 ind := i;
 end;
 indice_min := ind;
 end;
 
 Function ind_grand(T : tab; a,b : longint) : longint ;
var i,inter : longint;
begin
   inter := a;
   for i:=a+1 to b do if T[i] > T[inter] then inter := i;
   ind_grand := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function lig_Mincol (T : matrix; l,col : longint) : longint;
var i : longint;
begin
   lig_mincol:=1;
   for i:=2 to l do if T[i,Col] < T[lig_mincol,col] then lig_mincol := i;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function lig_Maxcol (T : matrix; l,col : longint ) : longint;
var i : longint;
begin
lig_maxcol:=1;
for i:=2 to l do if T[i,Col] > T[lig_maxcol,col] then lig_maxcol := i;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function col_minlig (T : matrix; lig,C : longint) : longint;
var j : longint;
begin
col_minlig:=1;
for j:=2 to C do if T[lig,j] < T[lig,col_minlig] then col_minlig := j;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function col_maxlig (T : matrix; lig,C : longint) : longint;
var j: longint;
begin
col_maxlig:=1;
for j:=2 to C do if T[lig,j] > T[lig,col_maxlig] then col_maxlig := j;
end;
 //------------------------------------------------------------------------------
Function comptinf(T : tab; n,V : longint ) : longint;
var i,inter : longint;
begin
inter := 0 ;
for i:= 1 to n do if T[i]<V then inter := inter + 1 ;
comptinf := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function FreqV1D(T : tab; n,V : longint):longint;
var i,inter : longint;
begin
inter:=0;
for i:=1 to n do if T[i] = V then inter := inter + 1;
freqV1D := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function FreqV2D(T : matrix; l,C,V : longint):longint;
var i,j,inter : longint;
begin
inter:=0;
for i:=1 to l do for j:=1 to C do if T[i,j] = V then inter := inter + 1;
freqV2D := inter;
end;
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
procedure Convert2to1 (T2 : matrix; l,C : longint; var T1 : tab ; var n : longint);
var i,j : longint;
begin
for i:=1 to l do for j:=1 to C do T1[j + (i - 1)*C]:=T2[i,j];
n:= l * C;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure Convert1to2 (T1 : tab; n : longint;var T2 : matrix;l : longint;var C : longint);
var i : longint;
begin
if (n mod l) = 0 then C:=n div l else C:=n div l + 1;
for i:=1 to L*C do T2[(i-1) div C + 1,(i-1) mod C + 1]:=0;
for i:=1 to n do T2[(i-1) div C + 1,(i-1) mod C + 1] := T1[i];
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Invert1D(var T : tab; n : longint);
var i : longint;
begin
for i:=1 to n div 2 do Permute(T[n-i+1],T[i]);
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure transpose(var T: matrix; var l,C : longint);
var i,j,LC : longint;
begin
if l>C then LC:=l else LC:=C;
for i:=1 to LC do for j:=1 to LC do if j>i then permute(T[i,j],T[j,i]);
permute(l,C);
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure sym(var t:matrix;var l:longint ;var c:longint);
var i,j:longint;
begin
for i:=1 to l  do
for j:=1 to c do
if (j>i) then permute(t[i,j],t[j,i]);
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure insertcase (var T : tab; var n : longint; V,R : longint);
var i : longint;
begin
if R<=n then for i:= R to n+1 do permute(T[i],V)
        else T[n+1] := V;
n:=n+1;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure DelCase (var T : tab; var n : longint; R : longint);
var i : longint;
begin
if R <= n then
   begin
   for i:=R to n-1 do T[i]:=T[i+1];
   n:=n-1;
   end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure dellig (var T : matrix;var l : longint; C,lig : longint);
var i,j : longint;
begin
if lig <= l then
   begin
   for i:=lig to l-1 do for j:=1 to C do T[i,j]:=T[i+1,j];
   l:=l-1;
   end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure delcol (var T : matrix; l : longint; var C : longint ;col : longint);
var i,j : longint;
begin
if col <= C then
   begin
   for j:=col to C-1 do for i:=1 to l do T[i,j] := T[i,j+1];
   C := C-1;
   end;
end;
//------------------------------------------------------------------------------

// procedure tri par selection (indic_minimun + permute)

procedure tri_selection(var T : tab;n : longint);
var ind,i: longint;
begin
for i:=1 to n do
begin
ind := indice_min(T,i,n);
permute(T[i],T[ind]);
end;
end;
// inverse of tab elements
procedure inverse_tab(var T : tab; n : longint);
var x,i: longint;
begin
for i:=1 to n div 2 do
begin
x:=T[i];
T[i]:=T[n];
T[n]:=x;
n:=n-1;
end;
end;

//----------------------trie par transposition --------------------------------
Procedure Tri_transp(var T : tab; n : longint);
var i,j : longint ;
begin
for i:=1 to n-1 do
    begin
    j:=i;
    while (T[j] > T[j+1]) and (j > 0) do
          begin
          Permute(T[j],T[j+1]);
          J:=j-1;
          end;
    end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Tri_Bulle(var T : tab; n : longint );
var i,m : longint ; modif : boolean;
begin
modif := True ;
m:=n;
while modif or (m>2) do
      begin
      modif := false;
      for i:=1 to m-1 do if T[i] > T[i+1] then
          begin
          permute(T[i],T[i+1]);
          modif := true;
          end;
      m:=m-1;
      end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Tri_compt3(T1 : tab; n : longint; var T2 : tab);
var i,j,k : longint;
    tabcompt : tab;
begin
for i:=1 to n do tabcompt[i] := comptinf(T1,n,T1[i]);
for i:=1 to n-1 do
    begin
    k:=1;
    for j:=i+1 to n do if tabcompt[i] = tabcompt[j] then
        begin
        tabcompt[j] := tabcompt[j] + k;
        k := k+1;
        end;
   end;
for i:=1 to n do T2[tabcompt[i]+1] := T1[i];
end;
//------------------------------------------------------------------------------

//--------------------------trie avec table de comptage ----------------------------
procedure Tri_compt2(var T : tab; n : longint);
var i,j,k : longint;
    tabcompt : tab;
begin
for i:=1 to n do tabcompt[i] := comptinf(T,n,T[i]);
for i:=1 to n-1 do
    begin
    k:=1;
    for j:=i+1 to n do if tabcompt[i] = tabcompt[j] then
        begin
        tabcompt[j] := tabcompt[j] + k;
        k := k+1;
        end;
     end;
i:=1;
while i< n do
      begin
      while i <> (tabcompt[i] + 1) do
            begin
            permute(T[i],T[tabcompt[i]+1]);
            permute(tabcompt[i],tabcompt[tabcompt[i]+1]);
            end;
      i := i+1;
      end;
end;
//------------------------------------------------------------------------------

//--------------------------trie sans utilise un table de comptage ---------------------------
Procedure Tri_Compt1(var T : tab; n : longint);
var i,cpt,k : longint;
begin
i:=1;
while i<n do
      begin
         cpt := comptinf(T,n,T[i]);
         if (cpt+1)<= i then i:=i+1 else
            begin
               k:=1;
               while T[i] = T[cpt+k] do k:=k+1;
               permute(T[i],T[cpt+k]);
            end;
      end;
end;

//-------------------tri dun tab tries avec dich-----------------------------------------------------------
function rechdich( T : tab; n,V : longint ): longint;
var Binf,Bsup,mediane : longint;
begin
Binf:=1;
Bsup:=n;
mediane := (Binf + Bsup) div 2 ;
while (Bsup>=Binf) and (T[mediane] <> V) do
      begin
      if V < T[mediane] then Bsup := mediane - 1 else Binf := mediane + 1 ;
      mediane := (Bsup + Binf) div 2;
      end;
if T[mediane] = V then rechdich := mediane else rechdich := -1;
end;
// remove the number d from the array

procedure remove_number(var T : tab ;var n : longint ; d : longint);
var i,j,k : longint;
begin
for i:=1 to n do
  begin
     if(T[i] = d) then
     begin
     j:=i+1;
     T[i]:=T[j];
     n:=n-1;
     for k:=j to n do
     T[k]:=T[k+1];
     end;
  end;
  end;
  
//procedure which rolates tab x times
procedure rolate_right(var T : tab ; var n,x : longint);
var d,i,j : longint;
begin
for i:=1 to x do
 begin
   d:=T[n];
   j:=n-1;
     while(j>=1) do
       begin
       T[j+1]:=T[j];
       j:=j-1;
       end;
       T[1]:=d;
 end;
 end;

//procedure read elements of matrix >>
procedure remplir_m(var M : matrix ; l,c : longint);
var i,j: longint;
begin
for i:=1 to l do
   begin
     for j:=1 to c do 
        begin
          write('M[',i,',',j,'] = ');
          read(M[i,j]);
       end;
   end;
   end;
   
   procedure display_m(M : matrix ; l,c : longint);
   var i,j: longint;
   begin
   for i:=1 to l do
     begin
        for j:=1 to c do 
          begin
            write(M[i,j],'  ');
          end;
       writeln;
      end;
    end;
//function to get max from matrix
function max_m(M : matrix ; n,k: Longint ) : Longint;
var i,j,max: longint;
 begin
 max := M[1,1];
 for i:=1 to n do
  begin
    for j:=1 to k do
      begin
	 if (M[i,j] > max) then
	 max := M[i,j];
      end;
  end;
	 max_m := max;
 end;
//function to get min from matrix
function min_m(M : matrix ; n,k: Longint ) : Longint;
var i,j,min: longint;
 begin
 min := M[1,1];
 for i:=1 to n do
  begin
    for j:=1 to k do
      begin
	 if (M[i,j] < min) then
	 min := M[i,j];
      end;
  end;
	 min_m := min;
 end;
//chaine de characteres

//returns the first index of first apparition of sous-chaine in chaine like helloyouareyou ---> first index of "you" is 6

function first_schaine(ch,sch:string):longint;
var i,j,ls,lc,trouve: longint;
begin
 trouve:=0;
 ls:=length(sch);
 lc:=length(ch);
 i:=1;
 while((trouve=0) and (i<= lc - ls +1)) do
   begin
     if(ch[i]=sch[1]) then
       begin
         j:=2;
           while((sch[j]=ch[i+j-1]) and (j<=ls)) do
             j:=j+1;
          if(j>ls) then
           trouve:=i;
     end;
    i:=i+1;
   end;
   first_schaine:=trouve;
   end;
   //return how many sch in ch in cpt
   function nb_sch(ch,sch: string): longint;
var i,j,cpt: longint;
trouve : boolean;
begin
cpt:=0;
i:=1;
  while(i<=length(ch)) do
    begin
      j:=1;
      trouve := true;
        while( (j<=length(sch)) and (i<=length(ch)) and (trouve)) do
          begin
           if (sch[j]=ch[i]) then
             begin
               j:=j+1;
               i:=i+1;
             end
            else
              begin
                trouve:=false;
                i:=i+1;
              end;
           end;
       if (trouve) then cpt:=cpt+1;
     end;
    nb_sch:=cpt;
  end;

// function returns if two chaines are anagram
function anagram(ch,sh:string):boolean;
var 
n,m,i,j,k,nbc,nbs:longint;
anag:boolean;
x:char;
begin
n:=length(ch);
m:=length(sh);
if(n=m) then
  begin
    anag:=true;
   i:=1;
   while((i<=n) and (anag)) do
     begin
      x:=ch[i];
       k:=1;
       nbc:=0;
        while(k<=n) do
          begin
            if(ch[k]=x) then
              nbc:=nbc+1;
            k:=k+1;
           end;
         j:=1;
         nbs:=0;
         while(j<=m) do
           begin
             if(x=sh[j]) then
               nbs:=nbs+1;
             j:=j+1;
           end;
         
         if(nbc<>nbs) then
           anag:=false;   
          i:=i+1;
       end;
   end
  else
    anag:=false;

anagram:=anag;
end;
procedure decalage_circulaire_droite(var ch : string; times : longint);
var i,j: longint;
 x : char;
begin
  for i:=1 to times do
    begin
      j := length(ch);
      x := ch[j];
        while(j>=1) do
          begin
            ch[j]:=ch[j-1];
            j:=j-1;
          end;
        ch[1]:=x;
    end;
   end;
   
         
end.
