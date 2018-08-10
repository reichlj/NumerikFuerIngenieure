clear
% sin(w1*x) und sin(w1*x)*cos(w2*x) im Bereich 0-2*pi
x = 0:pi/100:2*pi;
w1=2.0;
w2=3.0;
y1 = sin(w1*x);
y2 = cos(w2*x).*sin(w1*x);
plot(x,y1,x,y2,'LineWidth',2)
xlabel('x')
ylabel('sin - sin*cos')
axis([0 8 -1.1 1.3])
legend('sin','sin*cos')
title('Sin-Fktn - Sin*Cos-Fktn');