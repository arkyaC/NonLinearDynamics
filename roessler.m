function rhs=roessler(t,w)
a=.1;
c=4;
b=.1;
xdot=-w(2)-w(3);
ydot=w(1)+a*w(2);
zdot=b+w(3)*(w(1)-c);
rhs=[xdot;
    ydot;
    zdot];