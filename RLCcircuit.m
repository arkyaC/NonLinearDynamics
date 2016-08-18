%producing spirals, due to some unknown reason
[q,p]=meshgrid(-10:.02:10,-10:.02:10);
qdot=p;
R=2;
L=2;
C=1;
pdot=-((R/L)*p+(1/(L*C))*q);
quiver(q,p,qdot,pdot);
startq=-10:2:10;
startp=ones(size(startq));
streamline(q,p,qdot,pdot,startq,startp);
startp=-1*ones(size(startq));
streamline(q,p,qdot,pdot,startq,startp);