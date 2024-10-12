program idz2_17_3;

var
  c, d, x1, x2, res, n1, n11, n22, n2, n3 : real;
  f : text;

begin
  assign(f, 'C:\idz\prog\in3.dat');
  reset(f);
  
  readln(f, c, d);
  close(f);
  writeln(c, ' ', d);
  
  x1 := c - d;
  x2 := c + d;
  
  n11 := sin(abs(c*x1*x1*x1 + d*x2*x2 - c*d));
  n1 := n11*n11*n11;
  n22 := c*x1*x1*x1 + d*x2*x2 - x1;
  n2 := exp(0.5 * log(n22*n22 + pi));
  n3 := tan(n22);
  res := abs(n1/n2) + n3; 
  
  print(res);
  
  rewrite(f, 'C:\idz\prog\out3.dat');
  
  write(f, res);
  
  close(f);
end.