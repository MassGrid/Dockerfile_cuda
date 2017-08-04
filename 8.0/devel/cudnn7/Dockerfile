ARG repository
FROM ${repository}:8.0-devel-centos7
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.0.1.13
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=288d844ab289b56d0c7b6719a34c7c0b57a01c58ffbe4d582c9b539da96ed2a7 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.0.1/cudnn-8.0-linux-x64-v7.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-8.0-linux-x64-v7.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-8.0-linux-x64-v7.tgz -C /usr/local && \
    rm cudnn-8.0-linux-x64-v7.tgz && \
    ldconfig
