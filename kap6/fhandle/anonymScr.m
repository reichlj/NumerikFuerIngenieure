clear
xs = @(x) x.*sin(x)
y1 = integral(xs,1,10)

y2 = integral(@(x) exp(-0.2*x.*x),1,10)
y3 = integral(@(x) x.*x+0.2*x+3.1,1,10)

a = integral(@(x) 2*x,1,10)
b = integral(@(x) 3*x.*x,1,10)