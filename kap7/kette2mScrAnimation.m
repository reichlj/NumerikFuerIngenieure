%Aufgabe 3
clear
cm = 1
disp('Anfangsauslenkung')
x0 = [1; -0.5]
%x0 = [1; 1]
%x0 = [1; -1]
disp('Anfangsgeschwindigkeit')
v0 = [0; 0]
disp('Steifigkeitsmatrix')
A = [2*cm -cm; -cm 2*cm]
[V,D] = eig(A);
w = sqrt(diag(D));
disp('Eigenvektoren')
disp(V)
disp('Eigenfrequenzen')
disp(w)
disp('Anteile cos-Terme')
a = V\x0
disp('Anteile sin-Terme')
b = (1./w) .* (V\v0)

t=0:0.1:10;
x = V(:,1)*( a(1)*cos(w(1)*t) + b(1)*sin(w(1)*t) )+...
    V(:,2)*( a(2)*cos(w(2)*t) + b(2)*sin(w(2)*t) );
plot(t,x,'lineWidth',2)
anfBed = sprintf('x0(1)=%.2f v0(1)=%.2f   x0(2)=%.2f v0(2)=%.2f',...
                 x0(1),v0(1),x0(2),v0(2));
anTeile = sprintf('a(1)=%.2f a(2)=%.2f    b(1)=%.2f b(2)=%.2f',...
                 a(1),a(2),b(1),b(2));
titleStr=sprintf('%s\n%s',anfBed,anTeile);
title(titleStr);
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
  x = V(:,1)*(a(1)*cos(w(1)*t)+b(1)*sin(w(1)*t))+...
      V(:,2)*(a(2)*cos(w(2)*t)+b(2)*sin(w(2)*t));
  % aktuelle Position zeichnen
  plot([x(1)+1 x(2)+4],[0 0],'ro-','MarkerSize',30,'LINEWIDTH',3);
  hold on
  % Ruhelage zeichnen
  plot([1 4],[0 0],'k.','MarkerSize',50,'LINEWIDTH',2);
  hold off
  timeStr = sprintf('t=%5.1f  x(1)=%6.2f  x(2)=%6.2f',t,x(1),x(2));
  title(sprintf('%s\n%s',titleStr,timeStr));
  xlim([-1 6])
  ylim([-.5 0.5])
  if t == 0
     pause(5.0);    
  else
     pause(delta_t);  
  end
  t = t + delta_t;
end