#!/bin/bash
# Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
# .NET Core
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install --yes apt-transport-https
sudo apt-get update
sudo apt-get install --yes dotnet-sdk-3.1
sudo apt-get install --yes dotnet-sdk-2.1
# Docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install --yes apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install --yes docker-ce docker-ce-cli containerd.io
# K8s
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt-get update
sudo apt install --yes kubeadm
# Terraform
sudo apt install --yes unzip
curl -LOk "https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_linux_amd64.zip" --output terraform_0.12.29_linux_amd64.zip
unzip terraform_0.12.29_linux_amd64.zip -d terraform_0.12.29_linux_amd64
sudo mv terraform_0.12.29_linux_amd64/terraform /usr/local/bin/
# Helm
curl https://helm.baltorepo.com/organization/signing.asc | sudo apt-key add -
sudo apt-get install --yes apt-transport-https
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install --yes helm
# Repo
curl -LOk https://github.com/denadr/aks-workshop/archive/master.zip
unzip master.zip -d .
cd aks-workshop-master
