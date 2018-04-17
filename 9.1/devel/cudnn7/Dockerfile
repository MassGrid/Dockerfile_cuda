ARG repository
FROM ${repository}:9.1-devel-centos6
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.1.3.16
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=dd616d3794167ceb923d706bf73e8d6acdda770751492b921ee6827cdf190228 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.1.3/cudnn-9.1-linux-x64-v7.1.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-9.1-linux-x64-v7.1.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-9.1-linux-x64-v7.1.tgz -C /usr/local && \
    rm cudnn-9.1-linux-x64-v7.1.tgz && \
    ldconfig
