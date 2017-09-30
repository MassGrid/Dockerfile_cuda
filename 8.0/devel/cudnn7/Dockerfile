ARG repository
FROM ${repository}:8.0-devel-centos6
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.0.3.11
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=e44dd20750ea1fa287ed0576c71d7ba30383aabdaacd18df173947cf7a53fc3f && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.0.3/cudnn-8.0-linux-x64-v7.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-8.0-linux-x64-v7.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-8.0-linux-x64-v7.tgz -C /usr/local && \
    rm cudnn-8.0-linux-x64-v7.tgz && \
    ldconfig
