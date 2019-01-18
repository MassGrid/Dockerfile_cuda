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

RUN wget -P /root https://github.com/MassGrid/MassGridMiner/releases/download/MassGridMiner_0.2.1/MassGridMiner_0.2.1_Ubuntu_docker.tar.gz && \
    tar -zxvf /root/MassGridMiner_0.2.1_Ubuntu_docker.tar.gz -C /root