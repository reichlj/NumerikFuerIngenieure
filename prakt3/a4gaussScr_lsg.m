clear 
global k;
a=input('Wert f�r a : ');
b=input('Wert f�r b : ');
k=input('Wert f�r k : ');

y=integral(@gaussglobal_lsg,a,b);
fprintf('y=%12.7f\n',y);