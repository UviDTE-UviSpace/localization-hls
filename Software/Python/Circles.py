# -*- coding: utf-8 -*-
"""
Created on Fri Feb 21 14:04:08 2020

@author: Gille
"""


import cv2
import numpy as np
 
 
planets	= cv2.imread('CirclePicBinarySlant.png')
gray_img	=	cv2.cvtColor(planets,	cv2.COLOR_BGR2GRAY)
img	= cv2.medianBlur(gray_img,	5)
cimg = cv2.cvtColor(img,cv2.COLOR_GRAY2BGR)
 
#center
circles	= cv2.HoughCircles(img,cv2.HOUGH_GRADIENT,1,120,param1=100,param2=30,minRadius=0,maxRadius=0)
circles	= np.uint16(np.around(circles))
 
for	i in circles[0,:]:
    print('ci0:', i[0], 'ci1:', i[1], 'ci2:', i[2])
    #	draw	the	outer	circle
    cv2.circle(planets,(i[0],i[1]),i[2],(0,255,0),6)
    #	draw	the	center	of	the	circle
    cv2.circle(planets,(i[0],i[1]),2,(0,0,255),3)

cv2.imshow("Grayed",	gray_img)
cv2.imshow("HoughCirlces",	planets)
cv2.waitKey()
cv2.destroyAllWindows()

