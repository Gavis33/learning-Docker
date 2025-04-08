# Use an official Python runtime as a parent image
# FROM baseImage
FROM python:3.8-slim

# Set the working directory to /app inside the container
# WORKDIR /the/workdir/path
WORKDIR /app

# Copy the current directory contents into the container at /app
# COPY source dest
COPY . /app/

# Install any needed packages specified in requirements.txt
# RUN command
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
# EXPOSE port
EXPOSE 5000

# Define environment variable
# ENV key=value
ENV FLASK_APP=app.py

# Run app.py (Flask app) when the container launches
# CMD [ "executable" ]
CMD [ "flask", "run", "--host=0.0.0.0" ]
