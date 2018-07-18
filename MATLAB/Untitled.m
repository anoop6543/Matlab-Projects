clc
clear all
close all
x(1)=3;
for k=1:6
u(k)=-(96/341)*(2^(5-k));
x(k+1)=2*x(k)+u(k);
end

plot(x)
xlabel('k')
ylabel('x')