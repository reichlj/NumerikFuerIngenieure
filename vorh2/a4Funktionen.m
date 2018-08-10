clear
x = 1:1:5
A=[1 2 3; 10 11 12; 20 21 22; 30 31 32]
disp('length(x) :')
lx = length(x)
disp('Dim = size(A) :')
Dim = size(A)
[Zeile,Spalte] = size(A)
disp('mean(A) :')
mean1 = mean(A)
mean2 = mean(A,1)
mean3 = mean(A,2)
disp('sum(x) :')
sum1 = sum(x)
sum2 = sum(A)
sum3 = sum(A,2)
disp('max(x) :')
max1 = max(x)
max2 = max(x)
max3 = max(x')
max4 = max(x',[],2)

y = 7*rand(1,5)
mxy = max(x,y)

disp('max(max(A,[],2)) :')
maxV1 = max(max(A,[],2))
maxV2 = max(A(:))
maxV3 = max(max(A))
