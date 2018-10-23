function x2 = secant(f, x0, x1, tol)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
x2 = x0;
n = 1;
while(abs(f(x2))>tol)
    disp(fprintf('n = %d\n', n));
    x2 = x1 - f(x1)*(x0-x1)/(f(x0)-f(x1));
    disp(fprintf('(x0,x1,x2) = (%f,%f,%f)\n', x0, x1, x2));
    x0=x1;
    x1=x2;
    n = n+1;
end
end

