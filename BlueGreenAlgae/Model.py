
from tensorflow import keras
import numpy as np
from PIL import Image

class Model:
    def __init__(self, path):
        self.model = keras.models.load_model(path)

    def testImg(self, img):
        img = np.array(img, dtype=np.float32)
        img = np.expand_dims(img, axis=0)
        ret = self.model(img)
        return str(ret["labels"].numpy())[3:-2]

"""
=== Test code ===
import os
model_path = "..\\Networks\\Algae 90 model"

def load_image(path):
    image = Image.open(path)
    image = np.array(image, dtype=np.float32)
    image = np.expand_dims(image, axis=0)
    return image

#Load some images
class_1_image = load_image("ModelTestData/Algae_327.png")
class_2_image = load_image("ModelTestData/Control_742.png")
class_3_image = load_image("ModelTestData/Cyst_17.png")
class_4_image = load_image("ModelTestData/Spore_11.png")

model = keras.models.load_model(model_path)
test = model(class_1_image)
print(str(test["labels"].numpy())[3:-2])
test = model(class_2_image)
print(test)
test = model(class_3_image)
print(test)
test = model(class_4_image)
print(test)
"""#"""