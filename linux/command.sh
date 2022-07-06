#!/bin/bash

# users 

cat /etc/passwd
sudo useradd -m -s /bin/bash -c "test user" test
sudo passwd test
su test
sudo userdel test

# groups

cat /etc/group
sudo usermod -aG sudo test
sudo groupadd managers
sudo groupdel managers



