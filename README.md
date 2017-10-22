# ansible-centos-redis

redis setup on centos using ansible

# Configure OS before installing redis 

## For CentOS Users 

git clone this project to your host computer and navigate to the root directory of the project then run the following command:

```bash
./env_setup.sh
```

This will install ruby, gem, java, ansible, and redis client 

## For Windows Users

git clone this project to your host computer and navigate to the root directory of the project then run the following command:

```bash
vagrant up
```

This will start a vagrant centos 7 VM (at ip 192.168.10.12) with ruby, gem, java, ansible, and redis client pre-installed. Run the following command to ssh into the centos VM:

```bash
vagrant ssh
```

Once in the VM, you will have the /home/vagrant/devops foler available as the shared folder. cd into the /home/vagrant/devops.

From /home/vagrant/devops, run the following command to build the redis server:

```bash

```

# Install redis

On the centos OS, cd to the devops folder (that is the "devops" folder in this project), and run the following command:

ansible-playbook setup-redis.yml -u root -i inventory --tags=install_redis

https://www.linode.com/docs/databases/redis/install-and-configure-redis-on-centos-7