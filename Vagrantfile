# -*- mode: ruby -*-
# vi: set ft=ruby :

$init = <<SCRIPT
sudo /home/vagrant/android-sdk-linux/platform-tools/adb kill-server
sudo /home/vagrant/android-sdk-linux/platform-tools/adb start-server
sudo /home/vagrant/android-sdk-linux/platform-tools/adb devices
sudo service nginx start
SCRIPT

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.ssh.insert_key = false
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.provision :shell, :path => ".provision/dependencies.sh", privileged: false
  config.vm.provision :shell, :path => ".provision/database.sh", privileged: false
  config.vm.provision :shell, :path => ".provision/node.sh", privileged: false
  config.vm.provision :shell, :path => ".provision/android.sh", privileged: false
  config.vm.provision :shell, run: "always", inline: $init

  config.vm.network :private_network, ip: "192.168.3.14"
  config.vm.network "forwarded_port", guest: 35729, host: 35729, auto_correct: true
  config.vm.network "forwarded_port", guest: 27017, host: 127017, auto_correct: true
  for i in 8080..8100
    config.vm.network :forwarded_port, guest: i, host: i+10000, auto_correct: true
  end

  config.vm.synced_folder ".", "/vagrant", type: "nfs", create: true

  config.vm.hostname = "Periphore-Ionic-Box"
  config.vm.provider :virtualbox do |vb|
    vb.name = "Periphore Ionic Box"
    vb.customize ['modifyvm', :id, '--memory', '2048']
    vb.customize ["modifyvm", :id, "--usb", "on"]
    vb.customize ["usbfilter", "add", "0", "--target", :id, "--name", "android", "--vendorid", "0x18d1"]
  end

end
