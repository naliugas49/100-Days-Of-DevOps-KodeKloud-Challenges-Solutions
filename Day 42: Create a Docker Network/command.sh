# Access to Server
ssh tony@172.16.238.10
sudo -i

# 2. create network
sudo docker network create \
  --driver bridge \
  --subnet=192.168.0.0/24 \
  --ip-range=192.168.0.0/24 \
  ecommerce

# 3. Verify
docker network ls | grep ecommerce
 # Details
docker network inspect ecommerce
