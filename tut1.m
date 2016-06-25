%%Let us plot projectile trajectories using equations for ideal projectile motion:
%y(t) = y0 ?1/2gt^2 + (v0 sin(?0))t,
%x(t) = x0 + (v0 cos(?0))t,
%where y(t) is the vertical distance and x(t) is the horizontal distance traveled by the projectile
%in metres, g is the acceleration due to Earth’s gravity = 9.8 m/s2 and t is time in seconds. Let
%us assume that the initial velocity of the projectile v0 = 50.75 m/s and the projectile’s launching
%angle ?0 =5?/12 radians. The initial vertical and horizontal positions of the projectile are given by y0 = 0 m and x0 = 0 m. Let us now plot y vs. t and x vs.
%t in two separate graphs with the vector:t=0:0.1:10 representing time in seconds. Give appropriate titles to the graphs and label the axes.
%Make sure the grid lines are visible.


t=0:0.1:10
v0=50.75
g=9.8
x0=0
y0=0
theta0 =5*pi/12
y = y0 - 0.5*g .*( t .^2) + (v0 *sin(theta0)).*t
x = x0 + (v0* cos(theta0)).*t

figure;
plot(t,x);
title('x(t) vs. t');
xlabel('Time (s)');
ylabel('Horizontal Distance (m)');
grid on;
figure;
plot(t,y);
title('y(t) vs. t');
xlabel('Time (s)');
ylabel('Altitude (m)');
grid on;