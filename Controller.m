% Controllers
%these are the additional transfer function based on the requirement
% these help to attain the requirement as soon as possible

%eg : PID, FOPID, Fuzzy PID, Adaptive, SMC, Neuro Fuzzy

%controllers are really viral in obtaining thw required response

%%PID Proportional Integrational and derivative Controllers

%the basic funtion is to take the error and to minimize the error

close all;
clear all;
clc;

s = tf('s');

m=1;
f=0.5;
k=2;

sys = 1/(m*s^2 + f*s + k);
%openloop response
[y,t] = step(sys,50);
%creating a closed loop system
closed_sys = feedback(sys , 1);
[y_c,t_c] = step(closed_sys,50);
%creating the PID controller
kP =1;
kI = 1;
kD = 1;

cont = kP + kI/s + kD*s;

%closed loop system with controller
cont_sys = feedback(series(cont, sys), 1);
[y_co,t_co] = step(cont_sys,50);

plot(t,y,'r');
hold on;
plot(t_c,y_c,'g');
hold on;
plot(t_co,y_co,'b');
ylim([0,1.5])
