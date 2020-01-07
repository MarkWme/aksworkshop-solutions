#!/bin/sh

# Add the Helm stable chart repositories
helm repo add stable https://kubernetes-charts.storage.googleapis.com/

# Update the repositories
helm repo update
