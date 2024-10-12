program idz2_17_2;

var
  a, b, c1, c2, c3, c4, c5 : real;
  f : text;
  
begin
  assign(f, 'C:\idz\prog\in2.dat');
  reset(f);
  
  readln(f, a);
  writeln('a = ', a);
  
  b := a*a*a*a*a; // За 5 операций
  writeln('a^5 = ', b);
  
  c1 := a*a; // 1 + 1 = 2
  c2 := c1*c1; // 2 + 2 = 4
  c3 := c2*c2; // 4 + 4 = 8
  c4 := c3*c3*c1*a; // 8 + 8 + 2 + 1 = 19
  write('a^19 = ', c4); // За 6 операций
  
end.