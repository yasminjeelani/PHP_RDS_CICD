#!/bin/bash
set -e

# Pull the Docker image from ecr repo
docker pull 150878085644.dkr.ecr.ap-south-1.amazonaws.com/demo

# Run the Docker image as a container
docker run -d --name myphpcontainer -p 8080:80 public.ecr.aws/r1g5u8w6/demo
