function a=move_down(b)
a=zeros(4,5);
for i=1:1:5    
a(1,i)=b(4,i)*0.8+b(3,i)*0.1+b(1,i)*0.1;
a(2,i)=b(1,i)*0.8+b(4,i)*0.1+b(2,i)*0.1;
a(3,i)=b(2,i)*0.8+b(1,i)*0.1+b(3,i)*0.1;
a(4,i)=b(3,i)*0.8+b(2,i)*0.1+b(4,i)*0.1;
end
end