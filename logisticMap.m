clear all;close all;clc

for r=3.82:.005:3.85
    r
    x=.2; %init val
    N=350;
    axis([0,1,0,1])
    xspace=linspace(0,1,50);
    p=plot(xspace,map(xspace,r)); hold on
    plot(xspace,xspace);
    fx=map(x,r);
    p1=plot([x,x],[0,fx]);hold on
    for i =1:N
        fx=map(x,r);
        p1=plot([x,fx],[fx,fx]);
        %pause(1);
        ffx=map(fx,r);
        p1=plot([fx,fx],[fx,ffx]);
        %pause(1);
        x=fx;
    end
    text(.1,.8,'r=','FontSize',10);hold on
    text(.14,.8,mat2str(r,5),'FontSize',10);
    hold off
    if r>=3.8||r<=3.9
        pause(5)
    end
    pause(0.0001)
    if r~=4
        delete(p);
        delete(p1);
    end
end
