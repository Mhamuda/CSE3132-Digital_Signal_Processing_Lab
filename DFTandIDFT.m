clc;
clear all;
close all;

%Discrete Fourier Transform :

x = input('Enter the input sequence : ');
N = input('Enter the value point : ');
xLength = length(x);

if(N<xLength)
    error('Cannot perform dft');
else
    for i = 1:N-xLength
        x = [x 0];
    end
end

X = [];
xx = 0;

for k = 0:N-1
    for n = 0:N-1
        xx = xx+x(n+1)*exp(-j*2*pi*k*n/N);
    end
    X = [X xx];
    xx=0;
end

n = 0:N-1;
subplot(4,1,1);
plot(n,x);
axis tight;
title('Input of x');

subplot(4,1,2);
plot(n,abs(X));
axis tight;
title('Magnitude Spectrum');

subplot(4,1,3);
plot(n,angle(X));
axis tight;
title('Angle or Phase Spectrum ');

%Inverse Discrete Fourier Transform :

for k= 0:N-1
    xInv(k+1)=0;
    for n = 0:N-1
        xInv(k+1) = xInv(k+1)+X(n+1)*exp(j*2*pi*n*k/N);
    end
    xInv(k+1) = xInv(k+1)/N;
end

n = 0:N-1;
disp(xInv);
subplot(4,1,4);
plot(n, xInv);
axis tight;
title('Inverse Discrete Fourier Transform');
