clear
disp('Teste wurzel')
x = 20
yw = a3wurzel(x)
ysqrt = sqrt(x)

a= input('Teste wurzel bei kleiner Zahl ');
x = 1.0e-40
yw = a3wurzel(x)
ysqrt = sqrt(x)

a= input('Teste wurzelb bei 3*4-Matrix ');
A=[1 2 3 10;
   4 5 6 11;
   7 8 9 12]
zw=a3wurzelb(A)
zsqrt=sqrt(A)

a= input('wurzelb bei 3*4*2-Array ');
B= rand(3,4,2)
zw=a3wurzelb(B)
zsqrt=sqrt(B)

zDiff= zw - zsqrt;
vektor = zDiff(:);
fprintf('Anzahl der Elemente: %d\n',length(vektor))
fprintf('Maximale Differenz wurzel-sqrt:\n %.3e\n',...
        max(abs(vektor)))

a= input('wurzelb bei 30*40*20*50-Array ');
B= 100*rand(30,40,20,50);
zw=a3wurzelb(B);
zsqrt=sqrt(B);

zDiff = zw - zsqrt;
vektor = zDiff(:);
fprintf('Anzahl der Elemente:\n %d\n',length(vektor))
fprintf('Maximale Differenz wurzel-sqrt:\n %.3e\n',...
        max(abs(vektor)))
