%{
Perform quantization and plot the quantized signal along with quantization error.perform quantization
for different bit levels say,n=2,4,8,16 and plot plot the quantization
error.
%}

clc;
clear all;
close all;

%Main signal :
t= 0:0.0005:1;
f=2;
a=20;
analogSignal = a*sin(2*pi*f*t);
subplot(3,1,1);
plot(t,analogSignal);
xlabel('Time(s)');
ylabel('Amplitude');
title('Continous sinusoidal signal');

%Sampled signal :
fs = 80;
ts = 0:1/fs:1;
sampledSignal = a*sin(2*pi*f*ts);
subplot(3,1,2);
plot(ts,sampledSignal);
grid on;
hold on;
stem(ts,sampledSignal);
xlabel('Time(n)');
ylabel('Amplitude');
title('Sampled sinusoidal signal');

%Quantization :
bit = 2;
qMax = max(sampledSignal);  %M = max( A ) returns the maximum elements of an array
qMin = min(sampledSignal);  %M = min( A ) returns the minimum elements of an array
steps = (qMax-qMin)/(2.^bit);
quantizedSignal = round(sampledSignal/steps)*steps; %Y = round( X ) rounds each element of X to the nearest integer

subplot(3,1,3);
plot(ts,quantizedSignal);
axis([0 ts(end) qMin+2 qMax+2]);
grid on;
title('Quantized sinusoidal signal');
xlabel('Time(n)');
ylabel('Amplitude');
