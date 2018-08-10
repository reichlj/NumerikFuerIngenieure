function [] = plotFktn( fun, n )
x = linspace(-5,5,n);
y = fun(x);
plot(x,y,'LINEWIDTH',2);
end