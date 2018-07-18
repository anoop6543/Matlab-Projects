clc
clear all
close all

present_prob=ones(4,5)*(1/20);


temp=move_right(present_prob);
present_prob=temp;
temp=sense_green(present_prob);
present_prob=temp;
temp=move_down(present_prob);
present_prob=temp;
temp=sense_green(present_prob);
present_prob=temp;
temp=move_left(present_prob);
present_prob=temp;
temp=sense_green(present_prob);
present_prob=temp;
temp=move_left(present_prob);
present_prob=temp;
temp=sense_red(present_prob);
present_prob=temp;
temp=move_up(present_prob);
present_prob=temp;
temp=sense_green(present_prob);
present_prob=temp;
temp=move_up(present_prob);
present_prob=temp;
temp=sense_green(present_prob);
present_prob=temp;
temp=move_right(present_prob);
present_prob=temp;
temp=sense_red(present_prob);
present_prob=temp;
temp=move_right(present_prob);
present_prob=temp;
temp=sense_green(present_prob);
present_prob=temp;
temp=move_right(present_prob);
present_prob=temp;
temp=sense_green(present_prob);
present_prob=temp;
temp=move_right(present_prob);
present_prob=temp;
temp=sense_green(present_prob);
present_prob=temp;

present_prob
