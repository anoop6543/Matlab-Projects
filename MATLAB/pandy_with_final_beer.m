clc
clear all
close all


present_prob=ones(4,5)*(1/20);


for i=1:1:1000
    k=round(1+3*rand);
    if(k==1)
        temp=move_right(present_prob);
        present_prob=temp;
    elseif(k==2)
        temp=move_left(present_prob);
        present_prob=temp;
    elseif(k==3)
        temp=move_down(present_prob);
        present_prob=temp;
    else
        temp=move_up(present_prob);
        present_prob=temp;
    end
        
        
        k=round(1+rand);
        if(k==1)
            temp=sense_green(present_prob);
            present_prob=temp;
        else
            temp=sense_red(present_prob);
            present_prob=temp;
        end

        
[maxval,maxloc(i)] = max(present_prob(:));

present_prob

end