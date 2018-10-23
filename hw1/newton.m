function x1 = newton(f, df, x0, tol)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
n = 1;
x1 = x0;
while(abs(f(x1))>tol)
    disp(fprintf('n = %d\n', n));
    x1 = x0 - (f(x0)/df(x0));
    disp(fprintf('(x0,x1) = (%f,%f)\n', x0, x1));
    x0=x1;
    n = n+1;
end
end