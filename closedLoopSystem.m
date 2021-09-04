%this file gives the response of a closed loop system

close all;
clear all;
clc;

s = tf('s');

m=1;
f=0.5;
k=2;

sys = 1/(m*s^2 + f*s + k); 
[y,t] = step(sys);
%creating a closed loop system
closed_sys = feedback(sys , 1);
[y_cl,t_cl] = step(closed_sys);

plot(t,y,'r');
hold on;
plot(t_cl,y_cl,'b')

