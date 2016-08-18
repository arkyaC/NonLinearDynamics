close all;clc;
[x,y]=meshgrid(0:.005:.14,0:.005:1.2);
tau=-(y.^4+(2*x-1).*(y.^2)+x.^2+x);
delta=y+x.^2;
ineq1=tau>0;
ineq2=tau.^2-4*delta<0;
colors=zeros(size(x))+ineq1+ineq2;
scatter(x(:),y(:),2,colors(:),'filled');