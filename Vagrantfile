# -*- mode: ruby -*# vi: set ft=ruby :
require 'yaml'
vagrantConfig = YAML.load_file 'Vagrantfile.config.yml'
Vagrant.configure("2") do |config|
    config.vm.box = "bento/centos-7.2"

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
	config.vm.provision "shell", inline: "sudo yum groupinstall \"Development tools\" -y"
	
	# Install java and ansible
	config.vm.provision "shell", inline: "sudo yum install -y java-1.8.0-openjdk-devel"
	config.vm.provision "shell", inline: "sudo yum install -y epel-release"
	config.vm.provision "shell", inline: "sudo yum install -y ansible"
	
	# Install build tools for redis  
	config.vm.provision "shell", inline: "sudo yum install gcc-c++ patch readline readline-devel zlib zlib-devel -y"
	config.vm.provision "shell", inline: "sudo yum install libyaml-devel libffi-devel openssl-devel make -y"
	config.vm.provision "shell", inline: "sudo yum install bzip2 autoconf automake libtool bison iconv-devel sqlite-devel -y"
	
	# Install ruby 2.2.4
	config.vm.provision "shell", inline: "curl -sSL https://rvm.io/mpapis.asc | gpg --import -"
	config.vm.provision "shell", inline: "curl -L get.rvm.io | sudo bash -s stable"
	config.vm.provision "shell", inline: "source /home/vagrant/.bash_profile"
	config.vm.provision "shell", inline: "source /etc/profile.d/rvm.sh"
	config.vm.provision "shell", inline: "rvm reload"
	config.vm.provision "shell", inline: "rvm requirements run"
	config.vm.provision "shell", inline: "rvm user all"
	config.vm.provision "shell", inline: "rvm install 2.4.1"
	
	# Install gem and redis client
	config.vm.provision "shell", inline: "sudo yum install gem -y"
	config.vm.provision "shell", inline: "gem install redis"
end
