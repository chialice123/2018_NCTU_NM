k = pi*pi/64-2;
A = [1 0 0 0 0; 1 k 1 0 0; 0 1 k 1 0 ; 0 0 1 k 1; 0 0 0 0 1];
b = [ 0 ;0 ;0; 0; 2 ];
y = inv(A)*b

syms f(x);
f(x) = 2*sin(x/2);
h = pi/4;
ya = [f(0); f(h); f(2*h); f(3*h); f(4*h)] 

error = vpa(ya-y)

