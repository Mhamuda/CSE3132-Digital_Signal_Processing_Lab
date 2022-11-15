clc;
clear all;
close all;

%Discrete Fourier Transform :

xInput = [1 2 3 4 5 6 7];
nPoint = length(xInput);   %How many point dft
n = 0:nPoint-1;
xLength = length(xInput);
subplot(3,2,1);
stem(n,xInput,'*');

if(nPoint<xLength)
    error('Can not perform DFT.Point should be >=length.');
end

xInput = [xInput zeros(1,nPoint-xLength)];

xDFT = zeros(1,nPoint);
for k = 0:nPoint-1
    for n = 0:nPoint-1
        xDFT(k+1) = xDFT(k+1)+xInput(n+1)*exp(-1j*2*pi*n*k/nPoint);
    end
end

%Ploting magnitude (Symmetry property of DFT):
disp(xDFT);

n = 0:nPoint-1;
subplot(3,2,2);
plot(n,abs(xDFT));
axis tight;
title('Magnitude spectrum');

%Ploting phase

n = 0:nPoint-1;
subplot(3,2,3);
plot(n,angle(xDFT));
axis tight;
title('Angle or Phase spectrum');

%Inverse Discrete Fourier Transform :

xInv = zeros(1,nPoint);
for k = 0:nPoint-1
    for n = 0:nPoint-1
        xInv(k+1)=xInv(k+1)+xDFT(n+1)*exp(1j*2*pi*n*k/nPoint);
    end
    xInv(k+1) = xInv(k+1)/nPoint;
end

%Ploting Inverse DFT

n = 0:nPoint-1;
subplot(3,2,4);
stem(n,xInv,'*');
axis tight;

%Time shift property :

m=2;
for k = 0:nPoint-1
    xDFT(k+1) = xDFT(k+1)*exp(1j*2*pi*k*m/nPoint);
end

xInv = zeros(1,nPoint);
for k=0:nPoint-1
    for n = 0:nPoint-1
        xInv(k+1)=xInv(k+1)+xDFT(n+1)*exp(1j*2*pi*n*k/nPoint);
    end
    xInv(k+1)=xInv(k+1)/nPoint;
end

%Ploting shifter inverse DFT :

n = 0:nPoint-1;
subplot(3,2,5);
stem(n,xInv,'*');
axis tight;
title('Shifted Inverse DFT');

