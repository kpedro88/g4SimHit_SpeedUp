#This crypt allows you to extract the data from a file and graph it.
#Below you will find a guide to the output events from which you can take the values to plot.

#TimeReport> Time report complete in 616.751 seconds
# Time Summary:
# - Min event:   14.4966
# - Max event:   175.726
# - Avg event:   95.1116
# - Total loop:  541.517
# - Total init:  57.3865
# - Total job:   616.751
# - EventSetup Lock:   0.150529
# - EventSetup Get:   202.964
# Event Throughput: 0.00369333 ev/s
# CPU Summary:
# - Total loop:  60.1669
# - Total init:  7.58007
# - Total extra: 0
# - Total job:   68.0555
# Processing Summary:
# - Number of Events:  2
# - Number of Global Begin Lumi Calls:  1
# - Number of Global Begin Run Calls: 1

import glob
import os
import matplotlib.pyplot as plt
import re

numbers = re.compile(r'(\d+)')
def numericalSort(value):
    parts = numbers.split(value)
    parts[1::2] = map(int, parts[1::2])
    return parts

#lists where time and change values are stored
timeA = []
timeB = []
timeC = []
timeD = []
timeE = []
timeF = []
changes = []

#files
fileA = []
fileB = []
fileC = []
fileD = []
fileE = []
fileF = []
directory = 'run2/'  #directory where files are located

fil = sorted(glob.glob(directory + '*.txt'), key=numericalSort)
for file in fil:
        if file.startswith('run2/log_RusRoEcalGamma_'):
                fileA.append(file)

for file in fil:
        if file.startswith('run2/log_RusRoHcalGamma_'):
                fileB.append(file)

for file in fil:
        if file.startswith('run2/log_RusRoMuonIronGamma_'):
                fileC.append(file)

for file in fil:
        if file.startswith('run2/log_RusRoEcalNeutron_'):
                fileD.append(file)

for file in fil:
        if file.startswith('run2/log_RusRoHcalNeutron_'):
                fileE.append(file)

for file in fil:
        if file.startswith('run2/log_RusRoMuonIronNeutron_'):
                fileF.append(file)

#reading multiple files through one function
#Files_A
def files_A(filename):
        try:
                with open(filename) as f_obj:
                        for line in f_obj:
                                if line.startswith(' - Total loop:'):
                                        one = line.find('  ')
                                        #two = line.find('s')
                                        a = line[one+2:]
                                        #print(a)
        except:
                msg = filename + " file does not exist "
                print(msg)
        return timeA.append(float(a))

#the for loop executes each of the files in the function
for filename in fileA:
        files_A(filename)

#Files_B
def files_B(filename):
        try:
                with open(filename) as f_obj:
                        for line in f_obj:
                                if line.startswith(' - Total loop:'):
                                        one = line.find('  ')
                                        #two = line.find('s')
                                        a = line[one+2:]
                                        #print(a)
        except:
                msg = filename + " file does not exist "
                print(msg)
        return timeB.append(float(a))

#the for loop executes each of the files in the function
for filename in fileB:
        files_B(filename)

#Files_C
def files_C(filename):
        try:
                with open(filename) as f_obj:
                        for line in f_obj:
                                if line.startswith(' - Total loop:'):
                                        one = line.find('  ')
                                        #two = line.find('s')
                                        a = line[one+2:]
                                        #print(a)
        except:
                msg = filename + " file does not exist "
                print(msg)
        return timeC.append(float(a))

#the for loop executes each of the files in the function
for filename in fileC:
        files_C(filename)

#Files_D
def files_D(filename):
        try:
                with open(filename) as f_obj:
                        for line in f_obj:
                                if line.startswith(' - Total loop:'):
                                        one = line.find('  ')
                                        #two = line.find('s')
                                        a = line[one+2:]
                                        #print(a)
        except:
                msg = filename + " file does not exist "
                print(msg)
        return timeD.append(float(a))

#the for loop executes each of the files in the function
for filename in fileD:
        files_D(filename)

#Files_E
def files_E(filename):
        try:
                with open(filename) as f_obj:
                        for line in f_obj:
                                if line.startswith(' - Total loop:'):
                                        one = line.find('  ')
                                        #two = line.find('s')
                                        a = line[one+2:]
                                        #print(a)
        except:
                msg = filename + " file does not exist "
                print(msg)
        return timeE.append(float(a))

#the for loop executes each of the files in the function
for filename in fileE:
        files_E(filename)

#Files_F
def files_F(filename):
        try:
                with open(filename) as f_obj:
                        for line in f_obj:
                                if line.startswith(' - Total loop:'):
                                        one = line.find('  ')
                                        #two = line.find('s')
                                        a = line[one+2:]
                                        #print(a)
        except:
                msg = filename + " file does not exist "
                print(msg)
        return timeF.append(float(a))

#the for loop executes each of the files in the function
for filename in fileF:
        files_F(filename)

#in this loop the value of the changes are extracted
for value in fileA:
        th = value.find('a_')
        fr = value.find('x')
        b = value[th+2:fr-2]
        changes.append(float(b))

#Parameters, if you need to use any of them to produce the graph you just have to uncomment
#p = 'EnergyThSimple'
#p = 'DeltaOneStepSimple'
#p = 'DeltaChordSimple'
#p = 'RusRoGammaEnergyLimit'
#p = 'RusRoNeutronEnergyLimit'
#p = 'RusRoEcalGamma'
#p = 'RusRoHcalGamma'
#p = 'RusRoMuonIronNeutron'
#p = 'ProductionCut'
#p = 'Energy Parameters'
#p = 'Magnetic Parameters'
p = 'Probability Parameters'

#graphing the behavior of the parameter
plt.plot(changes,timeA,marker='o',label='RusRoEcalGamma Variation')
plt.plot(changes,timeB,marker='p',label='RusRoHcalGamma Variation')
plt.plot(changes,timeC,marker='s',label='RusRoMuonIronGamma Variation')
plt.plot(changes,timeD,marker='P',label='RusRoEcalNeutron Variation')
plt.plot(changes,timeE,marker='x',label='RusRoHcalNeutron Variation')
plt.plot(changes,timeF,marker='v',label='RusRoMuonIronNeutron Variation')
plt.xscale('log')
plt.xlabel('Changes')
plt.ylabel('Total Loop')
plt.title('{}'.format(p), size = 15)
#plt.legend()
plt.legend(ncol=6,bbox_to_anchor=(1.1,-.1),loc=0,fontsize=7)
plt.grid(True)
#plt.tight_layout()
plt.show()
