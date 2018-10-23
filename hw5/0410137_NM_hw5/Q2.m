% h is changable
clear;
y = 0;
t = 1;
h = 0.05;
while (t<2)
    yn = (y+h/2)*(y+h/2) + (t+h/2)*(t+h/2); % slope of mid point
    t = t+h; % tn+1
    y = y+h*yn % yn+1 = yn + h*(yn'+yn+1')/2
end

% ode2: https://youtu.be/x0Ap2kDsGRQ