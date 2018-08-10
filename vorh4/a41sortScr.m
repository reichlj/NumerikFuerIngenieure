clear
fprintf('      n     sortiere      sort\n');
n=100;
for k=1:9    
  x = rand(n,1); % Vektor erzeugen
  y = x;
  tic
  y = a4sortiere(y);
  tsortiere = toc;
    
  y = x;
  tic
  y = sort(y);
  tsort = toc;
  fprintf('%8.0f%12.6f%12.6f\n',...
          n,tsortiere,tsort)
  n = 2*n;
end

disp('Funktion sort')
disp('      n      Zeit in Sek')
n= 10000;
for k=1:5
  x = rand(n,1);
  tic
  x = sort(x);
  tsort = toc;
  fprintf('%10.0f%12.6f\n',n,tsort)
  n = n*10;
end