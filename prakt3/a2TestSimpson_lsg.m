clear
%disp('Test der Simpsonformel Version 1')

y = simpson1_lsg(0.5,2,10);
fprintf('n=%8d  y=%12.8f\n',10,y);

y = simpson1_lsg(0.5,2,100);
fprintf('n=%8d  y=%12.8f\n',100,y);

y = simpson1_lsg(0.5,2,1000);
fprintf('n=%8d  y=%12.8f\n',1000,y);

disp('Test der Simpsonformel Version 2')
y = simpson2_lsg(0.5,2,10);

fprintf('n=%8d  y=%12.8f\n',10,y);
y = simpson2_lsg(0.5,2,100);
fprintf('n=%8d  y=%12.8f\n',100,y);

y = simpson2_lsg(0.5,2,1000);
fprintf('n=%8d  y=%12.8f\n',1000,y);

disp('Mit Schleife')
n=10;
for k=1:7
  y = simpson1_lsg(0.5,2,n);
  fprintf('n=%8d  y=%12.8f\n',n,y);
  n = n*10;
end    