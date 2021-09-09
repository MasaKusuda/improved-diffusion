#%%
import numpy as np
from matplotlib import pyplot as plt

#%%
npz = np.load('samples_100x64x64x3.npz')
images = npz['arr_0']

for i,image in enumerate(images):
    fig=plt.figure()
    ax=fig.add_subplot()
    print(image.shape)
    plt.imshow(image)
    plt.savefig('images/img'+str(i+1))
    plt.show()