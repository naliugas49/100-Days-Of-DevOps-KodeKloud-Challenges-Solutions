# Access to Server

ssh tony@172.16.238.10

#1. First Testing (optional)

ls -l /tmp/nautilus.txt.gpg

docker ps

#2. Solution

docker cp /tmp/nautilus.txt.gpg   ubuntu_latest:/tmp/.

#3. Solution Testing (optional)

docker exec -it  ubuntu_latest    ls -l /tmp/
