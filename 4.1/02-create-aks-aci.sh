#!/bin/bash

APPID=<app id>
PASSWORD=<password>

VNETID=$(az network vnet show --resource-group aksworkshop --name myVnet --query id -o tsv)

az role assignment create --assignee $APPID --scope $VNETID --role Contributor

VERSION=$(az aks get-versions -l westeurope --query 'orchestrators[-1].orchestratorVersion' -o tsv)

SUBNET=$(az network vnet subnet show --resource-group aksworkshop --vnet-name myVnet --name myAKSSubnet --query id -o tsv)

az aks create \
    --resource-group aksworkshop \
    --name aksworkshop-aci \
    --node-count 3 \
    --kubernetes-version $VERSION \
    --network-plugin azure \
    --service-cidr 10.0.0.0/16 \
    --dns-service-ip 10.0.0.10 \
    --docker-bridge-address 172.17.0.1/16 \
    --vnet-subnet-id $SUBNET \
    --service-principal $APPID \
    --client-secret $PASSWORD \
    --no-wait
