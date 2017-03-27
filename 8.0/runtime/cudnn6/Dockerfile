FROM nvidia/cuda:8.0-runtime-centos7
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 6.0.20
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

RUN CUDNN_DOWNLOAD_SUM=36e7cd54d9f4cd448c302a40d2ed530a643e3ae32797a67739448ebe7c9f0620 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v6.0/cudnn-8.0-linux-x64-v6.0.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-8.0-linux-x64-v6.0.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-8.0-linux-x64-v6.0.tgz -C /usr/local --wildcards 'cuda/lib64/libcudnn.so.*' && \
    rm cudnn-8.0-linux-x64-v6.0.tgz && \
    ldconfig
