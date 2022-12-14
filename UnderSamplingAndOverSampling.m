%{
1) Sampling
2) Over sampling
3) Under sampling
4) Aliasing effect
%}
clc;
clear all;
close all;

%sin wave :
a = 10;
f = 4;
t = 0:0.005:1;
analogSin = a*sin(2*pi*f*t);
subplot(3,2,1);
plot(t,analogSin);
title('Continous sin wave');

%1) Sampled sin wave with fs = 2*f :
fs = 2*f;
ts = 0:1/fs:1;
sampledSin = a*sin(2*pi*f*ts);
subplot(3,2,2);
grid on;    %grid on displays the major grid lines for the current axes.
stem(ts,sampledSin);
hold on;    %Use hold on to add a second line plot without deleting the existing line plot. The new plot uses the next color and line style based on the ColorOrder and LineStyleOrder properties of the axes.
title('Sampled sin wave');

%2) Over sampled sin wave with fs>2*f : 
fs = 11*f;
ts2 = 0:1/fs:1;
overSampledSin = a*sin(2*pi*f*ts2);
subplot(3,2,3);
stem(ts2,overSampledSin);
title('Over sampled sin wave');

%3) Under sampled sin wave wihe fs<2*f :
fs = 3;
ts3 = 0:1/fs:1;
underSampledSin = a*sin(2*pi*f*ts3);
subplot(3,2,4);
stem(ts3,underSampledSin);
title('Under sampled sin wave');

%4) Aliasing effect :
subplot(3,2,5);
plot(t,analogSin,ts2,overSampledSin,ts3,underSampledSin);
title('Aliasing effect');