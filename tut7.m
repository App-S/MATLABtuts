% % syms x y z Declares variables x, y, and z as symbolic variables.
% % diff(f) Symbolically computes derivative of the single-variable symbolic expression f.
% % diff(f,n) Symbolically computes the n-th derivative of the single-variable symbolic expression f.
% % diff(f,’x’) Symbolically differentiates f with respect to x.
% % diff(f,’x’,n) Symbolically computes the n-th derivative with respect to x of f.
% % int(f) Symbolically integrates the single-variable symbolic expression f.
% % int(f,x) Symbolically integrates f with respect to x.

% Matlab is capable of symbolically computing the derivatives and integrals of functions. This can
% be very convenient to check your pencil and paper solutions; in some cases Matlab may be able to
% integrate functions which require very difficult change of variables. We will also learn in the next
% section how Matlab can be used to symbolically solve differential equations. For now we focus on
% derivatives and integrals.
% The first step is to define symbolic variables using the syms command. Note that symbolic variables
% are different from numerical variables. They can not assume any numerical value. They are simply
% symbols or letters that can be manipulated symbolically.
% Once these variables are declared we can define symbolic functions, differentiate and integrate them
% as is shown in the following examples:
% a) Define the following function using syms:
% f(x) = x^2e^x ? 5x^3.
% b) Compute the integral, and the first and second derivatives of the above function symbolically.
% c) Define the following function using syms:
% f(x, y, z) = x^2e^y ? 5z^2.
% Compute the integral with respect to x and second derivative with respect to z.

syms x
f = x^2*exp(x) - 5*x^3
int(f)
diff(f)
diff(f,2)

syms x y z
f= x^2*exp(y) - 5*z^2
int(f,'x')
diff(f,'z',2)
