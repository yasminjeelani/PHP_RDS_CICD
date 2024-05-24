#!/bin/bash

aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 150878085644.dkr.ecr.ap-south-1.amazonaws.com
# Pull the Docker image from ecr repo
docker pull 150878085644.dkr.ecr.ap-south-1.amazonaws.com/demo:latest
# Run the Docker image as a container
docker run -d --name myphpcontainer -p 8080:80 150878085644.dkr.ecr.ap-south-1.amazonaws.com/demo:latest
