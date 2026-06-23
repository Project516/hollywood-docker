FROM ubuntu:24.04

# Set environment variables to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install Hollywood with recommended packages
# Pin the base image for reproducible builds and combine RUN layers to reduce image size
RUN apt-get update && \
    apt-get install -y --install-recommends hollywood && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set Hollywood as the default command to run when the container starts
CMD ["hollywood"]
