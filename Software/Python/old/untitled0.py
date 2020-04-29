# -*- coding: utf-8 -*-
"""
Created on Tue Apr 28 18:26:45 2020

@author: Gille
"""
# save numpy array as npy file
from numpy import asarray
from numpy import save
from PIL import Image
from numpy import array
im_1 = Image.open(r"C:\Users\Logo.jpg")
ar = array(im_1)
print((ar))
save('data.bin', ar)
'''
for k in ar:
    for l in k[k]:
        print(ar[k][l])
'''