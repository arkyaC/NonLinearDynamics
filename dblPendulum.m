clc;
theta1=90;
theta2=145;
alpha=0;
beta=0;
ic=(pi/180)*[theta1 theta2 alpha beta];
[t,y]=ode45('dbpd',(0:.1:50),ic);
axis([0 10 0 10 ]); h=animatedline('MaximumNumPoints',100);
X=5+sin(y(:,1))+sin(y(:,2)); Y=5-cos(y(:,1))-cos(y(:,2));

for i=1:length(X)%length(t)
    %plot(5+sin(y(i,1))+sin(y(i,2)),5-cos(y(i,1))-cos(y(i,2)),'-.or','MarkerFaceColor',[.49 1 .63]);
    %hold on
    %pause(0.1);
    addpoints(h,X(i),Y(i));
    drawnow;
    pause(0.1);
end