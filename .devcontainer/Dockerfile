# Use an appropriate base image
FROM ubuntu:20.04

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    && rm -rf /var/lib/apt/lists/*

# Install R 4.4 from source
RUN wget https://cran.r-project.org/src/base/R-4/R-4.4.0.tar.gz \
    && tar -xzf R-4.4.0.tar.gz \
    && cd R-4.4.0 \
    && ./configure \
    && make \
    && make install \
    && cd .. \
    && rm -rf R-4.4.0 R-4.4.0.tar.gz
