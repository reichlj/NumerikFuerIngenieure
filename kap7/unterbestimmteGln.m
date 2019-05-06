clear; clc
% Löse m Gleichungen mit n Unbekannten
% m < n d.h. Gleiungssystem ist unterbestimmt

% m=1 n=2 mindestens n-m=1 Elemente von x 0
fprintf('1 Gleichung mit 2 Unbekannten\n')
A = [ 1 2 ]
a = [ 3 ]
x = A \ a

% m=2 n=3 mindestens n-m=1 Elemente von y 0
fprintf('2 Gleichungen mit 3 Unbekannten\n')
B = [ 2 3 4; 5 6 7 ]
b = [ 8; 9 ]
y = B \ b

% m=1 n=3 mindestens n-m=2 Elemente von z 0
fprintf('1 Gleichung mit 3 Unbekannten\n')
C = [ 2 3 4 ]
c = [ 5 ]
z = C \ c

% m=1 n=4 mindestens n-m=3 Elemente von da 0
fprintf('1 Gleichung mit 4 Unbekannten\n')
DA = [ 2 3 4 5 ]
da = [ 5 ]
zda = DA \ da

% m=2 n=4 mindestens n-m=2 Elemente von db 0
fprintf('2 Gleichungen mit 4 Unbekannten\n')
DB = [ 2 3 4 5; 6 7 8 9 ]
db = [ 5; 6 ]
zdb = DB \ db

% m=3 n=4 mindestens n-m=1 Elemente von dc 0
fprintf('3 Gleichungen mit 4 Unbekannten\n')
DC = [ 2 3 4 5; 6 7 8 9; 10 11 12 23 ]
dc = [ 5; 6; 8 ]
zdc = DC \ dc
