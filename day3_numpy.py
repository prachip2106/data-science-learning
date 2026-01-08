import numpy as np
#array using numpy

'''print(arr)
print(type(arr))
'''
#2d array
'''arr2 = np.array([[1,2,3,4],
                 [1,2,3,4]])
print(arr2)
print(type(arr2))
#a1=np.zeros((3,3))
print(np.zeros((3,3)))
print(np.ones((3,3)))
print(np.arange(1,10,2))
print(np.linspace(0,1,5))

print(arr2.shape)
print(arr2.ndim)
print(arr2.size)
print(arr2.dtype)

#2D indexing
print(arr2[:,3])
print(arr*10)
'''

arr = np.array([1,2,3,4,5])
arr1 = np.array([1,2,3,4,5])
print(arr+arr1)
print(arr*arr1)
print(arr-arr1)
print(arr*10)

print(np.mean(arr1))
print(np.sum(arr1))

#mini task
# 1. Create array of 1 to 20
# 2. Find mean
# 3. Replace values > 10 with 0
# 4. Create 2x3 matrix and add 5
mini=np.arange(1,21)
print(mini)
print(np.mean(mini))
mini[mini>10]=0
print(mini)

matrix=np.array([[1,2,3],
         [4,5,6],
         [7,8,9]])
print(matrix)
print(matrix+5)
