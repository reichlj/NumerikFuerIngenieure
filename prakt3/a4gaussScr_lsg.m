clear 
global k;
a=input('Wert für a : ');
b=input('Wert für b : ');
k=input('Wert für k : ');

y=integral(@gaussglobal_lsg,a,b);
fprintf('y=%12.7f\n',y);