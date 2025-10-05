# Dockerfile para instalar Apache2 en Ubuntu 24.04 y configurarlo en el puerto 6200

# a. Usar ubuntu:24.04 como imagen base.
FROM ubuntu:24.04

# Instalar y configurar Apache2
# El comando RUN se usa para ejecutar comandos en la imagen durante la fase de construcción.
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# b. Configurar Apache2 para que escuche en el puerto 6200.
# Modifica el archivo ports.conf para cambiar la directiva Listen.
# El puerto 80 es el valor por defecto en Apache.

# 1. Edita /etc/apache2/ports.conf
#    - Usa sed para reemplazar "Listen 80" con "Listen 6200".
RUN sed -i 's/^Listen 80$/Listen 6200/' /etc/apache2/ports.conf

# 2. Edita /etc/apache2/sites-enabled/000-default.conf
#    - Usa sed para reemplazar "<VirtualHost *:80>" con "<VirtualHost *:6200>"
#      para el sitio por defecto.
RUN sed -i 's/:80>/:6200>/g' /etc/apache2/sites-enabled/000-default.conf

# Expone el puerto 6200 del contenedor al mundo exterior.
# Esto es solo documentación y no abre el puerto en el host automáticamente.
EXPOSE 6200

# Comando para arrancar Apache en primer plano cuando se inicie el contenedor.
# La opción "-D FOREGROUND" es crucial para que el contenedor siga ejecutándose.
CMD ["apache2ctl", "-D", "FOREGROUND"]
