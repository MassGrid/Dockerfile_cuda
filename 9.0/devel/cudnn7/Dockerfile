ARG repository
FROM ${repository}:9.0-devel-centos6
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.1.2.21
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=d5f8b56a05dc002a801f8f2081518c20b496006f14617d568bde24dcfb3f6388 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.1.2/cudnn-9.0-linux-x64-v7.1.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-9.0-linux-x64-v7.1.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-9.0-linux-x64-v7.1.tgz -C /usr/local && \
    rm cudnn-9.0-linux-x64-v7.1.tgz && \
    ldconfig
