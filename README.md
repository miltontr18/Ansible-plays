# Ansible-Plays

This repository contains ansible roles to install packages on an ec2 instance.

## Table of contents
- [Pre-Requisites](#Pre-Requisites)
- [File_Breakedown](#File_Breakdown)
- [Setup](#Setup)
- [Usage](#Usage)


## Pre-Requisites.

1. Launch an Ubuntu ec2 instance on AWS with a (Key-pair).
2. Start Docker desktop.
3. Clone this Repository on to your machine.

## File_Breakdown

1. Dockerfile - The dockerfile is one pulled from dgotlieb repo. creates a container running ansible on Ubuntu.
2. ans - Is the folder containing the Plays, roles and inventory required to install applications on to a remote instance 
### ans (contents)

Roles
- challange
This is a role constisting of tasks, handlers and vars required to install docker. The task/main.yml contains a task which pulles variables from the vars/main.yml which will be utilised by the loops in tasks. After installation the notify instruction then starts docker usind the handlers/main.yml.
- common -
This is a role which consists of tasks and vars required to install Vim and Zip. The tasks/main.yml contains a task to install vim and zip the variables for vim and zip are located in the vars/main.yml

- create_file -
Another role consisting of tasks and handlers required to create a /tmp file. In the task folder there are two tasks, the fist task created the tmp/test1.txt and the second one records the file path and file contents which is then pulled by the handlers/main.yml. The recording file path and msg part is something implemented as an extra to ensure the file location exits together with the contents.

keys
1. keys - A folder to store keys.

hosts
hosts - An inventory file for all hosts organised in groups.

Install_play.yml
Install-play - Is the playbook used to run the  .yml file runs playbooks for all 3 roles of can be use to run roles indevidually.

install_vim_zip.yml
Does what it says on the box.

## Setup
1. Clone ripo

3. To move private key from downloads, to current location (in the (keys) directory), cd to Ansible\mnt\keys and run the command below.

For Powershell users use the command below. 
cd ans/keys 
then copy and paste the complete commad below, Replacing "(userPath)" with your user path. 
Remove-Item -Path ".\private.pem" -Force ; Copy-Item -Path "(userPath)\Downloads\private.pem" -Destination ".\private.pem" -Force
**** 
For step 3 Replace "(userPath)" with your user path, example below: 
Remove-Item -Path ".\private.pem" -Force ; Copy-Item -Path "C:\Users\HP\Downloads\private.pem" -Destination ".\private.pem" -Force
***

3. To Change the IP address to the IP address of the machine/s you want to control, cd to Ansible\mnt\hosts eg (C:\Users\HP\devops\Ansible\ans\hosts) and run the command below.

vim host
****
press (I) to insert 
add you ec2 instance connection details.
press (esc) then type (:),(W) and (q) to save and exit
****


5. To Pull image from docker hub and run ansible controller container, cd to Ansible eg (C:\Users\HP\devops\Ansible) and run the command below. 
docker run -it -v $PWD/ans:/opt/ansible dgotlieb/ansible-controller:1.0.0 /bin/bash


6. Change key permissions
chmod 400 keys/private.pem

7. Validate you can ping your hosts using Ansible
ansible all -m ping



## Usage




