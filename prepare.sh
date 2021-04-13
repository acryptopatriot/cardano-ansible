#!/bin/bash
echo "Updating apt"
#sudo apt update

echo "Installing ansible"
#sudo apt install ansible

echo "Installing sshpass"
#sudo apt install sshpass

# Generate ssh keys
echo "Please enter passphrase for ssh key"
read sshKeyPasscode

ssh-keygen -t rsa -b 4096 -f ~/.ssh/cardano_rsa -P $sshKeyPasscode
chmod 400 ~/.ssh/cardano

echo $sshKeyPasscode