clc; clear all;close all;
ic=[.5 .5 .5];
sigma=10;
rho=28;
b=8/3;
L=50;
[t,w]=ode45('lorenz',(0:.01:200),ic);
axis([-L L -L L -L L]); h=animatedline('MaximumNumPoints',10000);
for i=1:size(w,1)
    addpoints(h,w(i,1),w(i,2),w(i,3));
    drawnow;
    pause(0.001);
end