syms x y z
syms f1(x,y,z)
syms f2(x,y,z)
syms f3(x,y,z)
f1(x,y,z) = x - 3*y - z^2 + 3;
f2(x,y,z) = 2*x^3 + y - 5*z^2 + 2;
f3(x,y,z) = 4*x^2 + y + z - 7;
syms F(x,y,z)
F(x,y,z) = [f1(x,y,z), f2(x,y,z), f3(x,y,z)];
syms J(x,y,z)
J(x,y,z) = jacobian(F(x,y,z), [x, y, z]);
x0 = [1;1;1];
B = [1;1;1];
tol = 1e-10;
while (B(1)>tol | B(2)>tol | B(3)>tol)
    x = x0(1);
    y = x0(2);
    z = x0(3);
    % disp(fprintf('[x,y,z]=[%f,%f,%f]\n', x,y,z));
    B = transpose(-F(x,y,z));
    A = J(x,y,z);
    s = inv(A)*B;
    x0 = x0+s;
end
disp(fprintf('x0=[1,1,1]\n', x,y,z));
disp(fprintf('[x,y,z]=[%f,%f,%f]\n', x,y,z));

x0 = [1.3;0.9;-1.2];
B = [1;1;1];
tol = 1e-10;
while (B(1)>tol | B(2)>tol | B(3)>tol)
    x = x0(1);
    y = x0(2);
    z = x0(3);
    % disp(fprintf('[x,y,z]=[%f,%f,%f]\n', x,y,z));
    B = transpose(-F(x,y,z));
    A = J(x,y,z);
    s = inv(A)*B;
    x0 = x0+s;
end
disp(fprintf('x0=[1.3,0.9,-1.2]\n', x,y,z));
disp(fprintf('[x,y,z]=[%f,%f,%f]\n', x,y,z));