clc;
clear all;
close all;

%x = input('Enter the value of x : ');
%h = input('Emter the value of h : ');
%Input formet = [1 2 4 5 7]

x = [2 1 2];
h = [1 2 3 4];

z =[]; %An array to store x*h
for i = 1:length(x)
    xh = h.*x(i);
    z = [z; xh]; %store xh in the next row of z
end

[row, col] = size(z);
ans = zeros(1,row+col-1);

for i =1:row
    for j = 1:col
        ans(i+j-1)=ans(i+j-1)+z(i,j);
    end
end

z1 = 2;     % nth index of x,counting statt from 0th index
z2 = 3;     % nth index of h,counting statt from 0th index      
index = (z1+z2-1); %nth index of ans
n = -(index-1):length(ans)-index; %time(n)

disp(ans);
stem(n,ans,'*');




        
        
        