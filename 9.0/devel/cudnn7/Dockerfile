ARG repository
FROM ${repository}:9.0-devel-centos7
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.3.0.29
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=403f9043ff2c7b2c5967454872275d07bca11fd41dfc7b21995eadcad6dbe49b && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.3.0/cudnn-9.0-linux-x64-v7.3.0.29.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-9.0-linux-x64-v7.3.0.29.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-9.0-linux-x64-v7.3.0.29.tgz -C /usr/local && \
    rm cudnn-9.0-linux-x64-v7.3.0.29.tgz && \
    ldconfig
