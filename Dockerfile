FROM ubuntu:latest

# Set environment variables to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install Hollywood with recommended packages
RUN apt-get update && \
    apt-get install -y --install-recommends hollywood && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set Hollywood as the default command to run when the container starts
CMD ["hollywood"]