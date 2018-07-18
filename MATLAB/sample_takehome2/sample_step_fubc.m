clc
clear all
close all

t = 0:0.001:10;


a = 1;
tow = 10;
% syms x

% r = 100*((1-a)-((1/tow)*exp(-(t/tow)-a)));
% r = 100*((1-a)-((1/tow)*exp(-(t/tow)-a)));

% r = (-1/tow)*exp(-t/tow);
% f = t-1;
% g = 10.*(exp(-10.*t+10)).*(t-1);

%     r = 100*((1-a)-((1/tow)*exp(-(t/tow)-a)));


if t >a
    f = t-1;
    g = 10.*(exp(-10.*t+10)).*(t-1);

    r = 100*(f-g);
%     rdot = 100*(1/(tow^2))*exp(-(t/tow)-a);
    rdot = 100 - 10*((10*t) -11)*(exp(10-(10*t)));    
else
    r=0;
    rdot =0;
end

% rdot = 100*(1/(tow^2))*exp(-(t/tow)-a);
% rdot = 100 - 10*((10*t) -11)*(exp(10-(10*t)));

plot(t,r)