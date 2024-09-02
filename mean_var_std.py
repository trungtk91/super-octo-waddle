import numpy as np

def calculate(list):
    if len(list) < 9:
        raise ValueError("List must contain nine numbers.")
    
    #conver list to array
    list = np.array(list, dtype='float')

    #change the array shape to 3x3
    listmatrix = np.reshape(list , (3,3))

    #cal

    calculations = {
        'mean':[listmatrix.mean(axis=0).tolist(),listmatrix.mean(axis=1).tolist(),list.mean()],
        'variance':[listmatrix.var(axis=0).tolist(),listmatrix.var(axis=1).tolist(),list.var()],
        'standard deviation': [listmatrix.std(axis=0).tolist(),listmatrix.std(axis=1).tolist(), list.std()],
        'max':[np.array(listmatrix.max(axis=0), dtype='int').tolist(),np.array(listmatrix.max(axis=1), dtype = 'int').tolist(),int(list.max())],
        'min':[np.array(listmatrix.min(axis=0), dtype = 'int').tolist(),np.array(listmatrix.min(axis=1), dtype = 'int').tolist(),int(list.min())],
        'sum':[np.array(listmatrix.sum(axis=0),dtype = 'int').tolist(),np.array(listmatrix.sum(axis=1), dtype = 'int').tolist(),int(list.sum())]
    } 
    
    return calculations
