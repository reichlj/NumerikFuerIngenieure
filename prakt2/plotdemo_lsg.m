clear
% sin(w1*x) und sin(w1*x)*cos(w2*x) im Bereich 0-2*pi
x = 0:pi/100:2*pi;
w1=1.0;
w2=1.0;
y1 = sin(w1*x);
y2 = cos(w2*x).*sin(w1*x);
plot(x,y1,'b-',x,y2,'g--','LineWidth',2)
xlabel('x')
ylabel('sin(x) - sin(x)*cos(x)')
axis([0 6.5 -1. 1])
legend('sin','sin*cos')
title('Sinus-Fktn - Sinus*Cosinus-Funktion');