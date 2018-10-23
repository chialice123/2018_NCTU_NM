% x1(0) = y(0) = 0
% x2(0) = y'(0) = 1
% x3(0) = y''(0) = 0
% t = 0.2, 0.4, 0.6

% RKF ode45
[t, x] = ode45('fun3', [0.2, 0.4, 0.6], [0; 1; 0])

% print
plot(t,x(:,1),'-o',t,x(:,2),'-o',t,x(:,3),'-o')
xlabel('Time t');
ylabel('Solution x');
legend('x_1','x_2', 'x_3')