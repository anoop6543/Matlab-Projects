clc
clear all
close all

num = 100;
den = [0.1 1];
sys = tf(num,den,'InputDelay',1);
tfinal = 0:0.001:10; 

[Y,T] = step(sys,tfinal);
array = [T,Y];
 
plot(T,Y)
 