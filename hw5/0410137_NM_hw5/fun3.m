% x1' = x2
% x2' = x3
% x3' = t-t*x2+2*x1

function dxdt = f(t,x)
dxdt = [x(2); x(3); t-t*x(2)+2*x(1)];
