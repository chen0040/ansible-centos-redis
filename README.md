# ansible-centos-redis

redis setup on centos using ansible

# Configure OS before installing redis 

## For CentOS Users 

git clone this project to your host computer and navigate to the root directory of the project then run the following command:

```bash
./env_setup.sh
```

This will install java, ansible, and make tools. 

## For Windows Users

git clone this project to your host computer and navigate to the root directory of the project then run the following command:

```bash
vagrant up
```

This will start a vagrant centos 7 VM (at ip 192.168.10.12) with java, ansible, and make tools. Run the following command to ssh into the centos VM:

```bash
vagrant ssh
```

# Install redis

On the centOS, cd to the devops/ansible folder (that is the "devops/ansible" folder in this project), and run the following command:

```bash
ansible-playbook setup-redis.yml -u root -i inventory.password --tags=install_redis
```

This will build and install a redis-6379.service on the CentOS. Run the following command to check this service after the installation:

```bash
systemctl status redis-6379.service
```

# Start redis

After the service is installed, one can start the redis service by running the following command:

```
sudo systemctl start redis-6379.service
```

This will start the redis service at port 6379.

To test this service, run the following command:

```
redis-cli -a chen0469 ping
```

Here "chen0469" is the authentication password set in devops/ansible/inventory.password 

The redis service can also be started by running the following commands:

```bash
cd devops/ansible
ansible-playbook setup-redis.yml -u root -i inventory.password --tags=start_redis
```
