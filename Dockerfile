FROM python:3.11
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y libgl1-mesa-glx
RUN pip install numpy pandas scikit-learn wandb opencv-python matplotlib
CMD ["python", "distance_classification.py"]