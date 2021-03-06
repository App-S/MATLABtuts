% a) Using the plot command for multiple plots, plot y = atan(x) and y = acot(x) on the same
% graph for values of x defined by x = -pi/2:pi/30:pi/2.
% b) Using the plot command for a single plot and the hold commands, plot y = atan(x) and
% y = acot(x) on the same graph for values of x defined by x = -pi/2:pi/30:pi/2.
% c) Using the ezplot command, plot y =2/3sin(9?x), for values of x such that 0 ? x ? 2 ? pi

x= -pi/2:pi/30:pi/2
y1=atan(x)
y2=acot(x)
figure
plot(x,y1,x,y2)
xlabel('x')
ylabel('y')
legend('atan','acot')
grid on

figure
plot(x,y1,'r:')
xlabel('x')
ylabel('y')
hold on
plot(x,y2,'b-')
legend('atan','acot')
grid on

figure
ezplot('2/3*sin(9*pi*x)',[0,2*pi])
xlabel('angle')
ylabel('value')
title('plot of function  y =2/3sin(9?x)')
legend('funtion')
grid on