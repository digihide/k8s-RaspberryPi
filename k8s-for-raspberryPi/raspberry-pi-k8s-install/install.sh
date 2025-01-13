sudo dphys-swapfile swapoff
sudo dphys-swapfile uninstall
sudo update-rc.d dphys-swapfile remove

sudo apt install -y curl
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common


curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
echo "deb [arch=armhf] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
     $(lsb_release -cs) stable" | \
sudo tee /etc/apt/sources.list.d/docker.list


sudo apt-get -y update

curl -sSL https://get.docker.com | sh
apt-get purge -y docker-ce
apt-get autoremove -y
apt-get install -y --no-install-recommends docker-ce=18.06.3~ce~3-0~raspbian




curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg|sudo apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kube.list

apt-get install -y kubelet=1.8.14-00 kubeadm=1.8.14-00 kubectl=1.8.14-00 kubernetes-cni=0.5.1-00


