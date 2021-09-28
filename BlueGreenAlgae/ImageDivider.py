from PIL import Image, ImageDraw
import matplotlib.pyplot as mpl
from matplotlib.widgets import Button
from enum import Enum
import random
import os
import csv

"""Code, tied to each of the buttons, that sets the current tag that will be appended to the end of the file"""
global currentTag  # leave alone

class buttonEvent:
    def __init__(self, tag):
        self.tag = tag

    def eventbutton(self, event):  # rename and change the enumed tag to match your labels
        global currentTag
        currentTag = self.tag
        print(str(self.tag)[10:])
        mpl.close()


def divide(image, width, height, TagEnum, filename, masterdatafolder):
    """This is all of the code for showing the image to sample from as well as display all of the GUI"""
    global currentTag
    i=0
    newImage= bytearray(32*32*3)
    for row in range(height, height+32):
        for pixel in range(width, width+32):
            for j in range(0, 3):
                newImage[i]=image.getpixel((pixel, row))[i%3]
                i+=1
    tmp = Image.frombytes("RGB", (32, 32), bytes(newImage))
    rsq = image.copy()
    draw = ImageDraw.Draw(rsq)
    draw.rectangle(xy=[(width-1, height-1),(width+33,height+33)], outline=(255,0,0))
    # HERE ^^^^^^^^^^^^^^^^
    #  ===MATPLOTLIB UI===
    mpl.imshow(rsq)
    mpl.axis([width-20, width+52, height-20, height+52])
    axis = []
    for j in range(len(TagEnum), 0, -1):
        axis.append(mpl.axes([0.85, (j/10.0) - .005, 0.1, 0.075]))
        # SETTING POSITIONS FOR BUTTONS V
        #>		  [X,Y,W,H]			 <|
    ButtonClasses = []
    Buttons = []
    for tag, ax in zip(TagEnum, axis):
        #  ===GENERATING EVENT FUNCTIONS===
        event = buttonEvent(tag)
        ButtonClasses.append(event)

        #  ===BUTTONS===
        button = Button(ax, str(tag)[10:])
        Buttons.append(button)

        #  ===TYING FUNCTION CALLS TO BUTTONS===
        button.on_clicked(event.eventbutton)

    #  ===CLEANUP AND SAVING
    mpl.show()  # display images and buttons. keep at bottom of this func
    name = filename.split(".")
    tmp.save(masterdatafolder + '/' + str(currentTag)[10:] + '/'+name[0]+'_'+str(width)+'_'+str(height) + str(currentTag)[10:13].upper() +'.png')
    #tmp.save(masterdatafolder + '/' + contextLabel + '/' + name[0] + '_' + str(width) + '_' + str(height) + currentTag.value + '.png')


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
        filewriter.writerow(['images', 'labels'])
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
    foldername = input("Name of file containing images to sample from: ")
    masterDataFolder = input("input the name of the folder you wish to save samples to: ")
    labels = input("Input labels separated by commas Eg: label1,label2,...,labelN \n NOTE: do not input the same label twice: ")
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
    enumDict = {}
    for i, tag in enumerate(separatedLabels):
        enumDict[tag] = i
    TagEnum = Enum("ClassTags", enumDict)
    for image in filesList:  # for image in image file
        i = Image.open(foldername + "/" + image)
        iar = i.getdata()
        (w, h) = i.width, i.height
        snum = int(input("Enter number of samples: "))
        while snum > 0:
            u = random.randint(0, w - 33)
            v = random.randint(0, h - 33)
            divide(i, u, v, TagEnum, image, masterDataFolder)
            snum -= 1
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




