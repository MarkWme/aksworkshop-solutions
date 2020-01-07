#!/bin/bash

# Create ingress namespace
kubectl create namespace ingress

# Install the nginx ingress controller
helm repo update
helm install ingress stable/nginx-ingress --namespace ingress
