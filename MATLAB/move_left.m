function a=move_left(b)
a=zeros(4,5);
for i=1:1:4
a(i,1)=b(i,2)*0.8+b(i,3)*0.1+b(i,1)*0.1;
a(i,2)=b(i,3)*0.8+b(i,4)*0.1+b(i,2)*0.1;
a(i,3)=b(i,4)*0.8+b(i,5)*0.1+b(i,3)*0.1;
a(i,4)=b(i,5)*0.8+b(i,1)*0.1+b(i,4)*0.1;
a(i,5)=b(i,1)*0.8+b(i,2)*0.1+b(i,5)*0.1;
end
end