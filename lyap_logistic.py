import numpy as np
from matplotlib import pyplot as plt
import math

r=3.0
xPoints=[]
yPoints=[]
while r<=4:
    n=1
    x=.2
    while n<=300:
        x=r*x*(1 - x)
        n=n+1
    l=0
    n=0
    while n<=10000:
        l=l+np.log(abs(r-2*r*x))
        x=r*x*(1 - x)
        n=n+1
    l=l/10000
    print "(%10.8f,%10.6f)"%(r,l)
    xPoints.append(r)
    yPoints.append(l)
    r=r+0.001
plt.plot(xPoints,yPoints)
plt.show()
