% Frequency response example
close all;
clear all;
clc;

s = tf('s');

sys = 10*(3+s)/(s*(s+2)*(s^2+s+2));

%bode plot
[m, ph, fr] = bode(sys);