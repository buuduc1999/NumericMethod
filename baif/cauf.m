X=[1.3 1.6 1.7 2.2 2.7 3.1 3.6 1.8]
f=[0.2,2.3 1.3 0.3 1.2 2.2 1.5 2.1]
syms x
y=lagrange(x,X,f)
double(subs(y,x,1.8))
double(subs(y,x,1.9))
