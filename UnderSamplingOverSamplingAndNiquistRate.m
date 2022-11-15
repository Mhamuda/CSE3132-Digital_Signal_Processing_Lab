
clc;
clear all;
close all;

%sin wave:

a = 10;
f = 4;
t = 0:0.005:1;
analogSignal=a*sin(2*pi*f*t);
subplot(3,2,1);
plot(t,analogSignal);
title('Analago or continous sin wave');

%1)Sampled sin wave  with fs = 2*f (Sampling with Niquist Rate) :

fs = 2*f;
ts = 0:1/fs:1;
sampledSignal = a*sin(2*pi*f*ts);
subplot(3,2,2);
%grid on;
stem(ts,sampledSignal,'.');
%hold on;
title('Sampled sine wave with Niquist Rate');

%2)Over sampled sin wave with fs>2*f :

fs = 11*f;
ts2 = 0:1/fs:1;
overSampledSin = a*sin(2*pi*f*ts2);
subplot(3,2,3);
stem(ts2,overSampledSin,'.');
title('Over sampled sin wave');

%3) Under sampled sin wave with fs<2*f:

fs = 1.5*f;
ts3 = 0:1/fs:1;
underSampledSin = a*sin(2*pi*f*ts3);
subplot(3,2,4);
stem(ts3,underSampledSin,'.');
title('Under sampled sin wave');

%4) Aliasing effect : 
subplot(3,2,5);
plot(t,analogSignal,ts2,overSampledSin,ts3,underSampledSin);
title('Aliasing effect');
