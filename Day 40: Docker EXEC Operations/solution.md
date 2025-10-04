# Access to server
ssh tony@172.16.238.10

# 1. Access to container 
docker exec -it kkloud bash

# 2. Install apache in container
apt install apache2

vi  /etc/apache2/ports.conf
  change 80 to 6400

service apache2 start 
exit

