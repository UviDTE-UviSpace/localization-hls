# -*- coding: utf-8 -*-
"""
Created on Wed Feb 26 14:36:16 2020

@author: Gille
"""


import numpy as np
import cv2 as cv
from matplotlib import pyplot as plt
import time

start = time.time()

def _findCircleMass(imgFind):
    #imgray = cv.cvtColor(img,cv.COLOR_BGR2GRAY)
    imgray = cv.bilateralFilter(imgFind,9,75,75)
    imgray	=	cv.GaussianBlur(imgray,(5,5),0)
    ret,thresh = cv.threshold(imgray,127,255,0)
    
    _, thresh = cv.threshold(imgray,0,255,cv.THRESH_BINARY+cv.THRESH_OTSU)
    contours, hierarchy = cv.findContours(thresh, cv.RETR_TREE, cv.CHAIN_APPROX_SIMPLE)
    #cnt = max(contours, key=cv.contourArea)
    '''
    extLeft = tuple(cnt[cnt[:, :, 0].argmin()][0])
    extRight = tuple(cnt[cnt[:, :, 0].argmax()][0])
    radius = (extRight[0] - extLeft[0])/2
    '''
    # Binary object edges 
    #print(extRight[0], extLeft[0])
    #Calculate mass with formula Cx=M10/M00  and Cy=M01/M00
    #contours = imutils.grab_contours(contours)
    coordinates = []
    radiusList = []
    
    for c in contours:
        M = cv.moments(c)
        cx = int(M['m10']/M['m00'])
        cy = int(M['m01']/M['m00'])
        extLeft = tuple(c[c[:, :, 0].argmin()][0])
        extRight = tuple(c[c[:, :, 0].argmax()][0])
        radius = (extRight[0] - extLeft[0])/2
        coordinates.append((cx, cy))                       
        radiusList.append(radius)
   # print("Radius:",radius)
   # print("X Centerlocation:",cx," & Y Centerlocation:",cy)
    return coordinates, radiusList

#Read binary image
img = cv.imread('CirclePicBinarySlant.png',0)
#Get dimensions
h, w = img.shape[:2]
#Find center locations
points, circleSize = _findCircleMass(img)
#print(points)
#print(circleSize)
#We want Big circle first in array so we flip it
points.reverse()
circleSize.reverse()
print("(xP, yP):", points)
print("r1,r2:", circleSize)

#To unpack your data from pairs into lists use zip:
#plotting takes round +100ms

'''
x, y = zip(*points)
#Plot centers
plt.scatter(*zip(*points))
plt.axis([0, w, 0, h])              # Modified axis

#Reverse Y axis , like mirroring
ax = plt.gca()
ax.set_ylim(ax.get_ylim()[::-1])

plt.show()
'''

end = time.time()
print("Execution speed is :",(end - start)*1000, "ms")