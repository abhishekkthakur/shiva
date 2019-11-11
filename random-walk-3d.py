# This is an illustration of the random walk diffusion model of atoms.
# It is assumed that the atoms are diffusing upwards as shown in the output figure of this script.
# We consider 3 atoms viz. A, B and C.

import numpy as np
import matplotlib.pyplot as plt
import math
from mpl_toolkits.mplot3d import Axes3D

# For tracing a random path for atom 1.
series1_xvalues = [0]
series1_yvalues = [0]
series1_zvalues = [0]
dist = 2
i = 0
itr = 0
x1 = 0
y1 = 0
z1 = 0
while (i < 200):
    itr = itr + 1
    x2 = np.random.uniform(0, 10)
    y2 = np.random.uniform(0, 10)
    z2 = np.random.uniform(0, 10)
    dist = math.sqrt((z2 - z1)*(z2 - z1) + (y2 - y1)*(y2 - y1) + (x2 - x1)*(x2 - x1))
    if (dist < 1):
        i = i + 1
        series1_xvalues.append(x2)
        series1_yvalues.append(y2)
        series1_zvalues.append(z2)
        x1 = x2
        y1 = y2
        z1 = z2
#series1_xvalues.append(5)
#series1_yvalues.append(5)
#series1_zvalues.append(10)

# For tracing a random path for atom 2.
series2_xvalues = [5]
series2_yvalues = [0]
series2_zvalues = [0]
dist = 2
i = 0
itr = 0
x1 = 5
y1 = 0
z1 = 0
while (i < 200):
    itr = itr + 1
    x2 = np.random.uniform(0, 10)
    y2 = np.random.uniform(0, 10)
    z2 = np.random.uniform(0, 10)
    dist = math.sqrt((z2 - z1)*(z2 - z1) + (y2 - y1)*(y2 - y1) + (x2 - x1)*(x2 - x1))
    if (dist < 1):
        i = i + 1
        series2_xvalues.append(x2)
        series2_yvalues.append(y2)
        series2_zvalues.append(z2)
        x1 = x2
        y1 = y2
        z1 = z2
#series2_xvalues.append(5)
#series2_yvalues.append(5)
#series2_zvalues.append(10)

# For tracing a random path for atom 3.
series3_xvalues = [10]
series3_yvalues = [0]
series3_zvalues = [0]
dist = 2
i = 0
itr = 0
x1 = 10
y1 = 0
z1 = 0
while (i < 200):
    itr = itr + 1
    x2 = np.random.uniform(0, 10)
    y2 = np.random.uniform(0, 10)
    z2 = np.random.uniform(0, 10)
    dist = math.sqrt((z2 - z1)*(z2 - z1) + (y2 - y1)*(y2 - y1) + (x2 - x1)*(x2 - x1))
    if (dist < 1):
        i = i + 1
        series3_xvalues.append(x2)
        series3_yvalues.append(y2)
        series3_zvalues.append(z2)
        x1 = x2
        y1 = y2
        z1 = z2
#series3_xvalues.append(5)
#series3_yvalues.append(5)
#series3_zvalues.append(10)



fig = plt.figure()
ax = fig.add_subplot(111, projection = '3d')
ax.scatter(series1_xvalues, series1_yvalues, series1_zvalues, color = ['red'])
ax.scatter(series2_xvalues, series2_yvalues, series2_zvalues, color = ['green'])
ax.scatter(series3_xvalues, series3_yvalues, series3_zvalues, color = ['blue'])
plt.title('Random diffusion of atoms.')
#plt.show()
plt.savefig('random-3d.pdf', dpi = 600)
