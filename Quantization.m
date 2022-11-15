
clc;
clear all;
close all;

%Analog sinwave / main signal :

a = 20;
f = 2;
t = 0:0.001:1;
analogSignal = a*sin(2*pi*f*t);
subplot(3,1,1);
plot(t,analogSignal);
grid on;
xlabel('Time(t)');
ylabel('Amplitude');
title('Continuous sinwave or Analog singnal');

%Sampled sinwave :

fs = 50*f;
ts = 0:1/fs:1;
sampledSignal = a*sin(2*pi*f*ts);
subplot(3,1,2);
stem(ts,sampledSignal,'.');
hold on; %hold on retains plots in the current axes so that new plots added to the axes do not delete existing plots.
plot(t,analogSignal);
grid on;
xlabel('Time(ts)');
ylabel('Amplitude');
title('Sampled sinwave');

%Quantization : 

bit = 7;
xMax = max(sampledSignal);
xMin = min(sampledSignal);
steps = (xMax-xMin)/(2.^bit);
quantizedSignal = round(sampledSignal/steps)*steps;   %Y = round( X ) rounds each element of X to the nearest integer
subplot(3,1,3);
plot(ts,quantizedSignal);
hold on;
plot(t,analogSignal);
grid on;
xlabel('Time(ts)');
ylabel('Amplitude');
title('Quantized signal');


