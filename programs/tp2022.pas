Program TP1_2223;
Uses crt;
Var
  N, N1, NS, N2, P : LongInt;
  CP, Ch : Integer;
  C1, C2, C3 : Integer;
  NbC1, NbC2, NbC3 : Integer;
  Q1, Q2, Trouve : Boolean;
Begin    //Principal
  Q1:=False;
  Q2:=False;
  Repeat
    //Clrscr;
		Writeln ('------------------- MENU -------------------'); 
		Writeln('1 : Suppression de la 1ere occurence d''un chiffre pair : Resultat N1');
    Writeln('2 : Calcul du nombre d''apparition dans N1 de 3 chiffres : C1, C2, C3');
    Writeln('3 : Inverser l''ordre du nombre entier N1');
    Writeln('4 : Quitter');
		Writeln;
    Write ('Choix ? : ');
    Readln(Ch);
		Writeln;
    Case Ch Of
      1:
         Begin   //1
				   Q1:=True;
					 Write('Donner N : ');
           Readln(N);
					 //Initialisations
           N1 := 0;
           P := 1;
           N1 := 0;
           NS := N; //Sauvegarde de N
           Repeat
             Write('Donner un chiffre pair <> de 0 et <9 : ');
             Readln(CP)
           Until ((CP<>0) And ((CP Mod 2)=0) AND (CP < 9));
           Trouve := False ;
           While (N<>0) Do
             Begin
               If ( N Mod 10 <> CP) Or ( Trouve=True) Then
                 Begin
                   N1 := N1+ (N Mod 10)*P;
                   P := P*10;
                 End
               Else Trouve := True ;
               N := N Div 10 ;
             End ;
           If trouve Then
					 Begin
					   N1:=N1*10;
						 Writeln(' Le resultat est N1 : ', N1)
					 End
           Else
					 Begin 
					   Writeln('Le chiffre pair : ',CP,' ne se trouve pas dans N');
             N1 := NS;
             Writeln('N1 est le meme que N : ',N1);
           End;
				 NS:=N1;    //Sauvegarde de N1
         End; // 1
      2:
         Begin //2
           If Q1=False Then Writeln ('Traiter la Question 1 en premier')
           Else
             Begin
						   N1:=NS;
						   Q2:=True;
						   Writeln('---------------------------');
               Writeln('Traitement de la question 2');
               Writeln('---------------------------');
							 Writeln('N1 obtenu en 1 : ', N1);
               Write ('Donner C1, C2, C3 : ');
               Readln (C1, C2, C3);
							 //Initialisations
               NbC1 := 0;
               NbC2 := 0;
               NbC3 := 0;
               Writeln('N1 = ', N1);
               While (N1 <>0 ) Do
                 Begin
                   If (N1 Mod 10)= C1 Then NbC1 := NbC1 +1
                   Else If (N1 Mod 10= C2) Then NbC2 := NbC2 +1
                   Else If (N1 Mod 10= C3) Then NbC3 := NbC3 +1;
                   N1 := N1 Div 10 ;
                 End ;
               Writeln (' Le chiffre : ',C1,' existe :  ', NbC1, ' fois');
               Writeln (' Le chiffre : ',C2,' existe :  ', NbC2, ' fois');
               Writeln (' Le chiffre : ',C3,' existe :  ', NbC3, ' fois');
             End;
						 N1:=NS;
         End; // 2
      3:
         Begin  //3
				  If ((Q1=False) OR (Q2=False)) Then Writeln ('Traiter les Questions 1 et 2 en premier')
	        Else
          Begin
					  Q2:=True;
						N1:=NS;
					  Writeln('---------------------------');
            Writeln('Traitement de la question 3');
            Writeln('---------------------------');
						Writeln('N1 obtenu en 2 : ', N1);
	   			  N2 := 0;
            While N1 <> 0 Do
            Begin
              N2 := N2*10+ (N1 Mod 10);
              N1 := N1 Div 10 ;
            End ;
          Writeln (' Le nombre N2 est :  ', N2) ;
          End;
			   End;
      4:
         Begin
           //4
           Writeln;
           Writeln('Fin de programme');
         End
         //4
         Else Writeln('Erreur de choix');
    End; //Case
    
		Writeln;
  Until Readkey= Chr(27);
End.   //la fin du program
