
{
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
  
  var ch,sch: string;
  begin
   writeln('enter your global chaine');
   readln(ch);
   writeln('enter your sous chaine');
   readln(sch);
   
   writeln('the sous-chaine repeated', nb_sch(ch,sch) ,' times');
 }
 {
 type
  tab = array[1..10] of string;
 procedure n_c_mot(ch : string;c : char; n: longint;var v : tab;var k: longint);
   var i,j,cpt: longint;
   begin
     i:=1; k:=1;
     while( i<= length(ch)) do
      begin
         j:=0; cpt:=0;
        repeat 
          if (ch[i+j]=c) then
          cpt:=cpt+1;
          j:=j+1;
        until(ch[i+j] = ' ');
      if (cpt = n) then
        begin
          v[k]:=copy(ch,i,j);
          k:=k+1;
        end;
        i:=j+1;
     end;
     end;
     var ch: string;
     c: char;
     n,k,i: longint;
     t: tab;
     begin
     
     k:=1;
      readln(ch);
      readln(c);
      read(n);
      n_c_mot(ch,c,n,t,k);
      for i:=1 to k do
        begin
        writeln(t[i]);
      
   readln;
   readln;
   end.
   }
   program Main;

type
  tab = array[1..10] of string;

procedure n_c_mot(ch: string; c: char; n: longint; var v: tab; var k: longint);
var
  i, j, cpt: longint;
begin
  i := 1;
  k := 1;
  while i <= length(ch) do
  begin
    j := 0;
    cpt := 0;
    repeat
      if (ch[i + j] = c) then
        cpt := cpt + 1;
      j := j + 1;
    until (j > length(ch) - i) or (ch[i + j] = ' ');

    if (cpt = n) then
    begin
      v[k] := copy(ch, i, j);
      k := k + 1;
    end;
    i := i + j + 1;
  end;
end;

var
  ch: string;
  c: char;
  n, k, i: longint;
  t: tab;

begin
  k := 1;
  writeln('Enter a string:');
  readln(ch);
  writeln('Enter a character:');
  readln(c);
  writeln('Enter a number:');
  readln(n);

  n_c_mot(ch, c, n, t, k);

  writeln('Result:');
  for i := 1 to k - 1 do
  begin
    writeln(t[i]);
  end;
  readln;
  readln;
end.

