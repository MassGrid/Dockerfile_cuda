ARG repository
FROM ${repository}:7.5-devel-centos7
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 6.0.21
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

RUN CUDNN_DOWNLOAD_SUM=568d4b070c5f91ab8a15b287b73dd072b99c7267a43edad13f70337cd186c82c && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v6.0/cudnn-7.5-linux-x64-v6.0.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-7.5-linux-x64-v6.0.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-7.5-linux-x64-v6.0.tgz -C /usr/local && \
    rm cudnn-7.5-linux-x64-v6.0.tgz && \
    ldconfig
