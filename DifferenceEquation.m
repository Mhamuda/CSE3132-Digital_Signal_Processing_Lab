clc;
clear all;
close all;

%Generating unit impulse signal or unit sample sequence :
n = -3:1:7;
x = zeros(1,length(n));
index = find(n==0);
x(index)=1;
subplot(2,2,1);
stem(n,x,'*');
title('Unit sample sequence or unit impulse sequence');
axis tight;

%With filter function :
% 2*y(n)-5*y(n-1) = 5*x(n)-4*x(n-2)+1*x(n-3)

a = [5 0 -4 1];
b = [2 -5];
y = filter(a,b,x);
subplot(2,2,2);
stem(n,y,'*');
title('y(n) with filter function');
axis tight;

%Without filter function :

y1= zeros(1,length(n));
for i=1:length(n)
    if(n(i)<0)
        y1(i)=0;
    end
    if(n(i)>=0)
        y1(i)=5*y1(i-1)+5*x(i)-4*x(i-2)+x(i-3);
        y1(i)=abs(y1(i)/2);
    end
end

subplot(2,2,3);
stem(n,y1,'*');
title('y(n) without filter dunction');
axis tight;

%Normalization : 
maxValue = max(y1);
yNorm = y1/maxValue;
subplot(2,2,4);
stem(n,yNorm,'*');