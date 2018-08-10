clear
f1 = sprintf('pi= %.4f',pi)
f2 = sprintf('pi= %.8f',pi)
f3 = [ f1 , ' und ', f2]
f4 = sprintf('%s und %s',f1,f2)
x=35;
f5 = sprintf('sind(%5.2f)=%.4f',x,sind(x))
w=2.7;
f6= sprintf('sin(%.1f*x)',w)
f7= sprintf('%s(%.1f*x)','sin',w)

n1 = [ f1 , '\n', f2]
n2 = sprintf('%s\n   %s',f1,f2)



