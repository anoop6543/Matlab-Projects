function [ xdt ] = nonlin( t,x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
m1=.330*1000;
m2=.33*100;
c=.1000*1000;
c2=.1000*1000;
k1=.13000*10000;
k2=.117000*10000;
eps=0.1;
 q=(100.*rand)+100.*sin(t);

xdt=zeros(8,1);

%Lets approximate z1 and z2 upto second term as shown below
%z1=z10+eps*z11;
%z2=z20+eps*z21;

xdt(1)=x(2);%z10dot
xdt(2)=(-c/m1)*(x(2)-x(4))-(k1/m1)*(x(1)-x(3));%z10ddot
xdt(3)=x(4);%z20dot
xdt(4)=(-c/m2)*(x(4)-x(2))-(k1/m2)*(x(3)-x(1))-(k2/m2)*(x(3)-q);%z20ddot
xdt(5)=x(6);%z11dot
xdt(6)=(-c/m1)*(x(6)-x(8))-(k1/m1)*(x(5)-x(7))-(k1/m1)*((x(1)-x(3))^3);%z11ddot
xdt(7)=x(8);%z21dot
xdt(8)=(-c/m2)*(x(8)-x(6))-(k1/m2)*(x(7)-x(5))-(k2/m2)*(x(7))-(k1/m2)*((x(1)-x(3))^3);%z21ddot


end

