# Actualiza repositorios
sudo dnf -y update

# Instala nginx
sudo dnf -y install nginx

# Activa y arranca el servicio
sudo systemctl enable --now nginx

Ahora ajustamos para que use el puerto 8098 y document root en /var/www/html.
sudo vi /etc/nginx/nginx.conf

server {
    listen 8098;
    server_name stapp02;

    root /var/www/html;
    index index.php index.html;

    location / {
        try_files $uri $uri/ =404;
    }

    location ~ \.php$ {
        include fastcgi_params;
        fastcgi_pass unix:/var/run/php-fpm/default.sock;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
    }
}

sudo systemctl enable --now nginx
sudo systemctl restart nginx


# Instalar PHP-FPM 8.1
# Verifica versiones disponibles
sudo dnf module list php

# Resetear por si hay otra versión habilitada
sudo dnf module reset php -y

# Habilitar PHP 8.1
sudo dnf module enable php:8.1 -y

# Instalar php-fpm y extensiones comunes
sudo dnf install -y php php-fpm php-mysqlnd php-cli

# Configurar PHP-FPM
sudo vi /etc/php-fpm.d/www.conf

Busque estas lineas y cambialas:

; Escuchar en socket
listen = /var/run/php-fpm/default.sock

; Asegurar permisos correctos
listen.owner = nginx
listen.group = nginx
listen.mode = 0660

; Usuario y grupo bajo los que correrá php-fpm
user = nginx
group = nginx


Crea el directorio si no existe:

sudo mkdir -p /var/run/php-fpm
sudo chown -R nginx:nginx /var/run/php-fpm


Habilita y arranca:

sudo systemctl enable --now php-fpm
sudo systemctl restart php-fpm
