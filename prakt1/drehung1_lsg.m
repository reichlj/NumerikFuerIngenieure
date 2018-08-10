clear
% Berechne Koordinaten des Punktes p=(1,0),
% der um den Winkel w gedreht wird.
format compact
w = 30
p = [1; 0]
DM1 = drehmatrix(w)
q = DM1*p
q1 = drehmatrix(60)*drehmatrix(30)*p
q2 = drehmatrix(-60)*drehmatrix(60)*p