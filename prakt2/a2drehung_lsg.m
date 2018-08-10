clear
disp('Drehung in der Ebene');
w = input('Drehwinkel in Grad: ');
x = input('X-Koordinate eingeben: ');
y = input('Y-Koordinate eingeben: ');
p = [x; y];
DM = [cosd(w), -sind(w); sind(w), cosd(w)];
q = DM * p;
fprintf('Drehwinkel w=%.3f\n', w);
disp('Drehmatrix :')
fprintf('%7.3f %7.3f\n', DM');
fprintf('Ausgangspunkt   P(%.3f,%.3f)\n', p);
fprintf('Gedrehter Punkt Q(%.3f,%.3f)\n', q);
s = sqrt(p(1)^2+p(2)^2);
sa = sqrt(p'*p);
s1 = sqrt(dot(q,q));
s2 = norm(q);
fprintf('Abstand Ausgangspunkt   : %.6f\n', s);
fprintf('Abstand gedrehter Punkt : %.6f\n', s1);

