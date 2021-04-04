from PIL import Image, ImageDraw
import matplotlib.pyplot as mpl
from matplotlib.widgets import Button
from enum import Enum
import time
import random

class Tag(Enum):
    NONE = 0
    ALGAE = 1
    SPORE = 2
    CYST = 3
    SPORECYST = 4

global currentTag

def algaebutton(event):
    global currentTag
    currentTag = Tag.ALGAE
    mpl.close()

def sporebutton(event):
    global currentTag
    currentTag = Tag.SPORE
    mpl.close()

def cystbutton(event):
    global currentTag
    currentTag = Tag.CYST
    mpl.close()

def sporecystbutton(event):
    global currentTag
    currentTag = Tag.CYST
    mpl.close()

def nonebutton(event):
    global currentTag
    currentTag = Tag.NONE
    mpl.close()

def divide(image, width, height, filname):
    global currentTag
    i=0
    newImage= bytearray(32*32*3)
    for row in range(height,height+32):
        for pixel in range(width,width+32):
            for j in range(0,3):
                newImage[i]=image.getpixel((pixel, row))[i%3]
                i+=1
    tmp = Image.frombytes("RGB", (32, 32), bytes(newImage))
    rsq = image.copy()
    draw = ImageDraw.Draw(rsq)
    draw.rectangle(xy=[(width-1, height-1),(width+33,height+33)], outline = (255,0,0))
    mpl.imshow(rsq)
    mpl.axis([width-20, width+52, height-20, height+52])
    axalgae = mpl.axes([0.85, 0.45, 0.1, 0.075])
    axspore = mpl.axes([0.85, 0.35, 0.1, 0.075])
    axcyst = mpl.axes([0.85, 0.25, 0.1, 0.075])
    axsporecyst = mpl.axes([0.85, 0.15, 0.1, 0.075])
    axnone = mpl.axes([0.85, 0.05, 0.1, 0.075])
    balgae = Button(axalgae, 'Algae')
    bspore = Button(axspore, 'Spore')
    bcyst = Button(axcyst, 'Cyst')
    bsporecyst = Button(axsporecyst, 'Both')
    bnone = Button(axnone, 'None')
    balgae.on_clicked(algaebutton)
    bspore.on_clicked(sporebutton)
    bcyst.on_clicked(cystbutton)
    bsporecyst.on_clicked(sporecystbutton)
    bnone.on_clicked(nonebutton)
    mpl.show()
    name = filename.split(".")
    outF = open('BankOImages/'+name[0]+'_'+str(width)+'_'+str(height)+'.txt', "w")
    textList = [str(currentTag)]
    for line in textList:
        # write line to output file
        outF.write(line)
        outF.write("\n")
    outF.close()

    tmp.save('BankOImages/'+name[0]+'_'+str(width)+'_'+str(height)+'.TIF')




if __name__ == "__main__":
    global currentTag
    filename=input("put name of file here with extension")
    i = Image.open(filename)
    iar = i.getdata()
    (w, h) = i.width, i.height
    snum = int(input("Enter number of samples: "))
    while snum > 0:
        u = random.randint(0, w-33)
        v = random.randint(0, h-33)
        divide(i,u,v,filename)
        snum -= 1



