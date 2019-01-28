import fastai
from fastai import *
from fastai.vision import *

path = untar_data(URLs.MNIST_SAMPLE)
data = ImageDataBunch.from_folder(path, ds_tfms=get_transforms(), size=224, bs=32)
learn = create_cnn(data, models.resnet50, metrics=accuracy)
learn.fit(1)
