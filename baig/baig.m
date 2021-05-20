syms x z
X=[1.3 1.6 1.7 1.9 2.2 2.7 3.1 3.6 ];
f=[0.2,2.3 1.3 z 0.3 1.2 2.2 1.5 ];
y=lagrange(x,X,f);
dy_xz=diff(y,x,1);
dy_x=subs(dy_xz,x,1.8);
result=double(solve(dy_x==2.1,z))


%% thu lai ket qua
f=subs(f,z,result(1));
y=lagrange(x,X,f);
dy_x=diff(y,x,1);
double(subs(dy_x,x,1.8))