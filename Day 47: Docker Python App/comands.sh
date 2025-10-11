sudo su

cd  cd /python_app/src/
vi Dockerfile

docker build -t nautilus/python-app .
docker run -d --name pythonapp_nautilus -p 8095:8082 nautilus/python-app
