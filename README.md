# Ionic-Box

### Introduction

Ionic Box is a preconfigured Vagrant Box to get you up and running with ionic development in no time. This box should have all your needs doing basic development including tests and gulp workflow.

No provisioning tools or setup is necessary.

### Pre-installed Software

- Git
- Android SDK
- JDK 7
- MongoDB
- Node
- NPM
- Nginx
- Bower
- Gulp
- Mocha
- Nodemon
- Ionic
- Cordova

### Get Started

- Download and install [Vagrant](https://vagrantup.com)
- Download and install [VirtualBox](https://www.virtualbox.org)
- Install vagrant plugins and prerequisite packages
  - (Windows) ``` vagrant plugin install vagrant-winnfsd ```
  - (Linux) ``` sudo apt-get install nfs-common nfs-kernel-server ```
  - (All) ``` vagrant plugin install vagrant-vbguest ```
- Clone the Ionic Box [Github Repository](https://github.com/periphore/ionic-box)
- Run ``` vagrant up ```
- Access your box at [http://192.168.3.14](http://192.168.3.14)

### Vagrant Commands

#### Start or resume your server
```bash
vagrant up
```

#### Pause your server
```bash
vagrant suspend
```

#### Delete your server
```bash
vagrant destroy
```

#### SSH into your server
```bash
vagrant ssh
```

### The MIT License (MIT)

Copyright (c) 2014-2015 Jervn Clark Chua, Periphore

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.