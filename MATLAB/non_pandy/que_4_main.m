clc
clear all
close all


tspan=0:0.001:5;
[a,b]=ode45('ques_4',tspan,[-0.009 -0.009 -0.009]);
%[-0.009 -0.009 -0.009]
plot(a,b(:,1));
% plot(a,b(:,2));
% plot(a,b(:,3));
hold on;
% a=tspan;
plot(a,0.05+0.01*sin(a));

