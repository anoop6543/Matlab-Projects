clc
clear all
close all

s(6)=10;
Q=1;
r=1;
for k=5:-1:1
    s(k)=((4*s(k+1))/(1+s(k+1)))+Q;
    K(k)=(1*s(k+1)*2)/((1*s(k+1))+r);   
end
x(1)=3;
for k=1:5
    x(k+1)=2*x(k)-K(k)*x(k);
end

plot(x)
xlabel('k')
ylabel('x')