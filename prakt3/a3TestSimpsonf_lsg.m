clear all
formatstr = 'n=%8d  y=%13.9f\n';

disp('Test der Simpsonformel')
y = simpson1_lsg(1,2,10);
fprintf(formatstr,10,y);

y = simpson1_lsg(1,2,100);
fprintf(formatstr,100,y);

y = simpson1_lsg(1,2,1000);
fprintf(formatstr,1000,y);

disp('Mit FunctionHandle Version 1')
y = simpsonf1_lsg(@gauss_lsg,1,2,10);
fprintf(formatstr,10,y);

y = simpsonf1_lsg(@gauss_lsg,1,2,100);
fprintf(formatstr,100,y);

y = simpsonf1_lsg(@gauss_lsg,1,2,1000);
fprintf(formatstr,1000,y);

disp('Mit FunctionHandle Version 2')
y = simpsonf2_lsg(@gauss_lsg,1,2,10);
fprintf(formatstr,10,y);

y = simpsonf2_lsg(@gauss_lsg,1,2,100);
fprintf(formatstr,100,y);

y = simpsonf2_lsg(@gauss_lsg,1,2,1000);
fprintf(formatstr,1000,y);

disp('Mit Schleife und FunctionHandle')
disp('exp(-x*x)')
n=10;
for k=1:7
  y = simpsonf1_lsg(@gauss_lsg,1,2,n);
  fprintf(formatstr,n,y);
  n = n*10;
end    

disp('sin')
y = simpsonf1_lsg(@sin,1,2,1000);
fprintf(formatstr,1000,y);

disp('sin*cos')
y = simpsonf1_lsg(@sincos_lsg,1,2,1000);
fprintf(formatstr,1000,y);
