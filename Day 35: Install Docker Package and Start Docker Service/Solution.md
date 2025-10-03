# Access to Server
ssh user@stapp0

# 1. Update system
sudo yum update -y

# 2. Install dockec-ce y compose
sudo dnf -y install dnf-plugins-core

sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo 

sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y 

sudo systemctl enable --now docker

# 3.Testing
docker compose version 
systemctl status docker
