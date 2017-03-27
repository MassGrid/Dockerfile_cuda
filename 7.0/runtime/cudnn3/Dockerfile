FROM nvidia/cuda:7.0-runtime-ubuntu14.04
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*

ENV CUDNN_VERSION 3.0.7
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

RUN CUDNN_DOWNLOAD_SUM=98679d5ec039acfd4d81b8bfdc6a6352d6439e921523ff9909d364e706275c2b && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v3/cudnn-7.0-linux-x64-v3.0-prod.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-7.0-linux-x64-v3.0-prod.tgz" | sha256sum -c --strict - && \
    tar --no-same-owner -xzf cudnn-7.0-linux-x64-v3.0-prod.tgz -C /usr/local --wildcards 'cuda/lib64/libcudnn.so.*' && \
    rm cudnn-7.0-linux-x64-v3.0-prod.tgz && \
    ldconfig
