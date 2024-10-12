program idz2_17_1;

var
  a, b, x, h : real;
//a, b - стороны трапеции, x - угол, h - высота

begin
  write('Введите а: ');
  readln(a);
  write('Введите b, меньше a: ');
  readln(b);
  write('Введите угол в градусах, меньше 90: ');
  readln(x);
  x := x*pi/180; // переводим угол в радианы
  h := tan(x)*(a - b)/2; // находим высоту
  write('S = ', (a+b)/2*h);
end.