ARG repository
FROM ${repository}:9.0-runtime-centos6
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.2.1.38
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=cf007437b9ac6250ec63b89c25f248d2597fdd01369c80146567f78e75ce4e37 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.2.1/cudnn-9.0-linux-x64-v7.2.1.38.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-9.0-linux-x64-v7.2.1.38.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-9.0-linux-x64-v7.2.1.38.tgz -C /usr/local --wildcards 'cuda/lib64/libcudnn.so.*' && \
    rm cudnn-9.0-linux-x64-v7.2.1.38.tgz && \
    ldconfig
