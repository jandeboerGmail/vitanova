# vitanova 
# is an application written in python3, width the help of the Django web framework and Mariadb as backend.

# Install For Development

python3 -< 3.6.9
pip install --upgrade pip
python3 -m pip install --upgrade pip
pip install Django==3.0.8

pip install mysql-connector-python
pip install Pillow

sudo apt-get install python3-dev default-libmysqlclient-dev build-essential

Mysql/Mariadb server

# Bulding/Testing

python manage.py makemigrations
python manage.py migrate
python manage.py runserver <servername:port>

