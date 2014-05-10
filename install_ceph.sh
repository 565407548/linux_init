##install ceph(http://eu.ceph.com/docs/wip-6919/start/quick-start/)
wget -q -O- https://raw.github.com/ceph/ceph/master/keys/release.asc | sudo apt-key add -
echo deb http://ceph.com/debian/ $(lsb_release -sc) main | sudo tee /etc/apt/sources.list.d/ceph.list
sudo apt-get update 
sudo apt-get install ceph
