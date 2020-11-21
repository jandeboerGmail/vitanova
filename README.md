# vitanova 

is an application written in python3,
with the help of the Django web framework and Mariadb as DB backend 
running in a Docker container

# Install For Development

python3 -< 3.6.9
pip install --upgrade pip
python3 -m pip install --upgrade pip
pip install Django==3.0.8

pip install mysql-connector-python
pip install Pillow

sudo apt-get install python3-dev default-libmysqlclient-dev build-essential

Mysql/Mariadb server

# Building/Running/Testing

python manage.py makemigrations
python manage.py migrate
python manage.py runserver <servername:port>


# Docker 

docker build -t vitaova . 
docker images
docker run -d -it -p 8000:8000 --name vit<addmm> <container-id>
docker ps`
docker logs -f <container-id>
docker exec -it <container-id> /bin/bash : to get a bash shell in the container.
docker container prune (remove all sttopped contaners)
