program helloo;
uses firstb;
Const 
maxl = 10;
Type 
taillel = 1 .. maxl;
taillec = 1 .. maxc;
matrix = array[taillel,taillec] of longint;
var 
A:matrix;
n,i,j,S,S1:longint;
magic : boolean;
begin
write('enter taille of matrica hh n');
read(n);
remplir_m(A,n,n);
display_m(A,n,n);
writeln;
// somme of first ligne
S:=0;
for j:=1 to n do
 S:=S+A[1,j];
//other lignes
 i:=2;
 magic:= true;
 while((i<=n) and (magic)) do
   begin
   S1:=0;
   	for j:=1 to n do
   	S1:=S1+A[i,j];
   if(S<>S1) then magic:=false;
   
   	i:=i+1;
   end;
   //colomns
   j:=1;
     while((j<=n) and (magic)) do
      begin
      S:=0;
        for i:=1 to n do
         S:=S+A[i,j];
	   if(S<>S1) then magic:=false;
	   
	   j:=j+1;
      end;
     //diagonale principale
     if (magic) then
      begin
      i:=1;
      S1:=0;
     while(i<=n) do
      begin
        S1:=S1+A[i,i];
        i:=i+1;
      end;
      if(S1<>S) then
        magic:=false;
      end;
      
      //diagonale secondaire
      if (magic) then
      begin
      i:=1;
      S1:=0;
     while(i<=n) do
      begin
        S1:=S1+A[i,n-i+1];
        i:=i+1;
      end;
      if(S1<>S) then
        magic:=false;
      end;
      
      if(magic) then
       writeln('yes its magic yoo')
       else
      writeln('nah its not magic');
      readln;
      readln;
      
      end.
        
      
      
      
  
