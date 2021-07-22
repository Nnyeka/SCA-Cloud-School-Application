#use the python image
From python:3.10.0b4-buster

#set current working directory
WORKDIR /app

#copy the current working directory
ADD . /app

#install the dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

#run command to start uWSGI
CMD ["python", app.py]