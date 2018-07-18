clc
clear all
close all
m1=.330*1000;
m2=.33*100;
c=.1000*1000;
c2=.1000*1000;
k1=.13000*100000;
k2=.117000*100000;
eps=0.1;
tspan=[0 10];

[t,X]=ode45('nonlin11',tspan,[0 0.1 0 0.1 0 0.1 0 0.1 0 0.1 0 0.1 0 0.1 0 0.1]);
%   q=(-20+40*rand)+100.*sin(2*pi*t);
q=(-20+40.*rand)+0.001.*sin(t);
% plot(t,X(:,2),t,X(:,4))

%%%%%
z1=X(:,1)+eps*X(:,5)+(eps^2)*X(:,9)+(eps^3)*X(:,13);
z2=X(:,3)+eps*X(:,7)+(eps^2)*X(:,11)+(eps^3)*X(:,15);

z1dot=X(:,2)+eps*X(:,6)+(eps^2)*X(:,10)+(eps^3)*X(:,14);
z2dot=X(:,4)+eps*X(:,8)+(eps^2)*X(:,12)+(eps^3)*X(:,16);

z1ddot=(-c/m1)*(z1dot-z2dot)-(k1/m1)*(z1-z2)-eps*(k1/m1)*((z1-z2).^3);
z2ddot=(-c/m2)*(z2dot-z1dot)-(k1/m2)*(z2-z1)-(eps*(k1/m2)*((z2-z1).^3))+k2*(z2-q);

plot(t,z1ddot)
xlabel('t')
ylabel('Acceleration of non linear spring system')
title('Time History')
% figure
% plot(t,z2ddot)

save('z1ddot_1.mat','z1ddot');
save('z2ddot_1.mat','z2ddot');

