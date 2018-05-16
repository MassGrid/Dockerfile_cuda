ARG repository
FROM ${repository}:9.0-runtime-centos6
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.1.4.18
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=60b581d0f05324c33323024a264aa3fb185c533e2f67dae7fda847b926bb7e57 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.1.4/cudnn-9.0-linux-x64-v7.1.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-9.0-linux-x64-v7.1.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-9.0-linux-x64-v7.1.tgz -C /usr/local --wildcards 'cuda/lib64/libcudnn.so.*' && \
    rm cudnn-9.0-linux-x64-v7.1.tgz && \
    ldconfig
