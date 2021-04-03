from PIL import Image
import numpy as np
import matplotlib.pyplot as plt

def divide(imageArray):
    t=0
    newImage=[]
    for row in imageArray:
        pixels=[]
        j=0
        for pixel in row:
            pixels.append(pixel)
            j+=1
            if j==32:
                break
        newImage.append(pixels)
        t+=1
        if t==32:
            break
    plt.imshow(newImage)
    plt.show()
i=Image.open('sans.tiff')
iar=np.asarray(i)
if __name__ == "__main__":
    plt.imshow(iar)
    plt.show()
    divide((iar))