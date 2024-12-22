#!/bin/bash
sudo dnf install ansible
ansible-playbook initial-setup.yaml
echo "Please setup proton as rclone remote. Press enter when done."
ansible-playbook wireguard-setup.yaml
echo "Testing podman"
podman run hello-world
