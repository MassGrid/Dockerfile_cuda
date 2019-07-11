FROM massgrid/10.0-base-ubuntu16.04
LABEL maintainer "MASSGRID CORPORATION <wilbur@massgrid.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
    libcurl4-openssl-dev \
    vim \
    cuda-nvml-dev-$CUDA_PKG_VERSION && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/share/terminfo/x && \ 
    cd /usr/share/terminfo/x && \
    ln -s /lib/terminfo/x/xterm xterm && \
    ln -s /usr/lib/x86_64-linux-gnu/libnvidia-ml.so.1 /usr/lib/x86_64-linux-gnu/libnvidia-ml.so

RUN wget -P /root https://github.com/MassGrid/MassGridMiner/releases/download/MassGridMiner_0.2.1/MassGridMiner_0.2.1_Ubuntu_docker.tar.gz \
        https://github.com/MassGrid/Dockerfile_cuda/releases/download/ethminer_docker/ethminer.tar.gz \
        https://github.com/MassGrid/Dockerfile_cuda/releases/download/ethminer_docker/Claymore+Dual+Ethereum+NVIDIA+GPU+Miner+v12.0-LINUX.tar.gz \
        https://github.com/MassGrid/Dockerfile_cuda/releases/download/ethminer_docker/bminer-v12.1.0-5083c32-CUDA-9.2-amd64.tar.gz && \
        tar -zxvf /root/MassGridMiner_0.2.1_Ubuntu_docker.tar.gz -C /root && \
        tar -zxvf /root/ethminer.tar.gz -C /root && \
        tar -zxvf /root/Claymore+Dual+Ethereum+NVIDIA+GPU+Miner+v12.0-LINUX.tar.gz -C /root && \
        tar -zxvf /root/bminer-v12.1.0-5083c32-CUDA-9.2-amd64.tar.gz -C /root

ENV MINERSTART_SHELL=https://raw.githubusercontent.com/wanyvic/DockerImageBase/master/minerstart.sh
RUN wget -P /usr/local/bin $MINERSTART_SHELL && chmod +x /usr/local/bin/minerstart.sh

# overwrite this with 'CMD []' in a dependent Dockerfile
CMD ["/usr/local/bin/minerstart.sh"]
