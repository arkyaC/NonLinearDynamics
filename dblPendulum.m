%need to fix dbpd.m, check the math
clc;
theta=.1;
phi=0;
alpha=0;
beta=0;
ic=(pi/180)*[theta phi alpha beta];
[t,y]=ode45('dbpd',(0:.5:50),ic,[]);
axis([4 6 4 6 ]);
for i=1:length(t)
    plot(5+sin(y(i,2))+sin(y(i,1)),5-cos(y(i,2))-cos(y(i,1)),'-o');
    hold on
    pause(0.1);
    %delete h;
end