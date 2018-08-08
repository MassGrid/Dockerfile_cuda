ARG repository
FROM ${repository}:9.2-runtime-centos7
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.2.1.38
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=3e78f5f0edbe614b56f00ff2d859c5409d150c87ae6ba3df09f97d537909c2e9 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.2.1/cudnn-9.2-linux-x64-v7.2.1.38.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-9.2-linux-x64-v7.2.1.38.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-9.2-linux-x64-v7.2.1.38.tgz -C /usr/local --wildcards 'cuda/lib64/libcudnn.so.*' && \
    rm cudnn-9.2-linux-x64-v7.2.1.38.tgz && \
    ldconfig
