#!/bin/bash
kubectl create secret generic mongodb --from-literal=mongoHost="orders-mongo-mongodb.default.svc.cluster.local" --from-literal=mongoUser="orders-user" --from-literal=mongoPassword="orders-password"
