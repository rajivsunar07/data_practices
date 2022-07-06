#!/bin/bash

# linux file permissions

chmod u-x,g-x,o-x command.sh
chmod 740 command.sh

# users 

cat /etc/passwd
sudo useradd -m -s /bin/bash -c "test user" test
sudo passwd test
su test
sudo userdel -r test

# groups

cat /etc/group
sudo usermod -aG sudo test
sudo groupadd managers
sudo groupdel managers

# Input, output and error redirection

wc -l wordcountfile.txt
ls -la > myfile 
wrong-command 2> errorfile


# Pipe, Grep and Sort Command 

grep apple search.txt
grep directory *
grep -w app search.txt # whole word
grep -i apple search.txt
grep -n apple search.txt

sort search.txt
sort -r search.txt

grep -i apple search.txt | sort 

grep "^[aA].*[e]$" search.txt

# environmental variables

printenv

# ssh
ssh username@ip -p port

