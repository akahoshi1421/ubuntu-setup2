#> bash setup.sh

if [ $# != 2 ]; then
    echo usage: bash setup.sh GitYourUserName GitYourEmail
    exit 1
fi

#ubuntu
sudo apt update -y
sudo apt upgrade -y

#gcc
sudo apt install -y build-essential gdb

#Git
git config --global user.name "$1"
git config --global user.email "$2"

#Python
sudo apt install python3-pip python3-dev python3-venv -y

#django and django-channels
python3 -m venv env
source /home/iniad/env/bin/activate
pip install -U django channels

#redis
sudo add-apt-repository ppa:chris-lea/redis-server -y
sudo apt install redis -y
pip install channels_redis

#django-folder
mkdir djangos
git clone https://github.com/akahoshi1421/django-autosetting.git djangos

deactivate

#node
sudo apt install nodejs -y
sudo apt install npm -y

#React
sudo npm -g install create-react-app