clc
clear all
close all


%%sense red
present_prob=[2 2 2 2 2]/10;
updating_prob=zeros(1,5);
sense_prob=[2 6 6 2 2]/10;
updating_prob=present_prob.*sense_prob;
present_prob=updating_prob/(sum(updating_prob));
%% end sense red


%%move 1
updating_prob=zeros(1,5);
updating_prob(1)=present_prob(5)*0.8+present_prob(4)*0.1+present_prob(1)*0.1;
updating_prob(2)=present_prob(1)*0.8+present_prob(5)*0.1+present_prob(2)*0.1;
updating_prob(3)=present_prob(2)*0.8+present_prob(1)*0.1+present_prob(3)*0.1;
updating_prob(4)=present_prob(3)*0.8+present_prob(2)*0.1+present_prob(4)*0.1;
updating_prob(5)=present_prob(4)*0.8+present_prob(3)*0.1+present_prob(5)*0.1;
present_prob=updating_prob;
%%end move1

%%sense green
updating_prob=zeros(1,5);
sense_prob=[6 2 2 6 6]/10;
updating_prob=present_prob.*sense_prob;  
present_prob=updating_prob/sum(updating_prob);
%%end sense green

   
%%move 2   
updating_prob=zeros(1,5);
updating_prob(1)=present_prob(4)*0.8+present_prob(3)*0.1+present_prob(5)*0.1;
updating_prob(2)=present_prob(5)*0.8+present_prob(4)*0.1+present_prob(1)*0.1;
updating_prob(3)=present_prob(1)*0.8+present_prob(5)*0.1+present_prob(2)*0.1;
updating_prob(4)=present_prob(2)*0.8+present_prob(1)*0.1+present_prob(3)*0.1;
updating_prob(5)=present_prob(3)*0.8+present_prob(2)*0.1+present_prob(4)*0.1;
present_prob=updating_prob;
%%end move 2
   
   
%%sense greeen
updating_prob=zeros(1,5);
sense_prob=[6 2 2 6 6]/10;
updating_prob=present_prob.*sense_prob;  
present_prob=updating_prob/sum(updating_prob);
%%end sense green


present_prob

