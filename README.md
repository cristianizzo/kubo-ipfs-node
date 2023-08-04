# My IPFS Node

This repository contains a Dockerfile for running an IPFS node using the IPFS Kubo image, and a GitHub Actions workflow for building the Docker image and deploying it to Amazon ECS.

## How to use

1. Build the Docker image with `docker build -t my-ipfs-node .`.
2. Run the Docker container with `docker run -p 4001:4001 -p 5001:5001 -p 8080:8080 my-ipfs-node`.
