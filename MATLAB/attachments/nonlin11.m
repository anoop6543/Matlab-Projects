function [ xdt ] = nonlin11( t,x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
m1=.330*1000;
m2=.33*100;
c=.1000*1000;
c2=.1000*1000;
k1=.13000*100000;
k2=.117000*100000;
eps=0.1;
%   q=(-2+4*rand)+sin(2*pi*t);
q=(-20+40.*rand)+0.001.*sin(t);

xdt=zeros(16,1);

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
xdt(9)=x(10);%z12dot
xdt(10)=(-c/m1)*(x(10)-x(12))-(k1/m1)*(x(9)-x(11));%z12ddot
xdt(11)=x(12);%z22dot
xdt(12)=(-c/m2)*(x(12)-x(10))-(k1/m2)*(x(11)-x(9))-(k2/m2)*(x(11));%z22ddot
xdt(13)=x(14);%z13dot
xdt(14)=(-c/m1)*(x(14)-x(16))-(k1/m1)*(x(13)-x(15));%z13ddot
xdt(15)=x(16);%z23dot
xdt(16)=(-c/m2)*(x(16)-x(14))-(k1/m2)*(x(15)-x(13))-(k2/m2)*(x(15));%z23ddot

end


