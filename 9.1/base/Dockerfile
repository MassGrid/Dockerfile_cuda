FROM ubuntu:17.04
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

RUN apt-get update && apt-get install -y --no-install-recommends curl ca-certificates && \
    curl -fsSL https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1704/x86_64/7fa2af80.pub | apt-key add - && \
    echo "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1704/x86_64 /" > /etc/apt/sources.list.d/cuda.list && \
    apt-get purge --autoremove -y curl ca-certificates && \
    rm -rf /var/lib/apt/lists/*

ENV CUDA_VERSION 9.1.85

ENV CUDA_PKG_VERSION 9-1=$CUDA_VERSION-1
RUN apt-get update && apt-get install -y --no-install-recommends \
        cuda-cudart-$CUDA_PKG_VERSION && \
    ln -s cuda-9.1 /usr/local/cuda && \
    rm -rf /var/lib/apt/lists/*

# nvidia-docker 1.0
LABEL com.nvidia.volumes.needed="nvidia_driver"
LABEL com.nvidia.cuda.version="${CUDA_VERSION}"

RUN echo "/usr/local/nvidia/lib" >> /etc/ld.so.conf.d/nvidia.conf && \
    echo "/usr/local/nvidia/lib64" >> /etc/ld.so.conf.d/nvidia.conf

ENV PATH /usr/local/nvidia/bin:/usr/local/cuda/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64

# nvidia-container-runtime
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility
ENV NVIDIA_REQUIRE_CUDA "cuda>=9.1"
