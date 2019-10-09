import numpy as np

x = np.random.rand(4898, 11)
y = np.random.rand(4898,)
y = y.reshape(4898, 1)

print (type(y))
print (y.shape)
#data = np.hstack((x, y))

#print (data)
#print (data.shape)
