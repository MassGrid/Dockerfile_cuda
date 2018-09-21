ARG repository
FROM ${repository}:10.0-runtime-centos6
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.3.0.29
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=7526a33bc3c152ca5d8f3eddedaa4a0b3c721a3c0000eeb80ebfe5cbc54696b7 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.3.0/cudnn-10.0-linux-x64-v7.3.0.29.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-10.0-linux-x64-v7.3.0.29.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-10.0-linux-x64-v7.3.0.29.tgz -C /usr/local --wildcards 'cuda/lib64/libcudnn.so.*' && \
    rm cudnn-10.0-linux-x64-v7.3.0.29.tgz && \
    ldconfig
