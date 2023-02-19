#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=sulaymon/operationalizing-ml-api-udacity-cloud-devops

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run operationalizing-ml-api-udacity-cloud-devops\
    --image=$dockerpath\
    --port=80 --labels app=operationalizing-ml-api-udacity-cloud-devops


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward operationalizing-ml-api-udacity-cloud-devops 8000:80

