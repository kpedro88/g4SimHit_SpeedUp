import glob
import re
import matplotlib.pyplot as plt

fileA = []
test = []


directory = 'run6/'  #directory where files are located

fil = glob.glob(directory + '*.txt')
for file in fil:
    if file.startswith(directory + 'log_EnergyThSimple_RusRoNeutronEnergyLimit_'):
        fileA.append(file)

def files(filenames):
    l = []
    pattern1 = re.compile("PARAMTER")
    pattern2 = re.compile("Total loop:")

    for line in open(filenames):
        for match in re.finditer(pattern1, line):
            if line.startswith('('):
                one = line.find('[')
                two = line.find(']')
                a= line[one+1:two]
                l.append(float(a))

    for line in open(filenames):
        for match in re.finditer(pattern2, line):
            if line.startswith(' - Total loop:'):
                one = line.find('  ')
                b = line[one+2:]
                #print(b)
    return l, float(b)

for A in fileA:
    test.append(files(A))

test = sorted(test,key=lambda x: x[0])
print(test)
