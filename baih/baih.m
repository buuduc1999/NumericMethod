clc
clear all
X=[1.4 2.2 2.7 3.2]
Y=[1.3 2.1 0.1 1.9]
result=NaturalSpline(X,Y)

syms x
for i= 1: size(result,1)
    fprintf('X trong khoang [%2.2f,%2.2f] : \n',X(i),X(i+1));
    disp(result(i,1)+result(i,2)*(x-X(i))+result(i,3)*(x-X(i))^2+result(i,3)*(x-X(i))^3)
end

%% tim gia tri tai x = 2.5 
i=2
y=result(i,1)+result(i,2)*(x-X(i))+result(i,3)*(x-X(i))^2+result(i,4)*(x-X(i))^3
double(subs(y,x,2.5))
%% tim gia tri tai x = 2.9
i=3
y=result(i,1)+result(i,2)*(x-X(i))+result(i,3)*(x-X(i))^2+result(i,4)*(x-X(i))^3
double(subs(y,x,2.9))

