ARG repository
FROM ${repository}:9.0-devel-centos6
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.0.3.11
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=09583e93110cee2bf76ea355e1d9c7c366a50ad858362064f7c927cc46209ef9 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.0.3/cudnn-9.0-linux-x64-v7.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-9.0-linux-x64-v7.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-9.0-linux-x64-v7.tgz -C /usr/local && \
    rm cudnn-9.0-linux-x64-v7.tgz && \
    ldconfig
