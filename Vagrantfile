# -*- mode: ruby -*# vi: set ft=ruby :
require 'yaml'
vagrantConfig = YAML.load_file 'Vagrantfile.config.yml'
Vagrant.configure("2") do |config|
    config.vm.box = "centos/7"

    config.vm.define "redis" do |redis|
        redis.vm.network "private_network", ip: vagrantConfig['ip']
        redis.vm.hostname = "redis"
    end

    config.vm.synced_folder "devops/", "/home/vagrant/devops", owner:"vagrant", group: "vagrant"

    # VirtualBox specific settings
    config.vm.provider "virtualbox" do |vb|
		vb.gui = false
		vb.memory = "1024"
		vb.cpus = 1
    end

    config.vm.provision "shell", inline: "sudo yum update -y"
    config.vm.provision "shell", inline: "sudo yum upgrade -y"

end
