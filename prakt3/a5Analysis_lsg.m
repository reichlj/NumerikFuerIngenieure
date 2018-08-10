clear
koef = [1 -4 0 7];
koefd1 = polyder(koef);
koefd2 = polyder(koefd1);

x = [-2:0.05:4.5];
y = polyval(koef,x);
d1y = polyval(koefd1,x);
d2y = polyval(koefd2,x);
plot(x,[y;d1y;d2y],'LineWidth',2);
grid on;
%plot(x,y,x,d1y,x,d2y);
%legend('y','y1','y2');

x = [0:0.1:3];
y = polyval(koef,x);
disp('    x       y');
disp('---------------');
for k=1:length(x)
  fprintf('%7.3f %7.3f\n',x(k),y(k));
end

disp('** Nullstellen')
nullst = roots(koef)

disp('** Extrema')
extrema = roots(koefd1)

disp('** Stammfunktion');
intPoly = polyint(koef)

disp('** Integral 1-3');
integral1 = integral(@a5poly_lsg,1,3)

% polynom integrieren
integral2 = polyval(intPoly,3)-polyval(intPoly,1)
