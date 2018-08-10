function [ F ] = a3lager( winkel, qa )
%LAGER Loese Gleichungssystem
%   F = lager(winkel, qa)
%             winkel : in Grad
%             qa     : 
ausgabe = 1;
% 6*6 Matrix erzeugen, alle Elemente 0
M = zeros(6);
% belege spaltenweise Elemente ungleich 0
M(1,1) = 1;   M(2,2) = 1;  M(3,2) = 3;
M(4,3) = 1;   M(5,4) = 1;  M(6,4) = -1.5;
M(2,5) = -1;  M(3,5) = -2; M(5,5) = 1;
M(6,5) = 1;
M(1,6) = -cosd(winkel);
M(2,6) = -sind(winkel);
M(4,6) = -M(1,6);  M(5,6) = -M(2,6);

% Spaltenvektor erzeugen, alle Elemente 0
b = zeros(6,1);
% Elemente ungleich 0 belegen
b(2) = 3*qa;
b(3) = 4.5*qa;

% Gleichungssystem lösen
F = M\b;
%F = mldivide(M,b);
if ( ausgabe == 1)
  disp('Matrix M')
  disp(num2str(M,'%6.2f'))
  disp('Rechte Seite')
  disp(num2str(b,'%6.2f'))
  fprintf('Determinante von M=%6.2f\n',det(M))
  disp('Ergebnis Kräfte')
  disp(num2str(F,'%6.3f'))
end

end