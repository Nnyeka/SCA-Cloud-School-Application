# SCA-Cloud-School-Application
#Dockerhub repo
https://hub.docker.com/repository/docker/onyekaada/sca_cloud_school_application

#Test Process
#Instructions/Documentation Used for Deployment

#Test Process
1. Generated a pytest fixture called client() that configures the application for testing.
2. The client was then used to access the root of the application (/) which if the status code when the
   web app is accesed is 200 the test will show passed in the terminal. Output provided in images folder.
   
   
#Deployment
1. Built a container image using the following command:
`docker build -t pythonapp .`
2. Logged in to Dockerhub in the terminal  using:
`sudo docker login`
3. Created a new repository in my dockerhub account.
4. Found the docker repo on the local system using:
`docker image ls`
5. Re-tagged the existing pythonapp local image
`sudo docker tag pythonapp:latest onyekaada/sca_cloud_school_application:seconimagepush`
6. Then pushed the image to dockerhub
`sudo docker push onyekaada/sca_cloud_school_application:seconimagepush`
7. Running the image in a container, connecting it to a host port and also renaming the image to "remotepythonapp"
`docker run -d -p 5000:5000 --name remotepythonapp onyekaada/sca_cloud_school_application:seconimagepush`

 
 

