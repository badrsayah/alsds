program MainProgram;
uses firstb;

var
  sum,a,b2: int64;

begin
  // Example of using functions from the unit
  sum := AddTwoNumbers(3, 5);
  writeln('Sum:', sum);

  write('enter a number :');
  read(a);
  write('enter your base b2:');
  read(b2);
  writeln(a,'is a :',Isprime(a),' number');
  write('the number of degits of:',a,' is :',nb_degit(a));
  write('the number :',a,' in system',b2,' is:',convert(a,10,b2));
end.

