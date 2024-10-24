#Use an official Python image
FROM python:3.9-slim

#Set the working directory in the container
WORKDIR /app

#Copy the curent directory contents into the container at /app

COPY ../src/ /app

#Install any needed packages from the requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

#Make port 5000 available
EXPOSE 5000

#Define enviroment variable

ENV NAME World

# Run app.py when the container launches

CMD ["python", app.py"]
