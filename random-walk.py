# This is an illustration of the random walk diffusion model of atoms.
# It is assumed that the atoms are diffusing upwards as shown in the output figure of this script.
# We consider 3 atoms viz. A, B and C.

import numpy as np
import matplotlib.pyplot as plt
import math

# For tracing a random path for atom 1.
series1_xvalues = [0]
series1_yvalues = [0]
dist = 2
i = 0
itr = 0
x1 = 0
y1 = 0
while (i < 120):
    itr = itr + 1
    x2 = np.random.uniform(0, 10)
    y2 = np.random.uniform(0, 10)
    dist = math.sqrt((y2 - y1)*(y2 - y1) + (x2 - x1)*(x2 - x1))
    if (dist < 1):
        i = i + 1
        series1_xvalues.append(x2)
        series1_yvalues.append(y2)
        x1 = x2
        y1 = y2
series1_xvalues.append(5)
series1_yvalues.append(10)

# For tracing a random path for atom 2.
series2_xvalues = [5]
series2_yvalues = [0]
dist = 2
i = 0
itr = 0
x1 = 5
y1 = 0
while (i < 120):
    itr = itr + 1
    x2 = np.random.uniform(0, 10)
    y2 = np.random.uniform(0, 10)
    dist = math.sqrt((y2 - y1)*(y2 - y1) + (x2 - x1)*(x2 - x1))
    if (dist < 1):
        i = i + 1
        series2_xvalues.append(x2)
        series2_yvalues.append(y2)
        x1 = x2
        y1 = y2
series2_xvalues.append(5)
series2_yvalues.append(10)

# For tracing a random path for atom 3.
series3_xvalues = [10]
series3_yvalues = [0]
dist = 2
i = 0
itr = 0
x1 = 10
y1 = 0
while (i < 120):
    itr = itr + 1
    x2 = np.random.uniform(0, 10)
    y2 = np.random.uniform(0, 10)
    dist = math.sqrt((y2 - y1)*(y2 - y1) + (x2 - x1)*(x2 - x1))
    if (dist < 1):
        i = i + 1
        series3_xvalues.append(x2)
        series3_yvalues.append(y2)
        x1 = x2
        y1 = y2
series3_xvalues.append(5)
series3_yvalues.append(10)





plt.scatter(series1_xvalues, series1_yvalues, color = ['red'])
plt.scatter(series2_xvalues, series2_yvalues, color = ['green'])
plt.scatter(series3_xvalues, series3_yvalues, color = ['orange'])
plt.xlim(0, 10)
plt.ylim(0, 10)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Atoms A, B and C diffusing upwards following random path.')
plt.text(0, 0, 'A', size = 10, bbox = dict(boxstyle = 'square'))
plt.text(5, 0, 'B', size = 10, bbox = dict(boxstyle = 'square'))
plt.text(10, 0, 'C', size = 10, bbox = dict(boxstyle = 'square'))
#plt.text(5, 10, 'D', size = 10, bbox = dict(boxstyle = 'square'))
plt.show()
