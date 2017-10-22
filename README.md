# ansible-centos-redis

redis setup on centos using ansible

# Usage

## For Linux Users 

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

If vagrant up interrupted due to the vbox shared folder plugin issue (e.g. "/sbin/mount.vboxsf: mounting failed with the error: No such device"), just run "vagrant provision" after that.

This will start a vagrant centos 7 VM (at ip 192.168.10.12) with ruby, gem, java, ansible, and redis client pre-installed. Run the following command to ssh into the centos VM:

```bash
vagrant ssh
```

Once in the VM, you will have the /home/vagrant/devops foler available as the shared folder. cd into the /home/vagrant/devops.

From /home/vagrant/devops, run the following command to build the redis server:

```bash

```
