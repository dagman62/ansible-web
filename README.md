# About this playbook

This playbook installs three apache 2.4.38 with php 7.2.15 from source with APR suppport with nginx backend as load balancer also compiled from source. It supports both Ubuntu and Centos.

## Use Case

This playbook can be used to test out a disposable distributed php web application. The docker-compose.yml file can be modified to include any static web content using volumes. The configurations are on /opt/apache/conf, and the static web content is located in /opt/apache/htdocs

```
Under app1 app2 app3 blocks

volumes:
  - ${pwd}/htdocs:/opt/apache/htdocs
  
 ```
 ### Note that this has to be done before docker-compose and site.xml is done

## Instructions for using this playbook

## This playbook has one load balancer with three web hosts

## Run the docker compose file

```
docker-compose up -d
```

## Use docker to execute bash shell on control host

```
docker exec -it control bash
```

## Copy ssh public key to hosts

```
for i in app1 app2 app3
do
  ssh-copy-id -i $i
done
```
### The passwords is root

## for nginx lb 

```
ssh-copy-id -i user@lb
password=password
```

## Change into the workspace directory and run the playbook

```
cd /root/workspace
ansible-playbook site.yml
```

### Login to http://localhost it will toggle between three web servers feel free to modify this playbook as you see fit.

