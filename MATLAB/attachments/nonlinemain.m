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

tspan=[0 50];

[t,X]=ode45('nonlin',tspan,[0 0.1 0 0.1 0 0.1 0 0.1]);
 q=(100.*rand)+100.*sin(t);
% plot(t,X(:,2),t,X(:,4))

%%%%%
z1=X(:,1)+eps*X(:,5);
z2=X(:,3)+eps*X(:,7);

z1dot=X(:,2)+eps*X(:,6);
z2dot=X(:,4)+eps*X(:,8);

z1ddot=(-c/m1)*(z1dot-z2dot)-(k1/m1)*(z1-z2)-eps*(k1/m1)*((z1-z2).^3);
z2ddot=(-c/m2)*(z2dot-z1dot)-(k1/m2)*(z2-z1)-(eps*(k1/m2)*((z2-z1).^3))+k2*(z2-q);

plot(t,z1ddot)
xlabel('t')
ylabel('Acceleration of non linear spring system')
title('Time History')
% yaxis(-5,5)

% figure
% plot(t,z2ddot)

