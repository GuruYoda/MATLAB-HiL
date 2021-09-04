clc;
clear;
a = [1,2];
b = [1,5];

c = [1,0];
d = [3,0,10];

sys1 = tf(a,b)
sys2 = tf(c,d)

%Combination of multiple systems
series = series(sys1,sys2)
parallel = parallel(sys1,sys2)

%feedback connections
%this is used to provide the feedback to the complete system
feedback_sys = feedback(sys1,sys2)