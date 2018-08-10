clear
disp('Aufgabe 4')
% sin(x) und sin(x)*cos(x) im Bereich 0-2*pi
x = 0:pi/100:2*pi;
y1 = sin(x);
y2 = cos(x).*sin(x);

plot(x,y1,x,y2)
title('Sin-Fktn - Sin*Cos-Fktn - Variante 1');

% Y = [y1;y2];
% plot(x,Y)
% title('Sin-Fktn - Sin*Cos-Fktn - Variante 2');
% 
% plot(x,y1)
% hold on
% plot(x,y2)
% title('Sin-Fktn - Sin*Cos-Fktn - Variante 3');
% hold off
