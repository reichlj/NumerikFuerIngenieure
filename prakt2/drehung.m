clear
% Ausgangspunkt 
p = [1.8; 2.1];
% Drehmatrix für 30°
DM = [cosd(30), -sind(30); sind(30), cosd(30)];
% gedrehter Punkt
q = DM * p;
disp(q)