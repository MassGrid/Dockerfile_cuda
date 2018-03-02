ARG repository
FROM ${repository}:9.0-devel-centos7
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.1.1.5
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=d2038dca6e6070aa6879d827fa6c032c942514a6b9bddf5ade275670ca474b9c && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.1.1/cudnn-9.0-linux-x64-v7.1.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-9.0-linux-x64-v7.1.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-9.0-linux-x64-v7.1.tgz -C /usr/local && \
    rm cudnn-9.0-linux-x64-v7.1.tgz && \
    ldconfig
