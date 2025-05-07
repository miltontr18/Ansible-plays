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

1. challange - This is a role constisting of tasks, handlers and vars required to install docker
2. common - This is a role which consists of tasks and vars required to install Vim and Zip.
3. create_file - Another role consisting of tasks and handlers required to create a /tmp file.
4. Keys - A folder to store keys.
5. Hosts - File containing a list of inventory.
6. Install-play - Is A .yml file runs playbooks for all 3 roles of can be use to run roles indevidually.


## Setup


## Usage




