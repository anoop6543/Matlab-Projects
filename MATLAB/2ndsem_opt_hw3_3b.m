clc
clear all
close all
k=1:6;
u(k)=-(96/341)*(2^(4-k));
x(k+1)=2*x(k)+u(k);
plot(x)
