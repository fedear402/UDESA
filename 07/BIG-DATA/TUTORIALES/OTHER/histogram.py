import numpy as np

def histogram(data, bin_width, start = None):
    if start is None:
        start = min(data)
    

if __name__=="__main__":
    test = np.concatenate((np.random.normal(0, 1, int(0.6 * 100)), np.random.normal(10, 1, int(0.4 * 100)))) 
    histogram(test, 0, 3)