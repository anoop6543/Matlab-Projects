clc
clear all
close all

tspan=[0 20];

[T Z]=ode45('linear123',tspan,[0 0.1 0 0.1])

plot(t,Z)