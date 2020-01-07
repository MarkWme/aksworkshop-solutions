#!/bin/bash

workspace=aksworkshop200107

az resource create --resource-type Microsoft.OperationalInsights/workspaces --name $workspace --resource-group aksworkshop --location westeurope --properties '{}' -o table

resourceid=$(az resource show --resource-type Microsoft.OperationalInsights/workspaces --resource-group aksworkshop --name $workspace --query "id" -o tsv)

az aks enable-addons --resource-group aksworkshop --name aksworkshop --addons monitoring --workspace-resource-id $resourceid