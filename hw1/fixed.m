function x1 = fixed(f, g, x0, tol)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
n = 1;
x1 = x0;
k=abs(f(x1));
while(k>tol)
    % disp(fprintf('n = %d\n', n));
    x1 = g(x0);
    disp(fprintf('(x0,x1) = (%f,%f)\n', x0, x1));
    x0=x1;
    n = n+1;
end
disp(fprintf('x1 = %f\n', x1));
end