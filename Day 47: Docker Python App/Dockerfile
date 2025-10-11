# Usar una imagen base de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar e instalar dependencias
COPY ./src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el script del servidor
COPY ./src/server.py .

# Exponer el puerto 8082
EXPOSE 8082

# Ejecutar el servidor
CMD ["python", "server.py"]
