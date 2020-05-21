# -*- coding: utf-8 -*-
"""
Created on Fri May 15 21:37:57 2020

@author: Gille
"""

# -*- coding: utf-8 -*-
"""
Created on Wed Feb 26 14:36:16 2020

@author: Gille
"""


import cv2 as cv
import time
import numpy as np
from matplotlib import pyplot as plt
import math

radiusSize = 12 # !!! Change later with code line 51 !!!!

point1 = []
point2 = []

def _findCircleMass(imgFind):
    
    filenameBila = 'images/bila.jpg'
    filenameBlur = 'images/blur.jpg'
    filenameThresh = 'images/thresh.jpg'

    #imgray = cv.cvtColor(img,cv.COLOR_BGR2GRAY)
    imgray = cv.bilateralFilter(imgFind,9,75,75)
    cv.imwrite(filenameBila, imgray)
    imgray	=	cv.GaussianBlur(imgray,(5,5),0)
    cv.imwrite(filenameBlur, imgray)
    
    _, thresh = cv.threshold(imgray,200,255,cv.THRESH_BINARY)
    cv.imwrite(filenameThresh, thresh)
    contours, hierarchy = cv.findContours(thresh, cv.RETR_TREE, cv.CHAIN_APPROX_SIMPLE)
    
    circlesData = []
    
    for c in contours:
        extLeft = tuple(c[c[:, :, 0].argmin()][0])
        extRight = tuple(c[c[:, :, 0].argmax()][0])
        radius = (extRight[0] - extLeft[0])/2
        #Check if radius is correct to the one drawn if yes save. This is to avoid collision over each other.
        if radius > radiusSize - 3 and radius < radiusSize+ 3: 
            print(radius)
            #print(extLeft, extRight)
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
        if centerpoints[2] > radiusSize and centerpoints[2] < radiusSize + 3:
            print(centerpoints[0])
            bigCircles.append(centerpoints[:2])
            point1.append(centerpoints[0])
            point1.append(centerpoints[1])
        elif centerpoints[2] < radiusSize and centerpoints[2] > radiusSize - 3:
            smallCircles.append(centerpoints[:2])
            point2.append(centerpoints[0])
            point2.append(centerpoints[1])
    
    for big, small in zip(bigCircles, smallCircles):
        UVGList.append([big, small]) 
            
    return UVGList

if __name__ == '__main__':

    print("Circle algorithm by Gilles Lenaerts.")
    
    #start = time.time()
    tic = time.perf_counter()
    #Read binary image
    img = cv.imread('images//binary/circle/bin_90degree.png',0)
    #Get dimensions
    h, w = img.shape[:2]
    #Find center locations
    data = _findCircleMass(img)
    UGVS = _groupUGV(data)
    
    #end = time.time()
    toc = time.perf_counter()
    print("Circle algorithm completed in {:0.4f} seconds".format(toc-tic) )
    
    print("[ [UVG1], [UVG2], [UVG3], ...] = ", UGVS)
    print("UVG1 = [xPBig, yPBig, xPSmall, yPSmall] = ", UGVS[0])
    
    #To unpack your data from pairs into lists for plotting, use zip:
    #plotting takes round +100ms  
    #Plot centers
    for data in UGVS:
        plt.scatter(*zip(*data))
    plt.axis([0, w, 0, h])              # Modified axis
    #Reverse Y axis , like mirroring
    ax = plt.gca()
    ax.set_ylim(ax.get_ylim()[::-1])
    #plt.savefig('/plots/centerpoints.png')
    x_values = [point1[0], point2[0]]
    y_values = [point1[1], point2[1]]
    delta_x = point2[0] - point1[0]
    delta_y = point2[1] - point1[1]
    theta_radians = math.atan2(delta_y, delta_x)
    '''
    #this is used to calibrate and validate the correction error which is added with the calculated radian of the images taken in the lab.
    #This setup would be 45°. The radian added is 1.5707963267948966 to work the Y-axis. If it is supposed to work on X-axis, remove the radian added.
    delta_x2 = 200 - 250
    delta_y2 = 200 - 250
    theta_radians2 = math.atan2(delta_y2, delta_x2)
    '''
    print("before radian",theta_radians)
    theta_radians = theta_radians + 1.5707963267948966
    print("after radian", theta_radians)
    #plt.gca().invert_yaxis()
    plt.plot(x_values, y_values)
    plt.show()
    
    
