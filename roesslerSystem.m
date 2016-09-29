clc; clear all;close all;
ic=[1 2 2];
L=50;
[t,w]=ode45('roessler',(0:.02:50),ic);
axis([-L L -L L -L L]); h=animatedline('MaximumNumPoints',8000);
for i=1:size(w,1)
    addpoints(h,w(i,1),w(i,2),w(i,3));
    drawnow;
    pause(0.01);
end