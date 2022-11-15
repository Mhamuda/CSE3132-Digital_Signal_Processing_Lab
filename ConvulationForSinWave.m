clc;
clear all;
close all;

t = 0:1/80:1;
x = 7*sin(2*pi*3*t);
h = 5*sin(2*pi*4*t);

z = [];
for i= 1:length(x)
    xh = h.*x(i);
    z = [z; xh];
end

[row, col] = size(z);
ans = zeros(row+col-1);

for i = 1:row
    for j = 1:col
        ans(i+j-1) = ans(i+j-1)+z(i,j);
    end
end

z1 = 2;
z2 = 3;
index = (z1+z2-1);
n = -(index-1):length(ans)-index;

disp(ans);
plot(n,ans);