clear all
global w w0 d
w0 = sqrt(5);   w = 1;  d = 0.4;
x0 = 0;
v0 = 0;
[t,erg] = ode45(@a6_dgl,[0:0.02:50],[x0,v0]);
plot(t,erg(:,1),t,sin(w*t),'linewidth',1.5)
title(sprintf('w0=%.3f   w=%.3f   d=%.3f',w0,w,d))
legend('Auslenkung','Anregung')
