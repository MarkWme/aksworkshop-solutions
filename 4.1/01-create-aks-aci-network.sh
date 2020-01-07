#!/bin/bash

az network vnet create \
    --resource-group aksworkshop \
    --name myVnet \
    --address-prefixes 10.0.0.0/8 \
    --subnet-name myAKSSubnet \
    --subnet-prefix 10.240.0.0/16

az network vnet subnet create \
    --resource-group aksworkshop \
    --vnet-name myVnet \
    --name myVirtualNodeSubnet \
    --address-prefix 10.241.0.0/16
