[X,Y]=meshgrid(-2:0.05:2,-1:0.05:1);
Z = X.*exp(-X.*X - 2*Y.*Y);
surf(X,Y,Z)
title('Funktion z = x*exp(-x^2-2y^2)')
xlabel('x')
ylabel('y')
zlabel('x*exp(-x^2-2y^2)')

