# -*- coding: utf-8 -*-
"""
Created on Mon May  4 16:55:41 2020

@author: Gille
"""


from numpy import load
from matplotlib import pyplot as plt
import numpy as np
import pandas as pd
import math


def _makePlot(df, itr):
    
    # Createe a figure with customized siz
    fig = plt.figure(figsize=(45, 30))
    
    if itr == 1:
        df1 = df[["X_big_0degree"]]
        df2 = df[["Y_big_0degree"]]
        df3 = df[["R_big_0degree"]]
        #df1 = df1.apply(lambda x: pd.to_numeric(x.astype(str).str.replace(',',''), errors='coerce'))
        ax = fig.add_subplot(111)
        # Set the axis lables
        ax.set_xlabel('picture nr.', fontsize = 18)
        ax.set_ylabel('0° UGV', fontsize = 18)
        
    if itr == 2:
        df1 = df[["X_big_45degree"]]
        df2 = df[["Y_big_45degree"]]
        df3 = df[["R_big_45degree"]]
        ax = fig.add_subplot(111)
        # Set the axis lables
        ax.set_xlabel('picture nr.', fontsize = 18)
        ax.set_ylabel('45° UGV', fontsize = 18)
        
    if itr == 3:
        df1 = df[["X_big_90degree"]]
        df2 = df[["Y_big_90degree"]]
        df3 = df[["R_big_90degree"]]
        #df1 = df1.apply(lambda x: pd.to_numeric(x.astype(str).str.replace(',',''), errors='coerce'))
        ax = fig.add_subplot(111)
        ax.set_xlabel('picture nr.', fontsize = 18)
        ax.set_ylabel('90° UGV', fontsize = 18)       
        
    data1 = df1.values
    data2 = df2.values
    data3 = df3.values 
    
    '''
    data1 = data1.tolist()
    data2 = data2.tolist()
    data3 = data3.tolist()
    '''
    
    Mean_X=np.mean(data1)
    Mean_Y=np.mean(data2) 
    Mean_R=np.mean(data3) 
    
    STDV_X=np.std(data1)
    STDV_Y=np.std(data2)
    STDV_R=np.std(data3)
    
    
    
    # X axis is number of pics from 1 to 1000
    xaxis = np.array(range(1,1001))
     # Customize the tickes on the graph
    plt.xticks(np.arange(0, 1000, 10))               
    plt.yticks(np.arange(0, 640, 18))
    
    # Customize the legend font and handle length
    params = {'legend.fontsize': 13,
              'legend.handlelength': 2}
    plt.rcParams.update(params)
    
    # Customize the font
    font = {'family' : 'Arial',
            'weight':'bold',
            'size'   : 12}
    plt.rc('font', **font)

    
    # Line color for error bar
    color_X = 'red'
    color_Y = 'darkgreen'
    color_R = 'darkblue' 
    # Line style for each dataset
    lineStyle_X={"linestyle":"--", "linewidth":2, "markeredgewidth":2, "elinewidth":2, "capsize":3}
    lineStyle_Y={"linestyle":"-", "linewidth":2, "markeredgewidth":2, "elinewidth":2, "capsize":3}
    lineStyle_R={"linestyle":"--", "linewidth":2, "markeredgewidth":2, "elinewidth":2, "capsize":3}
    
    # Create an error bar for each dataset
    line_X=ax.errorbar(xaxis, data1, yerr=STDV_X, **lineStyle_X, color=color_X, label='X')
    line_Y=ax.errorbar(xaxis, data2, yerr=STDV_Y, **lineStyle_Y, color=color_Y, label='Y')
    line_R=ax.errorbar(xaxis, data3, yerr=STDV_R, **lineStyle_R, color=color_R, label='R')

    
    # Draw a legend bar
    plt.legend(handles=[line_X, line_Y, line_R], loc='upper right')
    
    # Draw a grid for the graph
    ax.grid(color='lightgrey', linestyle='-')
    ax.set_facecolor('w')
    
    plt.show()
    print("Mean X = ", Mean_X, "//      Mean Y = ", Mean_Y, "//     Mean R = ", Mean_R)
    print("STDV X pixel = ", STDV_X, " //       STDV Y pixel = ", STDV_Y, " //      STDV R pixel = ", STDV_R)
    print("STDV X mm= ", 0.264583333*STDV_X, "  =>    STDV Y mm = ", 0.264583333*STDV_Y, "mm  =>     STDV R mm = ", 0.264583333*STDV_R)
    
    varianceX = 0
    varianceY = 0
    varianceR = 0
    for get in data1:
       varianceX = varianceX + math.sqrt( (get-int(Mean_X)) )
    for get in data2:
       varianceY = varianceY + math.sqrt( (get-int(Mean_Y)) )
    for get in data2:
       varianceR = varianceR + math.sqrt( (get-int(Mean_Y)) )
    print("Vari X = ", varianceX/1000, "//      Vari Y = ", varianceY/1000, "//         Vari R = ", varianceR/1000 )
    
if __name__ == '__main__':   
    # load array
    df = pd.read_pickle('measuredata\\data.pkl')
    print(df[["Y_big_0degree", "Y_big_90degree", "Y_big_45degree"]])
    _makePlot(df,1)
    _makePlot(df,2)
    _makePlot(df,3)
    
    
   