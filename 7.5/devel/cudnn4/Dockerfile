ARG repository
FROM ${repository}:7.5-devel-centos7
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 4.0.8
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

RUN CUDNN_DOWNLOAD_SUM=cd091763d5889f0efff1fbda83bade191f530743a212c6b0ecc2a64d64d94405 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v4/cudnn-7.0-linux-x64-v4.0-prod.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-7.0-linux-x64-v4.0-prod.tgz" | sha256sum -c --strict - && \
    tar --no-same-owner -xzf cudnn-7.0-linux-x64-v4.0-prod.tgz -C /usr/local && \
    rm cudnn-7.0-linux-x64-v4.0-prod.tgz && \
    ldconfig
