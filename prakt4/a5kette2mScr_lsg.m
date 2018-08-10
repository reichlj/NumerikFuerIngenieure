clear
% Aufgabe 5
c1 =1;
c2 =2;
c3 =3;
m1 = 4
m2 = 5
disp('Anfangsauslenkung')
x0 = [1; -0.5]
%x0 = [1; 1]
%x0 = [1; -1]
disp('Anfangsgeschwindigkeit')
v0 = [0; 0]
disp('Steifigkeitsmatrix')
SM = [(c1+c2)/m1 -c2/m1; -c2/m2 (c2+c3)/m2]
[V,D] = eig(SM);
w = sqrt(diag(D));
disp('Eigenvektoren')
disp(V)
disp('Eigenfrequenzen')
disp(w)
disp('Anteile cos-Terme')
a = V\x0
b = (1./w) .* (V\v0)
disp('Anteile sin-Terme')
tv=0:0.1:10;
xv = V(:,1)*( a(1)*cos(w(1)*tv) + b(1)*sin(w(1)*tv) )+...
    V(:,2)*( a(2)*cos(w(2)*tv) + b(2)*sin(w(2)*tv) );
plot(tv,xv,'lineWidth',2)

z =input('Starte Animation ');

t = 0;                % Start-Zeitpunkt
delta_t = 0.1;        % Zeitschritt für Animation
disp('******************************************');
disp('**  Zum Stoppen der Animation:          **');
disp('**  Strg+C im Kommandofenster drücken!  **');
disp('******************************************'); 
% Animation auf dem Bildschirm anzeigen
while (t < 30)
  % Auslenkung zur Zeit t berechnen
  x = V(:,1)*( a(1)*cos(w(1)*t) + b(1)*sin(w(1)*t) ) +...
      V(:,2)*( a(2)*cos(w(2)*t) + b(2)*sin(w(2)*t) );
  % aktuelle Position zeichnen
  plot([x(1)+1 x(2)+4],[0 0],'ro-','MarkerSize',30,'LINEWIDTH',3);
  hold on
  % Ruhelage zeichnen
  plot([1 4],[0 0],'k.','MarkerSize',50,'LINEWIDTH',2);
  hold off
  xlim([-1 6])
  ylim([-.5 0.5])
  if t == 0
     pause(5.0);    
  else
     pause(delta_t);  
  end
  t = t + delta_t;
end