clear all;
clc;

%This file gives the demo of system respones

%Sprig mass damper syttem
m = 1;
f = 0.2;
k =1;

s = tf('s');

sys = 1/(m*s^2 + f*s + k)
impulse(sys)

% step response
step(sys)

%response characterstics
stepinfo(sys)

%bode plot
bode(sys)