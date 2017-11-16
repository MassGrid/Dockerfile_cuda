ARG repository
FROM ${repository}:9.0-devel-centos6
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.0.4.31
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=963da2057c298616dab0c754398dcb1cced1bdc5f21ca00258b149f709b5bc4f && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.0.4/cudnn-9.0-linux-x64-v7.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-9.0-linux-x64-v7.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-9.0-linux-x64-v7.tgz -C /usr/local && \
    rm cudnn-9.0-linux-x64-v7.tgz && \
    ldconfig
