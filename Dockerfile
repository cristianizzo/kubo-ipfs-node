# Use the official IPFS Kubo image as the base image
FROM ipfs/kubo:latest

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . .

# Expose ports
EXPOSE 4001 5001 8080
# 4001 = Swarm, 5001 = API, 8080 = HTTP transport

# Set the IPFS data directory to a volume
VOLUME /data/ipfs

# Start IPFS
CMD ipfs init && \
    ipfs config Addresses.API /ip4/0.0.0.0/tcp/5001 && \
    ipfs config Addresses.Gateway /ip4/0.0.0.0/tcp/8080 && \
    ipfs daemon
