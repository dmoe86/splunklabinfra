# splunklabinfra

## Creating the cloud-init template
1. ssh to proxmox server
1. clone this repo
1. modify variables at the top of ./proxmox/cloud-init-template-create/ubuntu2404-cloudinit.sh
    * SSH_AUTH_KEYS_FILE: by default this will use the authorized_keys file on the proxmox server by default. Copy your workstation publish key into that file, or create a new file for them and change the file used in the variable
    * USER: update to match your username
    * STORAGE: update to match your storage volume name in proxmox
1. execute ./proxmox/cloud-init-template-create/ubuntu2404-cloudinit.sh

## Create the lab machines
1. execute ./lab-scripts/create-splunk-lab.sh <iteration_number> 
    * iteration_number will generate unique names so you do not need to remove known hosts on your workstation when rebuilding. this should be incremented every time you run this script

## Destory the lab machines
1. execute ./lab-scripts/destroy-splunk-lab.sh

