clear
% Aufgabe 3
cm = 1
disp('Anfangsauslenkung')
x0 = [1; -0.5]
%x0 = [1; 1]
%x0 = [1; -1]
disp('Anfangsgeschwindigkeit')
v0 = [0; 0]
disp('Steifigkeitsmatrix')
SM = [2*cm -cm; -cm 2*cm]
[EV,D] = eig(SM);
w = sqrt(diag(D));
disp('Eigenvektoren')
disp(EV)
disp('Eigenfrequenzen')
disp(w)
disp('Anteile cos-Terme')
a = EV\x0
b = (1./w) .* (EV\v0)
disp('Anteile sin-Terme')
tv=0:0.1:10;
xv = EV(:,1)*( a(1)*cos(w(1)*tv) + b(1)*sin(w(1)*tv) )+...
    EV(:,2)*( a(2)*cos(w(2)*tv) + b(2)*sin(w(2)*tv) );
% Ableitung bilden - Geschwindigkeit
v = EV(:,1)*w(1)*( -a(1)*sin(w(1)*tv) + b(1)*cos(w(1)*tv) )+...
    EV(:,2)*w(2)*( -a(2)*sin(w(2)*tv) + b(2)*cos(w(2)*tv) );

subplot(2,1,1)
plot(tv,xv,'lineWidth',2)
title('Auslenkung')
for k=1:length(xv)
   Epot(k)= 0.5*( xv(1,k)*xv(1,k) + xv(2,k)*xv(2,k) ) +...
            0.5*( xv(1,k)-xv(2,k))*(xv(1,k)-xv(2,k) );
   Ekin(k)= 0.5*( v(1,k)*v(1,k) + v(2,k)*v(2,k) );
end

Epot= 0.5*( xv(1,:).^2 + (xv(1,:)-xv(2,:)).^2 + xv(2,:).^2 );
Ekin= 0.5*( v(1,:).^2 + v(2,:).^2 );

subplot(2,1,2)
plot(tv,[Epot;Ekin;Epot+Ekin],'lineWidth',2)
title('Energie')

z =input('Starte Animation ');
subplot(1,1,1)

t = 0;                % Start-Zeitpunkt - t Skalar
delta_t = 0.1;        % Zeitschritt für Animation
disp('******************************************');
disp('**  Zum Stoppen der Animation:          **');
disp('**  Strg+C im Kommandofenster drücken!  **');
disp('******************************************'); 
% Animation auf dem Bildschirm anzeigen
while( t < 30)
  % Auslenkung zur Zeit t berechnen
  x = EV(:,1)*( a(1)*cos(w(1)*t)+b(1)*sin(w(1)*t) )+...
      EV(:,2)*( a(2)*cos(w(2)*t)+b(2)*sin(w(2)*t) );
  % aktuelle Position zeichnen
  plot([x(1)+1 x(2)+4],[0 0],'ro-','MarkerSize',30,'LINEWIDTH',3);
  hold on
  % Ruhelage zeichnen
  plot([1 4],[0 0],'k.','MarkerSize',50,'LINEWIDTH',2);
  hold off
  % aktuelle Zeit ausgeben
  timeStr = sprintf('t=%5.1f',t);
  title(timeStr);

  xlim([-1 6])
  ylim([-.5 0.5])
  if t == 0
     pause(5.0);    
  else
     pause(delta_t);  
  end
  t = t + delta_t;
end