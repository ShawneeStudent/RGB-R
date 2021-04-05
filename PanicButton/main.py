import os
import shutil

if __name__ == '__main__':

    rootdir = 'Convert'
    extensions = ('.tif')
    for subdir, dirs, files in os.walk(rootdir):
        for file in files:
            ext = os.path.splitext(file)[-1].lower()
            if ext in extensions:
                with open(os.path.realpath("./Convert/" +file)[:-4] + ".txt") as txt:
                    out = txt.readline()
                    if(out == "Tag.SPORECYST"):
                        out = "B"
                    else:
                        out = out[4]
                    shutil.copyfile(os.path.realpath("./Convert/" +file), os.path.realpath("./Output") + "/" + os.path.basename(file)[:-4] + out + ".tif")

