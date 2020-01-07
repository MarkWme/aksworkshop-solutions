#!/bin/bash

az aks enable-addons \
    --resource-group aksworkshop \
    --name aksworkshop-aci \
    --addons virtual-node \
    --subnet-name myVirtualNodeSubnet

    
