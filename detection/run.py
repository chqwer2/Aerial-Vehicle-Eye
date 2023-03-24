
# yolov8n, yolov8s, yolov8m, yolov8l, yolov8x
# detection, segmentation, classification

# YOLOv8n-seg

from ultralytics import YOLO

# Load a model
# model = YOLO("yolov8n.yaml")  # build a new model from scratch

model = YOLO("yolov8n.pt")  # load a pretrained model (recommended for training)
print("load model successed...")


# Use the model
model.train(data="./detection/flame.yaml", epochs=3)  # train the model
metrics = model.val()  # evaluate model performance on the validation set


# results = model("https://ultralytics.com/images/bus.jpg")  # predict on an image
# success = model.export(format="onnx")  # export the model to ONNX format

# from PIL
# im1 = Image.open("bus.jpg")
# results = model.predict(source=im1, save=True)  # save plotted images

# from ndarray
# im2 = cv2.imread("bus.jpg")
# results = model.predict(source=im2, save=True, save_txt=True)  # save predictions as labels
