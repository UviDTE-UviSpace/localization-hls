# -*- coding: utf-8 -*-
"""
Created on Wed Feb 26 11:19:41 2020

@author: Gille
"""

# -*- coding: utf-8 -*-
"""
Created on Fri Feb 21 14:22:11 2020

@author: Gille
"""

import numpy as np
import cv2 as cv
from matplotlib import pyplot as plt
import time

start = time.time()

img = cv.imread('../Docs/CirclePicMultiple2.png',0)
#imgray = cv.cvtColor(img,cv.COLOR_BGR2GRAY)
imgray = cv.bilateralFilter(img,9,75,75)
imgray	=	cv.GaussianBlur(imgray,(5,5),0)
ret,thresh = cv.threshold(imgray,127,255,0)

_, thresh = cv.threshold(imgray,0,255,cv.THRESH_BINARY+cv.THRESH_OTSU)
kernel = np.ones((10,10),np.uint8)
opening = cv.morphologyEx(thresh,cv.MORPH_CLOSE,kernel, iterations = 2)

h, w = imgray.shape[:2]
mask = np.zeros((h, w), np.uint8)

contours, hierarchy = cv.findContours(thresh, cv.RETR_TREE, cv.CHAIN_APPROX_SIMPLE)
cnt = max(contours, key=cv.contourArea)
extLeft = tuple(cnt[cnt[:, :, 0].argmin()][0])
extRight = tuple(cnt[cnt[:, :, 0].argmax()][0])
radius = (extRight[0] - extLeft[0])/2
# Binary object edges 
#print(extRight[0], extLeft[0])

print("Radius:",radius)

#Calculate mass with formula Cx=M10/M00  and Cy=M01/M00
M = cv.moments(cnt)
cx = int(M['m10']/M['m00'])
cy = int(M['m01']/M['m00'])
print("X Centerlocation:",cx," & Y Centerlocation:",cy)

plt.plot([cx], [cy], 'ro') # Your original list
plt.axis([0, w, 0, h])              # Modified axis
plt.show()

end = time.time()
print("Execution speed is :",(end - start)*1000, "ms")

