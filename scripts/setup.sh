#!/bin/bash
echo "Instalando dependencias..."
sudo yum update -y
sudo yum install -y docker git python3-pip
sudo service docker start
sudo systemctl enable docker
sudo usermod -aG docker ec2-user

