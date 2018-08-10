clear
koef = [1 -4 0 7];
koefd1 = polyder(koef);
koefd2 = polyder(koefd1);

disp('Teilaufgabe 1')
x = [-2:0.05:4.5];
y = polyval(koef,x);
d1y = polyval(koefd1,x);
d2y = polyval(koefd2,x);
plot(x,y,x,d1y,x,d2y,'LineWidth',2);
plot(x,[y;d1y;d2y],'LineWidth',1);
legend('y','y1','y2');
grid on

disp('Teilaufgabe 2')
x = [0:0.1:3];
y = polyval(koef,x);
disp('    x       y');
disp('---------------');
for k=1:length(x)
  fprintf('%7.3f %7.3f\n',x(k),y(k));
end
fprintf('%7.3f %7.3f\n', [ x; y]);

disp('Teilaufgabe 3')
disp('** Nullstellen')
nullst = roots(koef)
disp('** Extrema')
extrema = roots(koefd1)
y_extrema = polyval(koef,extrema)

disp('Teilaufgabe 4')
disp('** Stammfunktion');
intPoly = polyint(koef)

disp('Teilaufgabe 5')
integral2 = polyval(intPoly,3)-polyval(intPoly,1)
disp('** Integral 1-3');
integrala = integral(@a1poly,1,3)
integralb = integral(@(x) x.^3-4*x.^2+7,1,3)
