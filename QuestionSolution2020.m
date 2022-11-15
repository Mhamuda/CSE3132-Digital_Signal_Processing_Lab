clc;
clear all;
close all;

% 1(a) :

a = 5;
f = 50;
t = 0:0.0001:.1;
xa = a*cos(2*pi*f*t);
subplot(2,2,1);
plot(t,xa);
xlabel('Time(t)');
ylabel('xa(t)');
title('Analog signal');

%1(b):
fs = 200;
ts = 0:1/fs:.1;

sampledSeq1 = a*cos(2*pi*f*ts);
subplot(2,2,2);
stem(ts,sampledSeq1,'.');
xlabel('Time(ts)');
ylabel('xa(ts)');
title('After sampling with fs = 200');

% 1(c) :

fs = 75;
ts2 = 0:1/fs:.1;

sampledSeq2 = a*cos(2*pi*f*ts2);
subplot(2,2,3);
stem(ts2,sampledSeq2,'.');
xlabel('Time(ts2)');
ylabel('xa(t)');
title('After sampling with fs = 75 ');

% 1(d) :

subplot(2,2,4);
plot(ts,sampledSeq1,ts2,sampledSeq2);
grid on;
title('Difference between pictures in (b) and (c)');


