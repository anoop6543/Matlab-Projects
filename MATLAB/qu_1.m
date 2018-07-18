function xdot=qst_1(t,x)

xdot=zeros(1,2);

xdot(1)=-x(1)-x(2);
xdot(2)=-x(2)+x(2)*x(2)+x(1)*x(2)-x(1)*x(1)*x(1);




end