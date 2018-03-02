ARG repository
FROM ${repository}:9.1-devel-centos6
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.0.5.15
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=ae3cf4f6d0d5b39c74742dadb44c91e51531b79e3d01a7aab3459ab9bed2f475 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.1.1/cudnn-9.1-linux-x64-v7.1.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-9.1-linux-x64-v7.1.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-9.1-linux-x64-v7.1.tgz -C /usr/local && \
    rm cudnn-9.1-linux-x64-v7.1.tgz && \
    ldconfig
