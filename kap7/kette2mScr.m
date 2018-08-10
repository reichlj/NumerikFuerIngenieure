clear
cm = 1
x0 = [1; -0.5]
%x0 = [1; 1]
%x0 = [1; -1]
v0 = [0; 0]
A = [2*cm -cm; -cm 2*cm]
[V,D] = eig(A);
w = sqrt(diag(D));
disp('Eigenvektoren')
disp(V)
disp('Eigenfrequenzen')
disp(w)
disp('Anteile cos-Terme')
a = V\x0
disp('Anteile sin-Terme')
b = (1./w) .* (V\v0)

t=0:0.1:10;
x = V(:,1).*( a(1)*cos(w(1)*t) + b(1)*sin(w(1)*t) )+...
    V(:,2).*( a(2)*cos(w(2)*t) + b(2)*sin(w(2)*t) );
plot(t,x,'lineWidth',2)
anfBed = sprintf('x0(1)=%.2f v0(1)=%.2f   x0(2)=%.2f v0(2)=%.2f',...
                 x0(1),v0(1),x0(2),v0(2));
anTeile = sprintf('a(1)=%.2f a(2)=%.2f    b(1)=%.2f b(2)=%.2f',...
                 a(1),a(2),b(1),b(2));
titleStr=sprintf('%s\n%s',anfBed,anTeile);
title(titleStr);
