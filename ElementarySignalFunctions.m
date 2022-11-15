
clc;
clear all;
close all;

%1)Unit Sample / Unit Impulse sequence :

points = 21;
u = zeros(1,points);
u(11)=1;
nPoints = -10:1:10;
subplot(3,3,1);
stem(nPoints,u,'.');
xlabel('n-->');
ylabel('u(n)-->');
title('Unit Impulse Sequence');
axis([-12 12 -1 2]);

%2)Unit Step  Sequence :

points = 21;
u = zeros(1,points);

for i=11:points
    u(i)=1;
end

nPoints = -10:1:10;
subplot(3,3,2);
stem(nPoints,u,'.');
xlabel('n-->');
ylabel('u(n)-->');
title('Unit Step Sequence');
axis([-12 12 -1 2]);

%3)Unit Ramp Signal :

points = 16;
nPoints = -5:1:10;
ur=zeros(1,points);

for i=6:points
    ur(i)=i-6;
end

subplot(3,3,3);
stem(nPoints,ur,'.');
xlabel('n-->');
ylabel('ur(n)-->');
title('Unit Ramp Sequence');
axis([-7 12 -5 18]);

%4)Exponential Sequence

points = 11;
n=0:points;
a = 1.3; %a = Amplitude = 1.3 or 0.7
expSeq = a.^(n); %x(n) = exponential sequence
subplot(3,3,4);
stem(n,expSeq,'.');
xlabel('n-->');
ylabel('x(n)-->');
title('Exponential Sequence');
axis([-3 12 -5 25]);

%5)Random signal :

points = 21;
n=-10:1:10;
randSeq = rand(1,points);
subplot(3,3,5);
stem(n,randSeq,'*');
xlabel('n-->');
ylabel('Amplitude-->');
title('Random Sequence');

%6(i) Sinusoidal sequence - Sine wave :

a = 4;
f = 5;
t = 0:0.01:1;
sinSeq = a*sin(2*pi*f*t);
subplot(3,3,6);
plot(t,sinSeq);
xlabel('e-->');
ylabel('Amplitude-->');
title('Sine Wave');

%6(ii) Sinusoidal sequence - cosine wave :

a = 4;
f = 5;
t = 0:0.01:1;
cosSeq = a*cos(2*pi*f*t);
subplot(3,3,7);
plot(t,cosSeq)
xlabel('f-->');
ylabel('Amplitude-->');
title('Cosine Wave');

%7) Sinusoidal sequence if X[n] = 3cos(0.1*n*pi+pi/3)+2sin(0.5*n*pi) :

n=0:11;
a = 3*cos((0.1*n*pi)+(pi/3));
b = 2*sin(0.5*n*pi);
x = a+b;
subplot(3,3,8);
plot(n,x);
title('Sinusoidal Sequence');

%8)Complex sequence - multiple sin wave:

a1=4;
a2=5;
f1=2;
f2=3;
t = 0:0.01:1;
complexSeq = a1*sin(2*pi*f1*t)+a2*sin(2*pi*f2*t);
subplot(3,3,9);
plot(t,complexSeq);
title('Complex Sequence');
