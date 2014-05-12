#!/bin/sh

## google
sudo apt-get install google-chrome

## openssh(openssh-server openssh-client)
sudo apt-get install openssh-server openssh-client
#for ubuntu
sudo service ssh start 
#iptables -P INPUT ACCEPT #close firewall
#iptables -P OUTPUT ACCEPT
#for fedora
#service sshd start
#service iptables stop #close firewall 

## flashplayer
sudo apt-get install flashplugin-installer

## all multimedia plugin (include flashplayer)
#apt-get install ubuntu-restricted-extras

## vim
sudo apt-get install vim

## fcitx 输入法框架，对中文支持比较好
sudo apt-get install fcitx-googlepinyin
sudo apt-get install im-switch
im-switch -s fcitx -z default
#需要重启生效

## zhcon 终端支持中文显示
sudo apt-get install zhcon
zhcon --utf8 --drv=vga

## emacs 
sudo apt-get install emacs

## gcc g++
sudo apt-get install gcc g++

## git
sudo apt-get install git

## reboot
#sudo reboot
