% Polynomauswertung
%   Polynom a eingeben  : [ ... ] 
%   Werte für x eingeben: 
%    3.4 oder [ 2.3 4.5 -1.3 ] oder 1.0:0.1:2.0
a=input('Polynom ( [3 -2 1] ): ');
%a = [ -2.14 3.78 -4.36]
x=input('x-Werte( 2.3 oder [2 3 4] oder 1:0.1:2 ): ');
%x = [-1.4  -1.1  -0.9  -0.31  0.2  0.56  1.2 ]
y=polyval(a,x);
disp('Polynom')
disp(a)
disp('Wertetabelle')
disp('    x          y(x)  ')
fprintf('%8.4f  %10.6f\n',[x;y])
if length(x)> 1
   plot(x,y)
end