#!/bin/sh
version=$(az aks get-versions -l westeurope --query 'orchestrators[-1].orchestratorVersion' -o tsv)
az group create --name x-rg-euw-aksworkshop --location westeurope
az aks create --resource-group x-rg-euw-aksworkshop \
    --name x-ks-euw-aksworkshop \
    --location westeurope \
    --kubernetes-version $version