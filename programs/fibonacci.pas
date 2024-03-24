program perfect ;

var 
    s, i, j, n : integer;

begin
    write('enter number n');
    read(n);
    
    for i := 1 to n do
    begin
        s := 0;
        for j := 1 to i div 2 do
        begin
            if (i mod j = 0) then
            begin
                s := s + j;
                write(j);
            end;
        end;
    end;
    
    readln;
    readln;
end.

