from PIL import Image, ImageDraw
import matplotlib.pyplot as mpl
from matplotlib.widgets import Button
from enum import Enum
import random
import os
import csv
from Model import Model

"""BUG WARNING:If you hit exit the MPL UI without selecting a tag it will save the image anyways and it will have the 
    same tag as the previous sample."""


"""Code, tied to each of the buttons, that sets the current tag that will be appended to the end of the file"""
global currentTag  # leave alone

class buttonEvent:
    def __init__(self, tag):
        self.tag = tag

    def eventbutton(self, event):  # rename and change the enumed tag to match your labels
        global currentTag
        currentTag = self.tag
        mpl.close()

def splitImage(model, image, labels, imgnum, fname, masterDataFolder, size=32):
    (w, h) = image.width, image.height
    counterDict = {}
    badLabels = []
    for label in labels:
        counterDict[label] = 0
    while True:
        currentLabel = None
        for label in labels:
            if currentLabel == None:
                if counterDict[label] < imgnum and badLabels.count(label) == 0:
                    currentLabel = label
            elif counterDict[label] < counterDict[currentLabel] and badLabels.count(label) == 0:
                currentLabel = label
        if currentLabel == None:
            break
        subimg, tag, x, y = guessImage(model, image, currentLabel, size)
        if subimg == None:
            badLabels.append(tag)
            continue
        if tag == "wrong":
            subimg, tag = displayImage(image, x, y, labels, size)
            if counterDict[tag] < imgnum:
                saveImage(subimg, x, y, tag, fname, masterDataFolder)
                counterDict[tag] += 1
        else:
            saveImage(subimg, x, y, tag, fname, masterDataFolder)
            counterDict[tag] += 1

def guessImage(model, image, label, size=32):
    guess = False
    (w, h) = image.width, image.height
    x, y = (0, 0)
    failsafe = 0
    while(not guess and failsafe < 2000):
        x = random.randint(0, w - sampleSize - 1)
        y = random.randint(0, h - sampleSize - 1)
        subimg = getSubImg(image, x, y, size)
        guess = (model.testImg(subimg) == label)
        failsafe += 1
    if failsafe >= 2000:
        return (None, label, None, None)
    subimg, tag = displayImage(image, x, y, [label, "wrong"], size)
    return (subimg, tag, x, y)



def tagImage(image, x, y, labels, filename, masterdatafolder, size=32):
    savedimg, tag = displayImage(image, x, y, labels, size)
    #  ===CLEANUP AND SAVING
    saveImage(savedimg, x, y, tag, filename, masterdatafolder)
    #tmp.save(masterdatafolder + '/' + contextLabel + '/' + name[0] + '_' + str(width) + '_' + str(height) + currentTag.value + '.png')

def saveImage(image, x, y, tag, filename, masterdatafolder):
    #  ===CLEANUP AND SAVING
    name = filename.split(".")
    image.save(masterdatafolder + '/' + tag + '/' + name[0] +'_' + str(x) + '_' + str(y) + tag.upper() + '.png')


def displayImage(image, x, y, buttonlabels, size=32):
    """This is all of the code for showing the image to sample from as well as display all of the GUI"""
    global currentTag
    tmp = getSubImg(image, x, y, size)
    rsq = image.copy()
    draw = ImageDraw.Draw(rsq)
    draw.rectangle(xy=[(x - 1, y - 1), (x + size + 1, y + size + 1)], outline=(255, 0, 0))
    # HERE ^^^^^^^^^^^^^^^^
    #  ===MATPLOTLIB UI===
    mpl.imshow(rsq)
    mpl.axis([x - 20, x + size + 20, y - 20, y + size + 20])
    axis = []
    for j in range(len(buttonlabels), 0, -1):
        axis.append(mpl.axes([0.85, (j / 10.0) - .005, 0.1, 0.075]))
        # SETTING POSITIONS FOR BUTTONS V
        # >		  [X,Y,W,H]			 <|
    ButtonClasses = []
    Buttons = []
    for tag, ax in zip(buttonlabels, axis):
        #  ===GENERATING EVENT FUNCTIONS===
        event = buttonEvent(tag)
        ButtonClasses.append(event)

        #  ===BUTTONS===
        button = Button(ax, tag)
        Buttons.append(button)

        #  ===TYING FUNCTION CALLS TO BUTTONS===
        button.on_clicked(event.eventbutton)
    mpl.show()  # display images and buttons. keep at bottom of this func
    return (tmp, currentTag)

def getSubImg(image, x, y, size=32):
    i = 0
    newImage = bytearray(size * size * 3)
    for row in range(y, y + size):
        for pixel in range(x, x + size):
            for j in range(0, 3):
                newImage[i] = image.getpixel((pixel, row))[i % 3]
                i += 1
    return Image.frombytes("RGB", (size, size), bytes(newImage))


def samplesToCSV(filepath):
    dataFolders = os.listdir(filepath)
    listToBeWritten = []
    for folder in dataFolders:
        # makes dirty CSV
        #print(folder)
        i = 0
        for sample in os.listdir(filepath+'/'+folder):
            #print(sample)
            datapath = filepath + '/' + folder + '/' + folder+'_' + str(i)+'.png,' + folder
            listToBeWritten.append(datapath)
            i += 1

    with open("DirtyData.csv", 'w', newline='') as csvfile:
        filewriter = csv.writer(csvfile, delimiter=' ')
        filewriter.writerow(['images,', 'labels'])
        filewriter.writerows(listToBeWritten)

    with open(r'DirtyData.csv', 'r') as infile, \
            open(r'data.csv', 'w') as outfile:
        # removes "" from the data making it clean
        data = infile.read()
        data = data.replace("\"", "")
        data = data.replace(" ", "")
        outfile.write(data)
    os.remove("DirtyData.csv")

if __name__ == "__main__":
    global currentTag

    # new code for handling folder files
    # this currently goes through the files and then asks for a number of samples from each image
    #foldername = input("Name of file containing images to sample from: ")
    foldername = "SampleImages"
    #masterDataFolder = input("input the name of the folder you wish to save samples to: ")
    masterDataFolder = "Output"
    sampleSize = 32
    labels = "algae,cyst,spore,control"
    separatedLabels = labels.split(",")

    try:  # for making the data folder if it doesnt exits
        os.mkdir(masterDataFolder)
    except:
        pass
    for label in separatedLabels:  # for making the seperated data folders
        try:
            os.mkdir(masterDataFolder+"/"+label)
        except:
            pass

    filesList = os.listdir(foldername)
    algae2 = Model("..\\Networks\\Algae 90 model")
    for imgfile in filesList:  # for image in image file
        image = Image.open(foldername + "/" + imgfile)
        snum = int(input("Enter number of samples per tag: "))
        splitImage(algae2, image, separatedLabels, snum, imgfile, masterDataFolder, sampleSize)
    samplesToCSV(masterDataFolder)

    # filename = input("put name of file here with extension")
    # i = Image.open(filename)
    # iar = i.getdata()
    # (w, h) = i.width, i.height
    # snum = int(input("Enter number of samples: "))
    # while snum > 0:
    #     u = random.randint(0, w-33)
    #     v = random.randint(0, h-33)
    #     divide(i,u,v,filename)
    #     snum -= 1




