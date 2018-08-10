clear 
global k0
laenge = 9.81;
faktor = 4*sqrt(laenge/9.81);
 
disp(' Winkel   Schwingungsdauer');
 
for w0=0:10:170
  k0 = sind(w0/2);
  t = faktor * integral(@a4pendel,0,pi/2);
  fprintf('%6d%15.5f\n',w0,t);
end

w0 = 179.99997;
k0 = sind(w0/2);
t = faktor * integral(@a4pendel,0,pi/2);
fprintf('%6.0f%15.5f\n',w0,t);
