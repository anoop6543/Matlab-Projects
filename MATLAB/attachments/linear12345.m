function [xdot] = linear12345( t,x )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
m1=.330*1000;
m2=.33*100;
c=.1000*1000;
c2=.1000*1000;
k1=.13000*10000;
k2=.117000*10000;
eps=0.1;
q=(-4+8*rand)+0.001*sin(t/100);

xdot=zeros(4,1);
% 
% zdot(1)=(-c/m1)*(z(1)-z(3))-(k1/m1)*(z(2)-z(4));
% zdot(2)=z(1);
% zdot(3)=(-c/m2)*(z(3)-z(1))-(k1/m2)*(z(4)-z(2))-(k2/m2)*(z(4)-q);
% zdot(4)=z(3);

xdot(1)=x(2);
xdot(2)=(-c/m1)*(x(2)-x(4))-(k1/m1)*(x(1)-x(3));
xdot(3)=x(4);
xdot(4)=(-c/m2)*(x(4)-x(2))-(k1/m2)*(x(3)-x(1))-(k2/m2)*(x(3)-q);

end

