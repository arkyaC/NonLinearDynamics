function rhs=lorenz(t,w)
sigma=10;
rho=28;
b=8/3;
xdot=sigma*(w(2)-w(1));
ydot=rho*w(1)-w(2)-w(1)*w(3);
zdot=w(1)*w(2)-b*w(3);
rhs=[xdot;
    ydot;
    zdot];