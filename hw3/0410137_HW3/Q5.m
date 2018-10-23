clear;
a = 3;
b = 5;
c = 7;
x = 2+5*rand(6,1)
y = a.*x.*x + b.*x + c;
z = y + 0.2*rand(6,1)

xrange = linspace(2,7);
% linear
scatter(x, z)
hold on
[p1,s1] = polyfit(x,z,1)
m = polyval(p1,xrange);
plot(xrange,m)
%hl = lsline;
%B = [ones(size(hl.XData(:))), hl.XData(:)]\hl.YData(:);
%Slope = B(2)
%Intercept = B(1)
%ls quadratic
[p2,s2] = polyfit(x,z,2)
n = polyval(p2,xrange);
plot(xrange,n)

% cubic
[p3,s3] = polyfit(x,z,3)
k = polyval(p3,xrange);
plot(xrange,k)