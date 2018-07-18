function xdot = ques_4(t,x)

% xdot=zeros(3,1);

k1=1;%10;
k2=10;%150;

e=x(1)-(0.05+0.01*sin(t));
edot=x(2)+(2*x(1)*x(1))+(x(3)*x(3))-(0.01*cos(t));

u=((-x(3)*x(3))-4*x(1)*(x(2)+2*x(1)*x(1)+x(3)*x(3))-2*x(3)*(x(1)*x(1)-x(3)))/(2*x(3));
u=u-k1*e-k2*edot;
u=u-0.01*sin(t);
xdot(1,1)=x(2)+2*x(1)*x(1)+x(3)*x(3)
xdot(2,1)=x(3)*x(3);
xdot(3,1)=x(1)*x(1)-x(3)+u;
t
end