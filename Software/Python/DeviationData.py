# -*- coding: utf-8 -*-
"""
Created on Mon May  4 14:32:23 2020

@author: Gille
"""

# want a datatset (in numpy) recieving 2 xy points is 1 element of the dataset.
# maybe a list inside a numpy array where the list is 1 element ?

'''

Mean_bin_45degree=np.mean(bin_0degree)
Mean_bin_90degree=np.mean(bin_45degree) 
Mean_bin_0degree=np.mean(bin_90degree) 

STDV_bin_0degree=np.std(bin_0degree)
STDV_bin_45degree=np.std(bin_45degree)
STDV_bin_90degree=np.std(bin_90degree)

# Create a figure with customized size
fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111) 
# Set the axis lables
ax.set_xlabel('picture nr.', fontsize = 18)
ax.set_ylabel('coordinate', fontsize = 18)
# X axis is number of pics from 1 to 1000
xaxis = np.array(range(1,9))

# Line color for error bar
color_bin_0degree = 'red'
color_bin_45degree = 'darkgreen'
color_bin_90degree = 'darkblue' 
# Line style for each dataset
lineStyle_bin_0degree={"linestyle":"--", "linewidth":2, "markeredgewidth":2, "elinewidth":2, "capsize":3}
lineStyle_bin_45degree={"linestyle":"-", "linewidth":2, "markeredgewidth":2, "elinewidth":2, "capsize":3}
lineStyle_bin_90degree={"linestyle":"-", "linewidth":2, "markeredgewidth":2, "elinewidth":2, "capsize":3}

# Create an error bar for each dataset
line_bin_0degree=ax.errorbar(xaxis, bin_0degree, yerr=STDV_bin_0degree, **lineStyle_bin_0degree, color=color_bin_0degree, label='0 degree')
line_bin_45degree=ax.errorbar(xaxis, bin_45degree, yerr=STDV_bin_45degree, **lineStyle_bin_45degree, color=color_bin_45degree, label='45 degree')
line_bin_90degree=ax.errorbar(xaxis, bin_90degree, yerr=STDV_bin_90degree, **lineStyle_bin_90degree, color=color_bin_90degree, label='90 degree')


# Draw a legend bar
plt.legend(handles=[line_bin_0degree, line_bin_45degree, line_bin_90degree], loc='upper right')

# Customize the tickes on the graph
plt.xticks(xaxis)               
plt.yticks(np.arange(0, 640, 25))

# Customize the legend font and handle length
params = {'legend.fontsize': 13,
          'legend.handlelength': 2}
plt.rcParams.update(params)

# Customize the font
font = {'family' : 'Arial',
        'weight':'bold',
        'size'   : 12}
plt.rc('font', **font)

# Draw a grid for the graph
ax.grid(color='lightgrey', linestyle='-')
ax.set_facecolor('w')

plt.show()
'''

import numpy as np
import os
import cv2 as cv
import time
# save numpy array as csv file
from numpy import asarray
from numpy import save
import pandas as pd
from matplotlib import pyplot as plt

radiusSize = 12 # !!! Change later with code line 51 !!!!
directory0degree = 'D:\deviations\\bin\\circles\\0_degrees'
directory45degree = 'D:\deviations\\bin\\circles\\45_degrees'
directory90degree = 'D:\deviations\\bin\\circles\\90_degrees'

UVGList0degree = []
UVGList45degree = []
UVGList90degree = []

bin_0degree_X_Small = []
bin_45degree_X_Small = []
bin_90degree_X_Small = []

bin_0degree_Y_Small = []
bin_45degree_Y_Small = []
bin_90degree_Y_Small = []

bin_0degree_R_Small = []
bin_45degree_R_Small = []
bin_90degree_R_Small = []

bin_0degree_X_Big = []
bin_45degree_X_Big = []
bin_90degree_X_Big = []

bin_0degree_Y_Big = []
bin_45degree_Y_Big = []
bin_90degree_Y_Big = []

bin_0degree_R_Big = []
bin_45degree_R_Big = []
bin_90degree_R_Big= []

def _findCircle(imgFind):
    
    imgray = cv.bilateralFilter(imgFind,9,75,75)
    imgray	=	cv.GaussianBlur(imgray,(5,5),0)  
    _, thresh = cv.threshold(imgray,200,255,cv.THRESH_BINARY)
    contours, hierarchy = cv.findContours(thresh, cv.RETR_TREE, cv.CHAIN_APPROX_SIMPLE)
    
    circlesData = []
    
    for c in contours:
        extLeft = tuple(c[c[:, :, 0].argmin()][0])
        extRight = tuple(c[c[:, :, 0].argmax()][0])
        radius = (extRight[0] - extLeft[0])/2
        if radius >= radiusSize - 3 and radius <= radiusSize+ 3:
            M = cv.moments(c)
            cx = int(M['m10']/M['m00'])
            cy = int(M['m01']/M['m00'])
            circlesData.append((cx, cy, radius))
            
    return circlesData

def _groupDataset0Degree(contourData):
    
    bigCircles0degree = []
    smallCircles0degree = []
    
    # data[0] = X , data[1] = Y, data[2] = R.
    for data in contourData:
        #Save data in small circle dataset
        if data[2] >= radiusSize and data[2] <= radiusSize + 3:
            bigCircles0degree.append(data[:2])
            
            bin_0degree_X_Big.append(data[0])           
            bin_0degree_Y_Big.append(data[1])         
            bin_0degree_R_Big.append(data[2])

        #Save data in big circle dataset
        elif data[2] <= radiusSize and data[2] >= radiusSize - 3:
            smallCircles0degree.append(data[:2])
            
            bin_0degree_X_Small.append(data[0])            
            bin_0degree_Y_Small.append(data[1])           
            bin_0degree_R_Small.append(data[2])
            
    for big, small in zip(bigCircles0degree, smallCircles0degree):
        UVGList0degree.append([big, small]) 

def _groupDataset45Degree(contourData):
    
    bigCircles45degree = []
    smallCircles45degree = []
    
    # data[0] = X , data[1] = Y, data[2] = R.
    for data in contourData:
        #Save data in small circle dataset
        if data[2] >= radiusSize and data[2] <= radiusSize + 3:
            bigCircles45degree.append(data[:2])
            
            bin_45degree_X_Big.append(data[0])           
            bin_45degree_Y_Big.append(data[1])         
            bin_45degree_R_Big.append(data[2])

        #Save data in big circle dataset
        elif data[2] <= radiusSize and data[2] >= radiusSize - 3:
            smallCircles45degree.append(data[:2])
            
            bin_45degree_X_Small.append(data[0])            
            bin_45degree_Y_Small.append(data[1])           
            bin_45degree_R_Small.append(data[2])
            
    for big, small in zip(bigCircles45degree, smallCircles45degree):
        UVGList45degree.append([big, small]) 
        
def _groupDataset90Degree(contourData):
    
    bigCircles90degree = []
    smallCircles90degree = []
    
    # data[0] = X , data[1] = Y, data[2] = R.
    for data in contourData:
        #Save data in small circle dataset
        if data[2] >= radiusSize and data[2] <= radiusSize + 3:
            bigCircles90degree.append(data[:2])
            
            bin_90degree_X_Big.append(data[0])           
            bin_90degree_Y_Big.append(data[1])         
            bin_90degree_R_Big.append(data[2])

        #Save data in big circle dataset
        elif data[2] <= radiusSize and data[2] >= radiusSize - 3:
            smallCircles90degree.append(data[:2])
            
            bin_90degree_X_Small.append(data[0])            
            bin_90degree_Y_Small.append(data[1])           
            bin_90degree_R_Small.append(data[2])
            
    for big, small in zip(bigCircles90degree, smallCircles90degree):
        UVGList90degree.append([big, small])         
if __name__ == '__main__':
    print("Deviation calulations of circle algorithm by Gilles Lenaerts.")
    itr1 = 0
    itr2 = 0
    itr3 = 0
    print(type(bin_0degree_X_Big)) 
    for f in os.listdir(directory0degree):
        itr1 = itr1+1
        path = directory0degree+'\\'+f
        print("doing file: ", path)
        img = cv.imread(path,0)
        data = _findCircle(img)
        _groupDataset0Degree(data)
        
    for f in os.listdir(directory45degree):
        itr2 = itr2+1
        path = directory45degree+'\\'+f
        print("doing file: ", path)
        img = cv.imread(path,0)
        data = _findCircle(img)
        _groupDataset45Degree(data)
         
    for f in os.listdir(directory90degree):
        itr3 = itr3+1
        path = directory90degree+'\\'+f
        print("doing file: ", path)
        img = cv.imread(path,0)
        data = _findCircle(img)
        _groupDataset90Degree(data)
        
    print("UGV0degree = ",len(UVGList0degree), "UGV45degree = ", len(UVGList45degree), "UGV90degree =" , len(UVGList90degree) )
    print("UGVR0degreemax = ", max(bin_0degree_R_Big),"UGVR45degreemax = ", max(bin_45degree_R_Big),"UGVR90degreemax = ", max(bin_90degree_R_Big) )
    print("UGVR0degreemax = ", min(bin_0degree_R_Small),"UGVR45degreemax = ", min(bin_45degree_R_Small),"UGVR90degreemax = ", min(bin_90degree_R_Small) )
    for data in UVGList0degree:
        plt.scatter(*zip(*data))
    for data in UVGList45degree:
        plt.scatter(*zip(*data))
    for data in UVGList90degree:
        plt.scatter(*zip(*data))
    plt.axis([0, 640, 0, 480])              # Modified axis
    #Reverse Y axis , like mirroring
    ax = plt.gca()
    ax.set_ylim(ax.get_ylim()[::-1])
    #plt.savefig('/plots/centerpoints.png')
    plt.show()
    
    if (itr1+itr2+itr3 == 3000):
        # save to csv file
        
        zippedList =  list(zip(bin_0degree_X_Big, bin_0degree_Y_Big, bin_0degree_R_Big,
                               bin_0degree_X_Small, bin_0degree_Y_Small, bin_0degree_R_Small,
                               bin_45degree_X_Big, bin_45degree_Y_Big, bin_45degree_R_Big,
                               bin_45degree_X_Small, bin_45degree_Y_Small, bin_45degree_R_Small,
                               bin_90degree_X_Big, bin_90degree_Y_Big, bin_90degree_R_Big,
                               bin_90degree_X_Small, bin_90degree_Y_Small, bin_90degree_R_Small,))
        
        
        df = pd.DataFrame(zippedList, columns = ['X_big_0degree','Y_big_0degree','R_big_0degree',
                                     'X_small_0degree','Y_small_0degree','R_small_0degree',
                                     'X_big_45degree','Y_big_45degree','R_big_45degree',
                                     'X_small_45degree','Y_small_45degree','R_small_45degree',
                                     'X_big_90degree','Y_big_90degree','R_big_90degree',
                                     'X_small_90degree','Y_small_90degree','R_small_90degree' ])
        '''
        pd2 = pd.DataFrame(bin_0degree_Y_Big, 'Y_big_0degree')
        pd3 = pd.DataFrame(bin_0degree_R_Big, 'R_big_0degree')
        pd4 = pd.DataFrame(bin_0degree_X_Small, 'X_small_0degree')
        pd5 = pd.DataFrame(bin_0degree_Y_Small, 'Y_small_0degree')
        pd6 = pd.DataFrame(bin_0degree_R_Small, 'R_small_0degree')
        print(pd1)
        
        pd7 = pd.DataFrame(bin_45degree_X_Big)
        pd8 = pd.DataFrame(bin_45degree_Y_Big)
        pd9 = pd.DataFrame(bin_45degree_R_Big)
        pd10 = pd.DataFrame(bin_45degree_X_Small)
        pd11 = pd.DataFrame(bin_45degree_Y_Small)
        pd12 = pd.DataFrame(bin_45degree_R_Small)
        
        pd13 = pd.DataFrame(bin_90degree_X_Big)
        pd14 = pd.DataFrame(bin_90degree_Y_Big)
        pd15 = pd.DataFrame(bin_90degree_R_Big)
        pd16 = pd.DataFrame(bin_90degree_X_Small)
        pd17 = pd.DataFrame(bin_90degree_Y_Small)
        pd18 = pd.DataFrame(bin_90degree_R_Small)
        
        df = pd.DataFrame(columns = ['X_big_0degree','Y_big_0degree','R_big_0degree',
                                     'X_small_0degree','Y_small_0degree','R_small_0degree',
                                     'X_big_45degree','Y_big_45degree','R_big_45degree',
                                     'X_small_45degree','Y_small_45degree','R_small_45degree',
                                     'X_big_90degree','Y_big_90degree','R_big_90degree',
                                     'X_small_90degree','Y_small_90degree','R_small_90degree' ])
        
        df = df.append({'X_big_0degree':pd1,'Y_big_0degree':pd2,'R_big_0degree':pd3,
                        'X_small_0degree':pd4,'Y_small_0degree':pd5,'R_small_0degree':pd6,
                        'X_big_45degree':pd7,'Y_big_45degree':pd8,'R_big_45degree':pd9,
                        'X_small_45degree':pd10,'Y_small_45degree':pd11,'R_small_45degree':pd12,
                        'X_big_90degree':pd13,'Y_big_90degree':pd14,'R_big_90degree':pd15,
                        'X_small_90degree':pd16,'Y_small_90degree':pd17,'R_small_90degree':pd18,}
                        ,ignore_index = True)

'''
        print(df)
        df.to_pickle("C:\localization-hls\\Software\\Python\\measuredata\\data.pkl")

