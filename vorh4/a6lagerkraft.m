clear
kraefte = [];
n = 0;
while 1==1
    kraft=input('Kraft (Ende: -1): ');
    if kraft < 0
       break
    end
    n = n + 1;
    kraefte(n,1) = kraft;
    kraefte(n,2) = input('Winkel in Grad  : ');
end
fprintf('\nNr.      Kraft    Winkel\n')
for k=1:n
    fprintf('%3d %10.4f %9.2f\n',k,kraefte(k,1),kraefte(k,2));
end

FGES=[0,0];
for k=1:n
    FGES = FGES + kraefte(k,1)*[cosd(kraefte(k,2)), sind(kraefte(k,2))];
end

fprintf('\n')
if n>0
  fprintf('Gesamtkraft     : ( %.4f, %.4f )\n',FGES);
  fprintf('Betrag der Kraft:   %.4f\n',norm(FGES));
  if norm(FGES) < eps
     fprintf('Kraft ist Null - keine Richtung\n')
  elseif abs(FGES(1)) < eps
     fprintf('Richtung in Grad: 90\n');
  else
     fprintf('Richtung in Grad: %9.3f\n',atand(FGES(2)/FGES(1)));
  end
else
  fprintf('Keine Kräfte vorhanden\n')
end
    