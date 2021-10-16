
from tensorflow import keras
import numpy as np
from PIL import Image
import os


mapping = {0: "algae", 1: "control", 2: "cyst", 3: "spore"}
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
print(test)
test = model(class_2_image)
print(test)
test = model(class_3_image)
print(test)
test = model(class_4_image)
print(test)