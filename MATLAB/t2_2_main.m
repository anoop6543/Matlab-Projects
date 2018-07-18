clc
clear all
close all

global i
% global r
% global rdot
global u

u(i) = 0;

%%varying tow affects the settling time of step input
% tow = 0.1;%d)case 1) tow = 0.1 k = 5;
tow = .1;

a = 1;
tow = 0.1;
th1 = 60;
th2 = 0.5;
th3 = 40;
th4 = 6;
th5 = 4*(10^4);


% 
 i = 0;
 i=i+1;

% r = array(:,2);
% rdot = array1(:,2);

% r = 100*sin(t);
% rdot = 100*cos(t);

t = 0:0.001:10;
Xinit = [0.667;1];

t = 0:0.001:10;

[t,x] = ode23('t2_2_func', t , Xinit);

% r = 100*sin(t);

r = 100.*heaviside(t-1).*(1-(exp(-((t-1)/tow))));


e = x(:,2) - r;


subplot(2,2,1)
plot(t,x(:,2))
xlabel('t')
ylabel('x(:,2) or r')
hold on
grid on
plot(t,r,'r')
title('actual output and desired output')
legend('Actual output','desired output')

subplot(2,2,2)
plot(t,e)
xlabel('t')
ylabel('r')
grid on
title('error')

subplot(2,2,3)
plot(u)
xlabel('t')
ylabel('u :- control input')
grid on

figure

plot(t,x(:,1))
title('State plots')
hold on
grid on
plot(t,x(:,2))
xlabel('t')
ylabel('x1 and x2')

figure
plot(t,x(:,2))
xlabel('t')
ylabel('x(:,2) or r')
xlim([0.9 1.3])
hold on
grid on
plot(t,r,'r')
title('actual output and desired output')
legend('Actual output','desired output')
xlim([0.9 1.3])
