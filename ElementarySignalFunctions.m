%{
Generating elementary signal ffunctions like :
1) Unit sample
2) Unit step
3) Ramp sequence
4) Exponential
5) Random
6) Sinusoidal sequence:
    i)sine wave
    ii)cosine wave
7) Sinusoidal sequence of X[n] = 3cos(0.1*n*pi+pi/3)+2sin(0.5*n*pi)
8) Complex sequence - multiple sin wave
%}

% plot function is used for contineous signal
% stem function is used for discrete signal

clc;
clear all;
close all;

%1) Unit Sample / Unit Impusle Signal :

points=21;
u = zeros(1,points);    % 1 to 21 = 0
u(11)=1;    %value of 11th index = 1
nPoints=-10:1:10;     %values from -10 to 10 
subplot(3,3,1);     %suplot(number of row,number of coloumn, 1 2 ... row*coloumn)
stem(nPoints,u);    % stem(values of x axis, values of y axis)
xlabel('n -->');    %level of x axis
ylabel('u(n) -->');     %level of y axis (Amplitude)
title('Unit Impulse Signal');   %add title to the top
axis([-12 12 -1 2]);    %range of x axis & y axis

%2) Unit Step of Sequence [u(n)-u(n)-N] :

points=21;
u = zeros(1,points);

for i=11:points
    u(i)=1;
end

nPoints = -10:1:10;
subplot(3,3,2);
stem(nPoints,u);
xlabel('n-->');
ylabel('u(n)-->');      %(Amplitude)
title('Unit step sequence');
axis([-12 12 -1 2]);

%3) Unit Ramp Signal :

points = 16;
u = zeros(1,16);

for i= 6:points
    u(i)=i-6;
end
nPoints = -5:1:10;

subplot(3,3,3);
stem(nPoints,u);
xlabel('n-->');
ylabel('u(n)-->');      %(Amplitude)
title('Unit ramp sequence');
axis([-7 12 -5 18]);

%4) Exponential Signal :

points = 11;    %Length of the exponential sequence
n=0:points;
a= 1.3; % a= Amplitude = 1.3 or 0.7
expSeq = a.^(n);
subplot(3,3,4);
stem(n,expSeq);
xlabel('n-->');
ylabel('Amplitude-->');
title('Exponential sequence');
axis([-3 13 -5 30]);

%5) Random Signal : 

points = 21;
n = -10:1:10;
randSeq = rand(1,points);
subplot(3,3,5);
stem(n,randSeq);
xlabel('n-->');
ylabel('Amplitude');
title('Random sequence');
axis([-12 12 -0.5 1.5]);

%6(i) Sinusoidal sequence - sine wave : 

a = 4;
f = 5;
t= 0:0.01:1;
sinSeq = a*sin(2*pi*f*t);

subplot(3,3,6);
plot(t,sinSeq);
xlabel('e-->');
ylabel('Amplitude-->');
title('Sine wave');

%6(ii) Sinusoidal sequence - cosine wave : 

a=4;
f=5;
t=0:0.01:1;
cosSeq = a*cos(2*pi*f*t);

subplot(3,3,7);
plot(t,cosSeq);
xlabel('f-->');
ylabel('Amplitude-->');
title('Cosine wave');

%7) Sinusoidal sequence of X[n] = 3cos(0.1*n*pi+pi/3)+2sin(0.5*n*pi)

n=0:11;
a = 3*cos((0.1*n*pi)/(pi/3));
b = 2*sin(0.5*n*pi);
x=a+b;
subplot(3,3,8);
plot(n,x);
title('Sinusoidal sequence');

%8)Complex sequence - multiple sin wave :

a1=4;
a2=5;
f1=2;
f2=3;
t = 0:0.001:1;
complexSeq = a1*sin(2*pi*f1*t)+a2*sin(2*pi*f2*t);
subplot(3,3,9);
plot(t,complexSeq);
title('comple Sequence');

