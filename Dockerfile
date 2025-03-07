# Use the official Python image as a base
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask runs on
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
