import fastai
from fastai import *
from fastai.vision import *

data = ImageDataBunch.from_folder('data', ds_tfms=get_transforms(), size=224, bs=32)
learn = create_cnn(data, models.resnet50, metrics=accuracy)
learn.fit(1)
