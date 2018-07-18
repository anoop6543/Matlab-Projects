clc
clear all
close all
count1=0;count2=0;count3=0;count4=0;


for i=1:1:100000
   
    k=round(1+3*rand);
    
    if(k==1)
        count1=count1+1;
    elseif(k==2)
        count2=count2+1;
    elseif(k==3)
        count3=count3+1;
    else
        count4=count4+1;
    end
end



count1
count2
count3
count4