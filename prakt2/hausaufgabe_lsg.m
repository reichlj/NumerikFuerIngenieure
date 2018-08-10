clear
% sin(w1*x) und sin(w1*x)*cos(w2*x) im Bereich 0-2*pi
x = 0:pi/100:2*pi;
w1=2.0;
w2=3.0;
y = sin(w1*x);
y1 = cos(w2*x).*sin(w1*x);
plot(x,y,x,y1,'LineWidth',2)

f1str = sprintf('sin(%.1f*x)',w1);
f2str = sprintf('sin(%.1f*x)*cos(%.1f*x)',w1,w2);
xlabel('x')
ylabel([f1str, ' - ', f2str])
axis([0 8 -1.1 1.3])
legend(f1str,f2str)
%title(['Funktionen ',f1str,' ',f2str]);

%title(['Funktionen\n',f1str,'\n',f2str]);
%  Funktionen\nsin(2.0*x)\nsin(2.0*x)*cos(3.0*x)

% folgende Variante ist korrekt auf Windows-Systemen
%title(['Funktionen',char(10),f1str,char(10),f2str]);

titlestr = sprintf('Funktionen\n%s\n%s',f1str,f2str)
title(titlestr);