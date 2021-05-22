% p = @(x) sqrt(x.^2+1)
% q = @(x) cos(x.^2+1)
% X=[1.4 2.2 2.7 3.2 3.3 3.7 4.2 4.5 5.0]
% Y=[1.3 2.1 0.1 1.9 0.3 -0.4 2.2 7.2 0.3]
% length(X)
% length(Y)
% LeastSquaresMethod(X,Y,p,q)
p = @(x) log(3*x+3)
q = @(x) 1./(x.^(1/3))
X=[3 3.3 3.5 3.8 4]
Y=[-1.8 2 0.6 -1.4 -1.2]
length(X)
length(Y)
LeastSquaresMethod(X,Y,p,q)