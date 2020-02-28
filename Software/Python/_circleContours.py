# -*- coding: utf-8 -*-
"""
Created on Wed Feb 26 14:36:16 2020

@author: Gille
"""


import cv2 as cv
from matplotlib import pyplot as plt
import time

radiusSize = 46 # !!! Change later with code line 51 !!!!

def _findCircleMass(imgFind):
    #imgray = cv.cvtColor(img,cv.COLOR_BGR2GRAY)
    imgray = cv.bilateralFilter(imgFind,9,75,75)
    imgray	=	cv.GaussianBlur(imgray,(5,5),0)
    ret,thresh = cv.threshold(imgray,127,255,0)
    
    _, thresh = cv.threshold(imgray,0,255,cv.THRESH_BINARY+cv.THRESH_OTSU)
    contours, hierarchy = cv.findContours(thresh, cv.RETR_TREE, cv.CHAIN_APPROX_SIMPLE)
    
    circlesData = []
    
    for c in contours:
        extLeft = tuple(c[c[:, :, 0].argmin()][0])
        extRight = tuple(c[c[:, :, 0].argmax()][0])
        radius = (extRight[0] - extLeft[0])/2
        #Check if radius is correct to the one drawn if yes save. This is to avoid collision over each other.
        if radius > radiusSize - 6 and radius < radiusSize+19:       
            M = cv.moments(c)
            cx = int(M['m10']/M['m00'])
            cy = int(M['m01']/M['m00'])
            circlesData.append((cx, cy, radius))

            '''                               
            cv.drawContours(img, [c], 0, (0,255,0), 3)
            plt.imshow(img)
            '''
            
    return circlesData

def _groupUGV(contourData):
    bigCircles = []
    smallCircles = []
    UVGList = []
    
    #Filter circles by its radius and group accordingly.
    #!!! change radius with picture size radius later !!!
    for centerpoints in contourData:
        if centerpoints[2] > radiusSize and centerpoints[2] < radiusSize + 15:
            bigCircles.append(centerpoints[:2])
        elif centerpoints[2] < radiusSize and centerpoints[2] > radiusSize - 2:
            smallCircles.append(centerpoints[:2])
    
    for big, small in zip(bigCircles, smallCircles):
        UVGList.append([big, small]) 
            
    return UVGList

if __name__ == '__main__':

    start = time.time()
    #Read binary image
    img = cv.imread('Docs/CirclePicMultiple2.png',0)
    #Get dimensions
    h, w = img.shape[:2]
    #Find center locations
    data = _findCircleMass(img)
    UGVS = _groupUGV(data)
    
    
    print("[ [UVG1], [UVG2], [UVG3], ...] = ", UGVS)
    print("UVG1 = [xPBig, yPBig, xPSmall, yPSmall] = ", UGVS[0])
    
    '''
    #To unpack your data from pairs into lists for plotting, use zip:
    #plotting takes round +100ms
    
    #Plot centers
    for data in UGVS:
        plt.scatter(*zip(*data))
    plt.axis([0, w, 0, h])              # Modified axis
    #Reverse Y axis , like mirroring
    ax = plt.gca()
    ax.set_ylim(ax.get_ylim()[::-1])
    plt.show()
    '''
    
    end = time.time()
    print("Execution speed is :",(end - start)*1000, "ms")