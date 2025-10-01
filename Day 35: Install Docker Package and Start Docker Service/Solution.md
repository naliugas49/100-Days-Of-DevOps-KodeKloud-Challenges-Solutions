# Access to Server
ssh <user>@stappo<x>

# 1. Update system
sudo yum update -y

# 2. Install dockec-ce y compose
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo sudo dnf ustall docker-ce docker-ce-c1; containerd.io dockec- buildx-plugin docker- compose-plugin -y sudo systemctl enable --now docker

# 3.Testing
docker compose version systemctl status docker