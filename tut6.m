% % After your 30 years of dedicated service as CEO, TI has transfered you to a subdivision in the
% % Himalayas. Your task as head of the subdivision is to implement transcendental functions on the
% % Himalayan computers. You decide to start with a trigonometric function, so you find the following
% % Taylor Series approximation to represent one of these functions:
% % sin(x) = x ?x3/3! +x5/5! ? · · · + (?1)n x2n+1/(2n + 1)! + . . .
% % 
% % However, since the computers in the Himalayas are extremely slow (possibly due to the high altitudes),
% % you must use the Taylor Series as efficiently as possible. In other words, you must use the
% % smallest possible number of terms necessary to be within your allowed error, which is 0.001. You
% % will use x = 3 as the value at which to evaluate the function.
% % a) Compute and display the exact error of using the first 2 and 5 terms of the series as compared
% % to the actual solution when the function is evaluated at x =?/3.
% % b) Compute and display the number of terms necessary for the function to be within the allowed
% % error.

x= pi/3
sinappr2=0
for j=0:2
    sinappr2= sinappr2 + (-1)^j * x^(2*j+1)/factorial(2*j+1)
end
sinerr2= abs(sinappr2-sin(x))
sinappr5=0
for j=0:5
    sinappr5= sinappr5 + (-1)^j * x^(2*j+1)/factorial(2*j+1)
end
sinerr5= abs(sinappr5-sin(x))
fprintf('\nError with 2 terms:\n')
fprintf ('--------------------------\n')
fprintf ( 'sin(pi/3): %g\n',sinerr2 )
fprintf ('\nError with 5 terms: \n')
fprintf ('--------------------------\n')
fprintf ( 'sin(pi/3): %g\n',sinerr5)

sinapp=0
n=0
x=3
while abs(sinapp-sin(x))>=0.001
    sinapp=sinapp+ (-1)^j * x^(2*j+1)/factorial(2*j+1)
    n=n+1
end
sinterm=n
sinerr=abs(sinapp-sin(x))
fprintf('\n Number of terms needed are %g terms| error= %g\n',sinterm,sinerr)