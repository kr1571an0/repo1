FROM gitpod/workspace-full

# Install R and clean up
RUN sudo apt-get update && \
    sudo apt-get install -y r-base r-base-dev && \
    sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/*
