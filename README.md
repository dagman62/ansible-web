# Instructions for using this playbook

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
## for nginx lb 

```
ssh-copy-id -i user@lb
password=password
```

### The passwords is root

## Change into the workspace directory and run the playbook

```
cd /root/workspace
ansible-playbook site.yml
```

### Login to http://localhost it will toggle between three web servers feel free to modify this playbook as you see fit.

