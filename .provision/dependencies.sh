# !/bin/bash

sudo apt-get update
sudo apt-get install -y git build-essential curl nginx lib32stdc++6 lib32z1

echo "cd /vagrant" >> /home/vagrant/.bashrc