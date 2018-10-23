clear;
x = [1985:1995]
y = [731 782 833 886 956 1049 1159 1267 1367 1436 1505]
xrange = linspace(1979,1995);
scatter(x,y)
hold on

% linear least-square
[p1,s1] = polyfit(x,y,1)
m = polyval(p1,xrange);
plot(xrange,m,'b') % blue : linear
% quadratic least-square
[p2,s2] = polyfit(x,y,2)
n = polyval(p2,xrange);
plot(xrange,n,'g') % green : quadratic
% cubic least-square
[p3,s3] = polyfit(x,y,3)
k = polyval(p3,xrange);
plot(xrange,k,'r') % red : cubic
% spline
s = spline(x,y) 
plot(xrange,ppval(s,xrange),'k') % black : spline
scatter(1980,492)