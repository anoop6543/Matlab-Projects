function [ xdot ] = t2_2_func(t,x)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
global u
% global r
global i
% global rdot

a =1;
th1 = 60;
th2 = 0.5;
th3 = 40;
th4 = 6;
th5 = 4*(10^4);
tow = 0.1;
k = 12;

% r(i);
% rdot(i);


% r = 100*sin(t);
% r = 100*heaviside(t-1);
% r = (100/tow).*heaviside(t-1).*exp(-t/tow);
 r = 100.*heaviside(t-1).*(1-(exp(-((t-1)/tow))));
y = x(2);

% rdot = 100*cos(t);
% rdot = 100*dirac(t - 1);
% rdot = (100/tow).*((dirac(t-1).*exp(-t/tow))-(heaviside(t-1).*exp(-t/tow)/tow));


g1 = dirac(t-1);
h1 = dirac(t-1)*exp(-(t-1)/tow);
j1 = (heaviside(t-1)/tow)*(exp(-(t-1)/tow));

rdot = 100*(g1+h1+j1);


e = y - r;
% e = y;

u(i) = (1/(th5*x(1)))*((th4*x(2)) + rdot - k*e);
% u = (1/(th5*x(1)))*((th4*x(2)) - k*e);

% edot = -th4*x(2) + th5*x(1)*u - rdot;

%  u = (1/(th5*x(1)))*((th4*x(2)) + rdot - k*e);


xdot = 0.5*[-(th1*x(1))-(th2*x(2)*u(i))+th3;-(th4*x(2))+(th5*x(1)*u(i))];

% xdot = [-(th1*x(1))-(th2*x(2)*u)+th3; -(th4*x(2))+(th5*x(1)*u)];

i = i+1;
end