FROM nvidia/cuda:7.5-devel-centos6
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 5.1.10
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

RUN CUDNN_DOWNLOAD_SUM=69ca71f7728b54b6e003393083f419b24774fecd3b08bbf41bceac9a9fe16345 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v5.1/cudnn-7.5-linux-x64-v5.1.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-7.5-linux-x64-v5.1.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-7.5-linux-x64-v5.1.tgz -C /usr/local && \
    rm cudnn-7.5-linux-x64-v5.1.tgz && \
    ldconfig
