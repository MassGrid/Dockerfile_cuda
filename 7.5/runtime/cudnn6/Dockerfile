FROM nvidia/cuda:7.5-runtime-centos7
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 6.0.20
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

RUN CUDNN_DOWNLOAD_SUM=f01ef9edde632cf75ae38045df30d7e8ec6847f3bdd20dcf13eaa52def253fba && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v6.0/cudnn-7.5-linux-x64-v6.0.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-7.5-linux-x64-v6.0.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-7.5-linux-x64-v6.0.tgz -C /usr/local --wildcards 'cuda/lib64/libcudnn.so.*' && \
    rm cudnn-7.5-linux-x64-v6.0.tgz && \
    ldconfig
