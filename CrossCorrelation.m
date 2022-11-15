clc;
clear all;
close all;

%x = input('Enter the value of x');
%h = input('Enter the value of h');
%input formet = [1 2 3 4 5];

x = [0 1 2 3];
y = [1 1 2 1];
yNeg = fliplr(y);

z = [];
for i = 1:length(x)
    xyNeg = yNeg.*x(i);
    z = [z; xyNeg];
end

[row, col] = size(z);
ans = zeros(1,row+col-1);

for i = 1:row
    for j = 1:col
        ans(i+j-1) = ans(i+j-1)+z(i,j);
    end
end

n = -(length(y)-1):length(x)-1;
disp(ans);
stem(n,ans);

