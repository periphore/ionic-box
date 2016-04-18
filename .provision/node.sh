# !/bin/bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
source /home/vagrant/.profile

nvm install node
nvm install v5.0.0
nvm install v4.4.2
nvm alias default v4.4.2
npm i -g bower nodemon gulp mocha ionic cordova
