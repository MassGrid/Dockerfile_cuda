ARG repository
FROM ${repository}:7.0-devel-ubuntu14.04
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*

ENV CUDNN_VERSION 2.0.0
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

RUN CUDNN_DOWNLOAD_SUM=4b02cb6bf9dfa57f63bfff33e532f53e2c5a12f9f1a1b46e980e626a55f380aa && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v2/cudnn-6.5-linux-x64-v2.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-6.5-linux-x64-v2.tgz" | sha256sum -c --strict - && \
    tar --no-same-owner -xzf cudnn-6.5-linux-x64-v2.tgz && \
    mv cudnn-6.5-linux-x64-v2/cudnn.h /usr/local/cuda/include && \
    mv cudnn-6.5-linux-x64-v2/libcudnn* /usr/local/cuda/lib64 && \
    rm -rf cudnn-6.5-linux-x64-v2* && \
    ldconfig
