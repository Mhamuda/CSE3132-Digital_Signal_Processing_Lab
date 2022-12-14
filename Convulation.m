%Convulation between two sequence

clc;
clear all;
close all;

x = [0 1 2 3];
h = [1 1 2 1];

arr = [];

for i = 1:length(x)
    temp  = h.*x(i);
    arr = [arr;temp];
end

[row, col] = size(arr);
sumRC = row+col;
sum = 0;
k = 2;
ans = [];

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

subplot(3,1,1);
stem(x);
xlabel('x');
ylabel('Input sequence');

subplot(3,1,2)
stem(h);
xlabel('x');
ylabel('Impulse sequence')

subplot(3,1,3);
stem(ans);
xlabel('Ans');
ylabel('Output sequence');
title('Convulation');
