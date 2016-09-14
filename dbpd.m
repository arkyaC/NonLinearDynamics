function rhs=dbpd(t,y)
alphadot=(-2*sin(y(1)) + cos(y(1)-y(2))*sin(y(2)) - (y(4))^2*sin((y(1)-y(2))) - (y(3))^2*cos(y(1)-y(2))*sin(y(1)-y(2)) )/(2-(cos(y(1)-y(2)))^2);
betadot=-sin(y(2)) + (y(3))^2*sin(y(1)-y(2)) - alphadot*cos(y(1)-y(2));
rhs=[y(3);
    y(4);
    alphadot;
    betadot];