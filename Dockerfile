# Use an official Python 3.7 image
FROM python:3.7-slim

COPY . /app

# Create a working directory
WORKDIR /app

# (Optional) Copy and install dependencies
# If you have a requirements.txt file with dependencies (like TensorFlow),
# uncomment the next two lines:
RUN pip install --no-cache-dir -r requirements.txt

# Copy your training script into the container

# By default, run 'python train.py'
CMD ["python", "train.py"]
