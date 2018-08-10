clear
disp(' Aufgabe 5')
x = 0:pi/100:2*pi;
y1 = sin(x);
y2 = cos(x);
x3 = 0:pi/9:2*pi;
y3 = cos(x3);
plot(x,y1,'g--',x,y2,'b-',x3,y3,'b*')
