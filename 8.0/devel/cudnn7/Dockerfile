ARG repository
FROM ${repository}:8.0-devel-centos7
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.1.3.16
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=31ed3c3bfb9c515c228c1dcbb306277ce08836e84e3facedef6182d872f8cd3d && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.1.3/cudnn-8.0-linux-x64-v7.1.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-8.0-linux-x64-v7.1.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-8.0-linux-x64-v7.1.tgz -C /usr/local && \
    rm cudnn-8.0-linux-x64-v7.1.tgz && \
    ldconfig
