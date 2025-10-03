# Access to server
ssh steve@172.16.238.11

# 1. Create Nginx container 
docker run --name nginx_2 -v /some/content:/usr/share/nginx/html:ro -d nginx:alpine-perl
