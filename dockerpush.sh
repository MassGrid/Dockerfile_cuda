#!/bin/bash
sudo docker build -t massgrid/10.0-base-ubuntu16.04 https://raw.githubusercontent.com/MassGrid/Dockerfile_cuda/ubuntu16.04/10.0/base/Dockerfile
sudo docker build -t massgrid/10.0-massgridminer-ubuntu16.04 https://raw.githubusercontent.com/MassGrid/Dockerfile_cuda/ubuntu16.04/10.0/base/MassGridMiner/Dockerfile
sudo docker build -t massgrid/10.0-ethereumminer-ubuntu16.04 https://raw.githubusercontent.com/MassGrid/Dockerfile_cuda/ubuntu16.04/10.0/base/EthereumMiner/Dockerfile
sudo docker build -t massgrid/10.0-autominer-ubuntu16.04 https://raw.githubusercontent.com/MassGrid/Dockerfile_cuda/ubuntu16.04/10.0/base/AutoMiner/Dockerfile
sudo docker build -t massgrid/10.0-runtime-ubuntu16.04 https://raw.githubusercontent.com/MassGrid/Dockerfile_cuda/ubuntu16.04/10.0/runtime/Dockerfile
sudo docker build -t massgrid/10.0-cudnn7-runtime-ubuntu16.04 https://raw.githubusercontent.com/MassGrid/Dockerfile_cuda/ubuntu16.04/10.0/runtime/cudnn7/Dockerfile
sudo docker build -t massgrid/10.0-devel-ubuntu16.04 https://raw.githubusercontent.com/MassGrid/Dockerfile_cuda/ubuntu16.04/10.0/devel/Dockerfile
sudo docker build -t massgrid/10.0-cudnn7-devel-ubuntu16.04 https://raw.githubusercontent.com/MassGrid/Dockerfile_cuda/ubuntu16.04/10.0/devel/cudnn7/Dockerfile

sudo docker push massgrid/10.0-base-ubuntu16.04
sudo docker push massgrid/10.0-massgridminer-ubuntu16.04
sudo docker push massgrid/10.0-ethereumminer-ubuntu16.04
sudo docker push massgrid/10.0-autominer-ubuntu16.04
sudo docker push massgrid/10.0-runtime-ubuntu16.04
sudo docker push massgrid/10.0-cudnn7-runtime-ubuntu16.04
sudo docker push massgrid/10.0-devel-ubuntu16.04
sudo docker push massgrid/10.0-cudnn7-devel-ubuntu16.04
