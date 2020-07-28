sudo apt install unzip
curl -LOk https://github.com/denadr/k8s-ubuntu-vm/archive/master.zipy
unzip master.zip -d .
mv k8s-ubuntu-vm-master/ubuntu-k8s-setup.sh ubuntu-k8s-setup.sh
chmod u+r+x ubuntu-k8s-setup.sh
./ubuntu-k8s-setup.sh
