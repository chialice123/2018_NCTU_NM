% points = [-1 1 2 4; 2 0 2 3];
% fnplt(cscvn(points));
hold on, 
% plot(points(1,:),points(2,:),'o'), % hold off

% interval 0
x = -1:.0001:1;
y0 = 1-x;
g0 = 0.278575.*(x+1).*(x+1).*(x+1)-2.1143.*(x+1)+2;
plot(x,y0)
plot(x,g0)

% interval 1
x = 1:.0001:2;
y1 = 2.*x-2;
g1 = -0.9.*(x-1).*(x-1).*(x-1)+1.67145.*(x-1).*(x-1)+1.22855.*(x-1);
plot(x,y1)
plot(x,g1)

%interval 2
x = 2:.0001:4;
y2 = 0.5.*x+1;
g2 = 0.171425.*(x-2).*(x-2).*(x-2)-1.02855.*(x-2).*(x-2)+1.8714.*(x-2)+2;
plot(x,y2)
plot(x,g2)

% max deviation at interval 0
x = -1:.0001:1;
m0 = g0-y0;
% hold off;
% plot (x,m0)
[val,idx] = min(m0)
n = -1+.0001*idx

% max deviation at interval 2
x = 2:.0001:4;
m2 = y2-g2;
% hold off;
% plot (x,m2)
[val,idx] = min(m2)
n = 2+.0001*idx