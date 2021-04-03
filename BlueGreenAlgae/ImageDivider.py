from PIL import Image
import numpy as np
import matplotlib.pyplot as plt

def divide(imageArray,length,width):
    i=0
    j=0
    newImage= bytearray(32*32*4)
    for row in range(length,length+32):
        for pixel in range(width,width+32):
            newImage[i][j]=imageArray.getpixel((row, pixel))
            j+=1
        i+=1
    Image.frombytes("CMYK", (32, 32), bytes(newImage)).save('BankOImages/something_'+length+'_'+width+'.TIF')


i=Image.open('something.TIF')
iar=i.getdata()
(w,h)=i.size
if __name__ == "__main__":
    u=0
    v = 0
    while u<h:
        while v<w:
            divide(i,u,v)
            v+=32
        u+=32


