function rhs=dbpd(t,y,dummy)
betadot=(2*(y(3)^2-y(3)*y(4))*sin(y(1)-y(2))-2*sin(y(2))-sin(y(1))+(1+2*cos(y(2)))*(2*y(4)^2*sin(y(1)-y(2))+sin(y(1))))/(2*(1-(1+2*cos(y(2)))*cos(y(1)-y(2))));
alphadot=-(2*y(4)^2*sin(y(1)-y(2))+sin(y(1)))-2*cos(y(1)-y(2))*betadot;
alphadot=alphadot/2;
rhs=[y(3);
    y(4);
    alphadot;
    betadot];