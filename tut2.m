%The range of the projectile is the distance from the origin to the point of impact on horizontal ground. It is given by R = v0 cos(?0). To estimate the range, your trajectory plots should be altered
%to have the horizontal distance on the x-axis and the altitude on the y-axis. This representation will clearly show the path of the projectile launched with a certain initial angle. This means you
%will have to plot y vs. x.Observing the formula for the projectile’s range, we see that to increase the range we will have to
%adjust the launching angle. Use the following adjusted angles to create two more trajectory plots (y vs. x), one for each angle, and determine which launching angle results in a greater range:
%?10 =(5?/12? 0.255) radians and ?20 =(5?/12? 0.425)radians.The time vectors for these angles should be defined as t = 0:0.1:9 and t = 0:0.1:8 respectively.

t1= 0:0.1:9
t2= 0:0.1:8
v0=50.75
g=9.8
x0=0
y0=0
theta01 = (5*pi/12- 0.255)
theta02 = (5*pi/12- 0.425)
y1 = y0 - 0.5*g .*( t1 .^2) + (v0 *sin(theta01)).*t1
x1 = x0 + (v0* cos(theta01)).*t1
y2 = y0 - 0.5*g .*( t2 .^2) + (v0 *sin(theta02)).*t2
x2 = x0 + (v0* cos(theta02)).*t2
range1= v0 * cos(theta01)
range2= v0 * cos(theta02)

figure
plot(x1,y1)
xlabel('x1')
ylabel('y1')
title('x1 vs y1')
grid on

figure
plot(x2,y2)
xlabel('x2')
ylabel('y2')
title('x2 vs y2')
grid on