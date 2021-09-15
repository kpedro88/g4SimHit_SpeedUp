import matplotlib.pyplot as plt

#lists where time and change values are stored
time = []
changes = []

#reading multiple files through one function
def files(filename):
        try:
                with open(filename) as f_obj:
                        for line in f_obj:
                                if line.startswith('TimeReport> Time report complete in'):
                                        one = line.find('n')
                                        two = line.find('s')
                                        a = line[one+2:two-1]
        except:
                msg = filename + " file does not exist "
                print(msg)
        return time.append(float(a))

#files
filenames = ['log_RusRoEcalGamma_0.1.txt', 'log_RusRoEcalGamma_0.01.txt', 'log_RusRoEcalGamma_0.001.txt', 'log_RusRoEcalGamma_0.0001.txt', 'log_RusRoEcalGamma_0.00001.txt']

#the for loop executes each of the files in the function
for filename in filenames:
        files(filename)

#in this loop the value of the changes are extracted
for value in filenames:
        one = value.find('0')
        two = value.find('t')
        b = value[one:two-1]
        changes.append(float(b))

#print(changes)
#print(time)

#graphing the behavior of the parameter
plt.plot(changes,time)
plt.xlabel('Changes')
plt.ylabel('Time')
plt.title('RusRoEcalGamma', size = 15)
plt.show()
