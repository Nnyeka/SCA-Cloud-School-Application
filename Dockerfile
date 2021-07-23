#use the python image
From python:3.10.0b4-buster

#set current working directory
WORKDIR /app

#install the dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

#copy the current working directory
COPY . .

EXPOSE 5000

#run command to start uWSGI
CMD ["python", "app/app.py"]