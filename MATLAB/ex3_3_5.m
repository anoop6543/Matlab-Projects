clc
clear all
close all

q=1*eye(2); om=0.8; del=0.1; b=1; r=1;
x0=[1 ; 1];a=[0 1; -0.64 -0.16];
B=[0 ; b];
%function [x, u, Sf, tf] = ex3_3_5(a, b, r, x0)
%Control of a Harmonic Oscillator
%Compute the solution to Riccati Equation
[tb, S]=ode45('fex3_3_5',[-10:0.1:0],zeros(3,1));

% Compute Optimal Feedback Gains
Sf=flipud(S);
tf=-flipud(tb);
K=-b/r*Sf(:,2:3);
x(:,1)=x0;


u(1)=K(1,:)*x(:,1);
% compute Closed-loop Response

for k=1:length(tf)-1
    % Harmonic Oscillator System State Equations
    x(:,k+1) =expm((a+[0 ; b]*K(k,:))*(tf(k+1)-tf(k)))*x(:,k);
    u(k+1)=K(k+1,:)*x(:,k+1);
end

% plot(S)
% plot(u)
plot(x(1,:))


