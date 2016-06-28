% a) Compute Z 1/((x ? 1)(x ? 3))dx.
% b) Compute Zx^2*e-3x dx.
% c) Compute the first and the second derivatives of atan(x/5).

syms x
f=  1/((x-1)*(x-3))
int(f)

syms x
f= (x^2)*(exp(-3*x))
int(f)

syms x
f= atan(x/5)
diff(f)
diff(f,'x')