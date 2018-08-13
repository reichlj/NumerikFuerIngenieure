F1G = 400; 
F2G = 500; 
F3G = 700;
w1 = -20;  
w2 = 31;   
w3 = 143;

F1 = F1G * [cosd(w1)  sind(w1)];
F2 = F2G * [cosd(w2)  sind(w2)];
F3 = F3G * [cosd(w3)  sind(w3)];
F = F1 + F2 + F3;
FG  = norm(F);
FG1 = sqrt(dot(F,F));
FG2 = sqrt(F(1)^2+F(2)^2);
wg = atand(F(2)/F(1));

fprintf('Gesamtkraft: %f\n', FG)
fprintf('Winkel: %f\n', wg)
