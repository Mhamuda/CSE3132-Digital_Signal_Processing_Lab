%Auto Correlation

clc;
clear all;
close all;

x = [0 1 2 3];

h=[];

for i=length(x):-1:1
    h = [h x(i)];
end

arr = [];

for i=1:length(x)
    temp = h.*x(i);
    arr = [arr;temp];
end

[row, col]=size(arr);
sumRC=row+col;
k=2;
sum=0;
ans=[];

while(k<=sumRC)
    for i = 1:row
        for j = 1:col
            if(i+j==k)
                sum=sum+arr(i,j);
            end
        end
    end
    ans=[ans sum];
    sum=0;
    k=k+1;
end

disp(ans);
%stem(ans);

subplot(3,1,1);
stem(x);
xlabel('x');
ylabel('Input sequence');

subplot(3,1,2);
stem(h);
xlabel('h');
ylabel('Impulse sequence');

subplot(3,1,3);
stem(ans);
xlabel('Ans');
ylabel('Output sequence');
title('Auto Correlation');

