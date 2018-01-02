ARG repository
FROM ${repository}:9.1-base-centos7
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

RUN yum install -y \
        cuda-libraries-$CUDA_PKG_VERSION && \
    rm -rf /var/cache/yum/*
