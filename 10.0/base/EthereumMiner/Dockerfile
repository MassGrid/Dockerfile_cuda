FROM massgrid/10.0-base-ubuntu16.04
LABEL maintainer "MASSGRID CORPORATION <wilbur@massgrid.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
    libcurl4-openssl-dev \
    vim \
    cuda-nvml-dev-$CUDA_PKG_VERSION && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/share/terminfo/x && \ 
    cd /usr/share/terminfo/x && \
    ln -s /lib/terminfo/x/xterm xterm

RUN wget -P /root https://github.com/MassGrid/Dockerfile_cuda/releases/download/ethminer_docker/ethminer.tar.gz \
    https://github.com/MassGrid/Dockerfile_cuda/releases/download/ethminer_docker/Claymore+Dual+Ethereum+NVIDIA+GPU+Miner+v12.0-LINUX.tar.gz && \
    tar -zxvf /root/ethminer.tar.gz -C /root && \
    tar -zxvf /root/Claymore+Dual+Ethereum+NVIDIA+GPU+Miner+v12.0-LINUX.tar.gz -C /root
