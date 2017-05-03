FROM nvidia/cuda:7.5-runtime-ubuntu14.04
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

RUN echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1404/x86_64 /" > /etc/apt/sources.list.d/nvidia-ml.list

ENV CUDNN_VERSION 6.0.21
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

RUN apt-get update && apt-get install -y --no-install-recommends \
            libcudnn6=$CUDNN_VERSION-1+cuda7.5 && \
    rm -rf /var/lib/apt/lists/*
