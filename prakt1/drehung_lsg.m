clear
% Berechne Koordinaten des Punktes P=(1,0),
% wenn er um den Winkel w gedreht wird.
format compact
w = 30
p = [1; 0]
DM = [cosd(w), -sind(w); sind(w),cosd(w)]
q = DM*p
q = DM^3*p
E1 = DM^12