#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Feb  2 14:04:05 2018

@author: park-wanbae
"""
#%%
import numpy as np
import matplotlib.pyplot as plt
import scipy.optimize as sop
#%%
cf = np.array([-500] + [70] * 20)
year = np.arange(0, 21)

def npv(r, cf, year):
    return np.sum(cf / ((1 + r) ** year))



rlist = np.arange(0, 0.1, 0.001)

#%%
x = sop.root(npv, 0.1, args = (cf, year))
result = []
for r in rlist:
    result.append(npv(r, cf, year))


plt.plot(rlist, result, color = 'k')
plt.axhline(y = 0, color = 'r')
plt.axvline(x = x.x, color = 'g')
plt.xlabel('Cost of Capital')
plt.ylabel('NPV')
plt.show()
