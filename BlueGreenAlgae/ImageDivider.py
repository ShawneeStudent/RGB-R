from PIL import Image, ImageDraw
import matplotlib.pyplot as mpl
from matplotlib.widgets import Button
from enum import Enum
import random
import os
import csv


"""Tags are added to the end of file name of the sampled image"""
class Tag(Enum):  # change these to match your labels and add to match number of labels
    NONE = 'N'
    ALGAE = 'A'
    SPORE = 'S'
    CYST = 'C'
    SPORECYST = 'B'


"""Code, tied to each of the buttons, that sets the current tag that will be appended to the end of the file"""
global currentTag  # leave alone


def algaebutton(event):  # rename and change the enumed tag to match your labels
    global currentTag
    currentTag = Tag.ALGAE
    mpl.close()  # closes matplotlib to allow another sample to be displayed


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
    currentTag = Tag.SPORECYST
    mpl.close()


def nonebutton(event):
    global currentTag
    currentTag = Tag.NONE
    mpl.close()


def divide(image, width, height, filename, masterdatafolder):
    """This is all of the code for showing the image to sample from as well as display all of the GUI"""
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
    draw.rectangle(xy=[(width-1, height-1),(width+33,height+33)], outline=(255,0,0))
    # HERE ^^^^^^^^^^^^^^^^
    #  ===MATPLOTLIB UI===
    mpl.imshow(rsq)
    mpl.axis([width-20, width+52, height-20, height+52])
    axB1 = mpl.axes([0.85, 0.45, 0.1, 0.075])     # SETTING POSITIONS FOR BUTTONS V
    axB2 = mpl.axes([0.85, 0.35, 0.1, 0.075])     #>		  [X,Y,W,H]			 <|
    axB3 = mpl.axes([0.85, 0.25, 0.1, 0.075])	  #>							 <|
    axB4 = mpl.axes([0.85, 0.15, 0.1, 0.075]) 	  #>							 <|
    axB5 = mpl.axes([0.85, 0.05, 0.1, 0.075])	  #_______________________________^
    #  ===BUTTONS===
    b1 = Button(axB1, 'Algae') # Rename these to make buttons to re-lable your buttons in the UI
    b2 = Button(axB2, 'Spore')
    b3 = Button(axB3, 'Cyst')
    b4 = Button(axB4, 'Both')
    b5 = Button(axB5, 'None')
    #  ===TYING FUNCTION CALLS TO BUTTONS===
    b1.on_clicked(algaebutton)  # rename the functions to function names above
    b2.on_clicked(sporebutton)
    b3.on_clicked(cystbutton)
    b4.on_clicked(sporecystbutton)
    b5.on_clicked(nonebutton)
    #  ===CLEANUP AND SAVING
    mpl.show()  # display images and buttons. keep at bottom of this func
    name = filename.split(".")
    tmp.save(masterdatafolder + '/'+name[0]+'_'+str(width)+'_'+str(height) + currentTag.value +'.png')
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
    for image in filesList:  # for image in image file
        i = Image.open(foldername + "/" + image)
        iar = i.getdata()
        (w, h) = i.width, i.height
        snum = int(input("Enter number of samples: "))
        while snum > 0:
            u = random.randint(0, w - 33)
            v = random.randint(0, h - 33)
            divide(i, u, v, image, masterDataFolder)
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




