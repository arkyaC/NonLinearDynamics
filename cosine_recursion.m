close all;clear all;clc
x=1.5;
y=[];
N=3;
for i = 1:N
    x=(x)^2;
    y=[y x];
end
stairs(y);
y(N)