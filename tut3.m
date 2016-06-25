% a) Using the plot command for multiple plots, plot y = sin(x) and y = cos(x) on the same
% graph for values of x defined by: x = 0:pi/30:2*pi.
% b) Using the plot command for a single plot and the hold commands, plot y = sin(x) and
% y = cos(x) on the same graph for values of x defined by: x = 0:pi/30:2*pi.
% c) Using the ezplot command, plot y = 2/ 3*cos(?x) for values of x such that 0 ? x ? 2 ? pi.


x=0:pi/30:2*pi
y1=sin(x)
y2=cos(x)
% give a separate plot - figure
figure
plot(x,sin(x),x,cos(x));
title('y = sin(x) and y = cos(x)');
xlabel('x');
ylabel('y');
legend('y = sin(x)’,’y = cos(x)');
grid on;

figure
plot(x,y1,'r-')
xlabel('Angle')
ylabel('Function Value')
hold on
plot(x,y2,'b:')
legend('sine','Cosine')
grid on

figure
ezplot('2/3 * cos(pi*x)',[0,2*pi])
title('3rd plot')
xlabel('Angle')
ylabel('Function Value')
grid on
