#!/bin/bash

aws ecr get-login-password --region <AWS_REGION> | docker login --username AWS --password-stdin <AWS_ACCOUNT_ID>.dkr.ecr.<AWS_REGION>.amazonaws.com# Pull the Docker image from ecr repo
docker pull <YOUR_IMAGE_NAME>:<TAG># Run the Docker image as a container
docker run -d --name myphpcontainer -p 8080:80 <YOUR_IMAGE_NAME>:<TAG>
