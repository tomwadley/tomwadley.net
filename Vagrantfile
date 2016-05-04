# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu1404-server"

  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.network "forwarded_port", guest: 4000, host: 4000

  config.ssh.forward_agent = true

  config.vm.synced_folder ".", "/vagrant"

  config.vm.provision "shell",
    inline: "apt-get update && apt-get -y upgrade && apt-get -y install ruby-bundler"

end
