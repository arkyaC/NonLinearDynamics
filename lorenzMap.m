clc; clear all;close all;
ic=[.5 .5 .5];
sigma=10;
rho=28;
b=8/3;
L=50;
[t,w]=ode45('lorenz',(0:.005:200),ic);
Z=[];
for i=2:size(w,1)-1
    if w(i,3)>w(i-1,3)
        if w(i,3)>w(i+1,3)
            Z=[Z w(i,3)];
        end
    end
end
Z_prime=Z(2:end);
Z=Z(1:end-1);
scatter(Z,Z_prime);
