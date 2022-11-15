
clc;
clear all;
close all;

%2(a) : 

t = 0:0.0001:.1;
x1 = 5*cos(100*pi*t);
x2 = 10*cos(200*pi*t);

subplot(3,2,1);
plot(t,x1);
title('Analog Signal');

subplot(3,2,2);
plot(t,x2);
title('Analog Signal');

%2(b): 

x = x1+x2;
subplot(3,2,3);
plot(x);
title('Complex Signal');

%2(c): 

xInput = x;
nPoint = length(xInput);
xlength = length(xInput);

n =0:nPoint-1;

if(nPoint<xlength)
    error('Can not perform DFT');
end

xInput = [xInput zeros(1,nPoint-xlength)];
xDFT = zeros(1,nPoint);

for k=0:nPoint-1
    for n = 0:nPoint-1
        xDFT(k+1) = xDFT(k+1)+xInput(n+1)*exp(-1j*2*pi*n*k/nPoint);
    end
end

disp(xDFT);

n = 0:0.0001:.1;
subplot(3,2,4);
plot(n,abs(xDFT));
axis tight;
title('Magnitude spectrum');

n = 0:0.0001:.1;
subplot(3,2,5);
plot(n,angle(xDFT));
axis tight;
title('Angle or phase spectrum');
        