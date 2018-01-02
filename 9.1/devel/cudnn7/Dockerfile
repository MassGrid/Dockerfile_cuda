ARG repository
FROM ${repository}:9.1-devel-centos6
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.0.5.15
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=1ead5da7324db35dcdb3721a8d4fc020b217c68cdb3b3daa1be81eb2456bd5e5 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.0.5/cudnn-9.1-linux-x64-v7.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-9.1-linux-x64-v7.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-9.1-linux-x64-v7.tgz -C /usr/local && \
    rm cudnn-9.1-linux-x64-v7.tgz && \
    ldconfig
