clear;
U0 = [0; 1.0002];
[x, U] = ode45(@F, 0:0.1:pi, U0)

plot(x, U(:,1));