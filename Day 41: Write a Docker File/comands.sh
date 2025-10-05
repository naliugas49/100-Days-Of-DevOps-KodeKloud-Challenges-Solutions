# Access to Server
ssh tony@172.16.238.10

# 1. Create Dockerfile
sudo vi /opt/docker/Dockerfile

# 2.Build the image
docker build -t mi-apache-6200 .

# 3. Run the image 
docker run -d -p 6200:6200 --name apache-test mi-apache-6200
