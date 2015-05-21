#!/bin/sh
# usage sh 0repos.sh
# eg: sh 0repos.sh precise

ubuntu_name=$(lsb_release -sc)

sudo mv /etc/apt/sources.list /etc/apt/sources.list.back
sudo rm -R /etc/apt/sources.list.d/*
sudo cat > /etc/apt/sources.list <<EOF
deb http://mirrors.163.com/ubuntu/ ${ubuntu_name} main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ ${ubuntu_name}-security main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ ${ubuntu_name}-updates main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ ${ubuntu_name}-proposed main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ ${ubuntu_name}-backports main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ ${ubuntu_name} main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ ${ubuntu_name}-security main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ ${ubuntu_name}-updates main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ ${ubuntu_name}-proposed main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ ${ubuntu_name}-backports main restricted universe multiverse
EOF

## google-chrome python-autopep8(code-formate)
sudo touch /etc/apt/sources.list.d/others.list
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo cat > /etc/apt/sources.list.d/others.list <<EOF
deb http://us.archive.ubuntu.com/ubuntu ${ubuntu_name} main universe
deb http://dl.google.com/linux/chrome/deb/ stable main
EOF

## subversion
# sudo cat > /etc/apt/sources.list.d/subversion.list <<EOF
#   deb http://ppa.launchpad.net/dominik-stadler/subversion-1.7/ubuntu ${ubuntu_name} main 
# deb-src http://ppa.launchpad.net/dominik-stadler/subversion-1.7/ubuntu ${ubuntu_name} main 
# EOF


sudo apt-get update

