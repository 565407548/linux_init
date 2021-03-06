#!/bin/sh

## google
sudo apt-get install -y google-chrome-stable

## openssh(openssh-server openssh-client)
sudo apt-get install -y openssh-server openssh-client
#for ubuntu
sudo service ssh start 
#iptables -P INPUT ACCEPT #close firewall
#iptables -P OUTPUT ACCEPT
#for fedora
#service sshd start
#service iptables stop #close firewall 

## flashplayer
sudo apt-get install -y flashplugin-installer

## all multimedia plugin (include flashplayer)
#apt-get install ubuntu-restricted-extras

## vim
sudo apt-get install -y vim

## fcitx 输入法框架，对中文支持比较好
sudo apt-get install -y fcitx-googlepinyin
sudo apt-get install -y im-switch
im-switch -s fcitx -z default
#需要重启生效

## zhcon 终端支持中文显示
sudo apt-get install -y zhcon
zhcon --utf8 --drv=vga

## emacs 
sudo apt-get install -y emacs
cp ./_emacs ~/.emacs

## gcc g++
sudo apt-get install -y gcc g++

## git
sudo apt-get install -y git

## subversion
sudo apt-get install -y subversion

## wqy fonts
sudo apt-get install -y ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy

## open-jdk
sudo apt-get install -y openjdk-7-jdk
sudo apt-get install -y openjdk-7-source

## eclipse
sudo apt-get install -y eclipse

## rar
sudo apt-get install -y rar

## gnome-do or kupfer
sudo apt-get install -y gnome-do

## reboot
#sudo reboot
