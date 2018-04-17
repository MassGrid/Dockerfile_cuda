ARG repository
FROM ${repository}:9.0-devel-centos6
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.1.3.16
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=203a1700cc5b96f679d550d8bbcf99bdc254654b399e6bf79ef8ed6e6b83a369 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.1.3/cudnn-9.0-linux-x64-v7.1.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-9.0-linux-x64-v7.1.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-9.0-linux-x64-v7.1.tgz -C /usr/local && \
    rm cudnn-9.0-linux-x64-v7.1.tgz && \
    ldconfig
