clc;
clear all;
close all;

%x = input('Enter the value of x');
%input format = [1 2 3 4]

x = [0 1 2 3];
xNeg = fliplr(x);

z = [];
for i = 1:length(x)
    xxNeg = xNeg.*x(i);
    z = [z; xxNeg];
end

[row, col] = size(z);
ans = zeros(1,row+col-1);

for i =1:row
    for j = 1:col
        ans(i+j-1) = ans(i+j-1)+z(i,j);
    end
end

n = -(length(xNeg)-1):length(x)-1;
disp(ans);
stem(n,ans);
