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

def create_circular_mask(h, w, center=None, radius=None):

    if center is None: # use the middle of the image
        center = (int(w/2), int(h/2))
    if radius is None: # use the smallest distance between the center and image walls
        radius = min(center[0], center[1], w-center[0], h-center[1])

    Y, X = np.ogrid[:h, :w]
    dist_from_center = np.sqrt((X - center[0])**2 + (Y-center[1])**2)

    mask = dist_from_center <= radius
    return mask

img = cv.imread('CirclePicBinarySlant.png',0)
img = cv.bilateralFilter(img,9,75,75)
img	=	cv.GaussianBlur(img,(5,5),0)

#Detect circles
circles	= cv.HoughCircles(img,cv.HOUGH_GRADIENT,1,120,param1=100,param2=30,minRadius=0,maxRadius=0)
circles	= np.uint16(np.around(circles))

#Printen and marking center/border/diameter values of circles found.
for	i in circles[0,:]:
    print('X Centerlocation:',i[0], ', Y centerlocation:',i[1], ', Diameter:',i[2])
    #	draw	the	outer	circle
    cv.circle(img,(i[0],i[1]),i[2],(0,255,0),6)
    #	draw	the	center	of	the	circle
    cv.circle(img,(i[0],i[1]),2,(0,0,255),3)


centerlocBigX = circles[0,0][0]
centerlocSmallX =  circles[0,1][0]
centerlocBigY = circles[0,0][1]
centerlocSmallY =  circles[0,1][1]
radiusBig = circles[0,0][2]
radiusSmall = circles[0,1][2]

# create a mask 
maskBig = np.zeros(img.shape[:2], np.uint8)
maskSmall = np.zeros(img.shape[:2], np.uint8)

# Mask from (length, width) with :
# length region = the center Y location (same X location for both) with also counting the diameters of each circle ,
# width region = X center of big - the diameter : X center of big + diameter
# This way we get a ROI for Big & Small

maskBig[ (centerlocBigY-radiusBig):(centerlocBigY+radiusBig), (centerlocBigX-radiusBig):(centerlocBigX+radiusBig)] = 255
masked_imgBig = cv.bitwise_and(img,img,mask = maskBig)

maskSmall[ (centerlocSmallY-radiusSmall):(centerlocSmallY+radiusSmall), (centerlocSmallX-radiusSmall):(centerlocSmallX+radiusSmall)] = 255
masked_imgSmall = cv.bitwise_and(img,img,mask = maskBig)


h, w = img.shape[:2]
mask1 = create_circular_mask(h, w, radius=radiusBig)


# Calculate histogram with mask and without mask
# Check third argument for mask
hist_full = cv.calcHist([img],[0],None,[256],[0,256])
hist_mask = cv.calcHist([img],[0],maskBig,[256],[0,256])
plt.subplot(221), plt.imshow(img, 'gray')
plt.subplot(222), plt.imshow(mask1,'gray')
plt.subplot(223), plt.imshow(masked_imgBig, 'gray')
plt.subplot(224), plt.plot(hist_full), plt.plot(hist_mask)
plt.xlim([0,256])
plt.show()

end = time.time()
print("Execution speed is :",(end - start)*1000, "ms")
