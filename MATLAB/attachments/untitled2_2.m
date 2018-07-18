clc
clear all
close all
m1=.330*1000;
m2=.33*100;
c=.1000*1000;
c2=.1000*1000;
k1=.13000*10000;
k2=.117000*10000;


eps=0.1;

tspan=0:.001:30;

[t,X]=ode45('linear12345',tspan,[0 0.1 0 0.1]);

plot(t,X(:,2),t,X(:,4))

q=(100000*rand)+0.001*sin(t);

s=(-c/m2).*(X(:,4)-X(:,2))-(k1/m2).*(X(:,3)-X(:,1))-(k2/m2).*(X(:,3)-q);

s2=(-c/m1).*(X(:,2)-X(:,4))-(k1/m1).*(X(:,1)-X(:,3));

figure
plot(t,s)
figure
plot(t,s2)
xlabel('t')
Ylabel('Acceleration of linear spring system')
title('Time History')




