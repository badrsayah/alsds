Program TP1;
uses crt;
Var
  x: Char;
  n,na,ns,sch,s,k,i,ch,cpt : Longint;
  Q1,Q2: Boolean;
Begin
  Q2 := False;
  Q1 := False;
	repeat
  Writeln('--------MENU--------'); // l'affichage de menu
  Writeln('1 : Saisie du type de carte : A , B , C '); // question 1
  Writeln('2 : Saisie et verification du numero de carte ---> A(8 chiffres); B(7 chiffres) ; C(6 chiffres)'); // question 2
  Writeln('3 : Verification de la validite de la carte'); //question 3
  Writeln('4 : Quitter '); // quitter
  Writeln('--------------------');
  Writeln('Quelle est votre choix ---> : '); // l'affichage a l'utilisateur pour entrer le choix
  Readln(ch); // ch est le choix
  Case ch Of
    1 :
        Begin //Q1
        Q1 := true;
          Repeat
            Writeln('Type de carte : A(8 chiffres); B(7 chiffres) ; C(6 chiffres) :');
            Readln(x);
          Until ((x='A') Or (x='B') Or (x='C'));
        End; //fin Q1
    2 :
        Begin //Q2
          If (Q1= True)Then
            Begin
              If (x='A') Then
                Begin
                  Repeat
                    Writeln('veuillez entrer votre numero de carte :');
                    Readln(n);
                    cpt := 0;
                    na := n;
                    While (na <> 0) Do
                      Begin
                        cpt := cpt+1;
                        na := na Div 10;
                      End;
                  Until (cpt = 8);
                End;
              If (x='B') Then
                Begin
                  Repeat
                    Writeln('veuillez entrer votre numero de carte :');
                    Readln(n);
                    cpt := 0;
                    na := n;
                    While (na <> 0) Do
                      Begin
                        cpt := cpt+1;
                        na := na Div 10;
                      End;
                  Until (cpt = 7);
                End;
              If (x='C') Then
                Begin
                  Repeat
                    Writeln('veuillez entrer votre numero de carte :');
                    Readln(n); 
                    cpt := 0;
                    na := n; // sauvegarde n dans na 
                    While (na <> 0) Do
                      Begin
                        cpt := cpt+1;
                        na := na Div 10;
                      End;
                  Until (cpt = 6);
                End;
            End
          Else
            Writeln('traiter la question 1 en premier ');
          If ((cpt = 6) Or (cpt = 7) Or (cpt = 8)) Then
            Q2 := True;
        End; //fin Q2
    3 :
        Begin //Q3
        If ((Q1=False) OR (Q2=False)) Then Writeln('traiter les questions 1 et 2 en premier')
	        Else
            Begin
              Writeln('------validite de la carte------');
              Writeln('type de carte : ', x ,' avec un numero :',n);
              ns := n; // on a sauvgarde le nombre principale dans ns
              s := 0;
              i:=0;
              Repeat
                i := i+1; // i est un compteur qui indique la position du nombre donnee
                If (i Mod 2 =0) Then // la position du chiffre est pair
                  Begin
                    k := (ns Mod 10)*2;
                    sch := 0;
                    While (k <> 0) Do // boucle pour avoir les chiffres du nombre calculee par exemple 16 --> 1 + 6
                      Begin
                        sch := sch + k Mod 10; // cest la somme des chiffre de nombre quon a trouvee dans une position paire
                        k := k Div 10;
                      End;
                    s := s + sch; 
                  End
                Else
                  s := s+ ns Mod 10;
                ns := ns Div 10;
              Until (ns = 0);
              Writeln('somme calculee par la methode = ',s);
              If (s Mod 10 = 0) Then // si on a un 0 a fin de s calculee
                Writeln('le dernier chiffre est un 0 ---> carte valide')
              Else Writeln('la carte nest pas valide');
            End;
            
        End; // fin Q3
4:
  Begin
     //4 eme cas quitter
           Writeln;
           Writeln('fin de programme');
         End
         Else Writeln('une erreur de choix');
    End; // fin de Case
    
		Writeln;
	until Readkey = chr(27);
end. // la fin
