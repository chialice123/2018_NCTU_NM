% h is changable
clear;
y = 0;
t = 1;
h = 0.05;
while (t<2)
    yn = y*y + t*t;
    t = t+h;
    y = y+h*yn
end