clear
D = [2 0; 0 2];
L = [0 0; -1.9 0];
U = [0 -1.9; 0 0];
b = [0; 0];
x = [5; 2];
d = inv(D);
J = -d*(L+U);
x = J*x
while(1)
    x = J*x
end