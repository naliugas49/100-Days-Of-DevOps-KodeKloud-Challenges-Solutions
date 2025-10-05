# 1. Pull nginx:alpine image
docker pull nginx:alpine-perl

# 2. Run container named cluster with port mapping
docker run -d --name cluster -p 3001:80 nginx:alpine
