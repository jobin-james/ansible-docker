## Introduction

Clone the repo to your PC

```bash
RUN docker-compose up -d
```
This will setup 5 docker machines for you to play around

currnt folder is mapped to /work in control node

```bash
docker exec -it control bash
```

change permission and run ansible_install.sh, which will install Ansible on control node.

change user to ansible
 and chenge directory to ` /work`
 
 Create ansible.cfg
 create host files and add hosts as listed below
 
 ```bash
 [control]
 control ansible_connection=local
 
 [lb]
 lb01
 
 [app]
 app01
 app02
 
 [db]
 db01
 ```
 
 try
 
 ```bash
 ansible -m ping all```
