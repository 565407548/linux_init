## install ceph
## ceph repos (http://eu.ceph.com/docs/wip-6919/start/quick-start/)
sudo wget -q -O- https://raw.github.com/ceph/ceph/master/keys/release.asc | sudo apt-key add -
sudo echo deb http://ceph.com/debian/ $(lsb_release -sc) main | sudo tee /etc/apt/sources.list.d/ceph.list
sudo apt-get update && apt-get upgrade
sudo apt-get install ceph -y
sudo apt-get install ceph-mds -y
ceph -v #查看状态

## update hosts
echo root password>>
su
# >>尾部添加 >替换
cat >>/etc/hosts <<EOF
#auto append ceph server hosts
59.69.75.62 ceph1
59.69.75.62 ceph-mon-a
59.69.75.62 ceph-msd-a

59.69.75.98 ceph2
59.69.75.98 ceph-osd-0

59.69.74.43 ceph3
59.69.74.43 ceph-osd-1

59.69.75.77 admin
EOF
exit

## 打通ssh隧道,在 zheng@zheng-ThinkPad-SL410 执行
mkdir ~/.ssh
cd ~/.ssh
ssh-keygen -t rsa
# ceph1
ssh zcj@ceph1
mkdir ~/.ssh
ssh-keygen -t rsa
scp id_rsa.pub zheng@admin:~/.ssh/ceph1_id_rsa.pub
exit
# ceph2
ssh zcj@ceph2
mkdir ~/.ssh
ssh-keygen -t rsa
scp id_rsa.pub zheng@admin:~/.ssh/ceph2_id_rsa.pub
exit
# ceph3
ssh zcj@ceph3
mkdir ~/.ssh
ssh-keygen -t rsa
scp id_rsa.pub zheng@admin:~/.ssh/ceph3_id_rsa.pub
exit
touch authorized_keys
cat >>authorized_keys <id_rsa.pub
cat >>authorized_keys <ceph1_id_rsa.pub
cat >>authorized_keys <ceph2_id_rsa.pub
cat >>authorized_keys <ceph3_id_rsa.pub
scp authorized_keys zcj@ceph1:~/.ssh/authorized_keys
scp authorized_keys zcj@ceph2:~/.ssh/authorized_keys
scp authorized_keys zcj@ceph3:~/.ssh/authorized_keys

##ceph1 monitor mds
ssh zcj@ceph1
sudo touch /etc/ceph/ceph.conf







