#!/bin/bash

KEYVAULT_ID=$(az keyvault show --name aksworkshop --query id --output tsv)

az role assignment create --role Reader --assignee "http://azure-cli-2020-01-07-19-08-59" --scope $KEYVAULT_ID

az keyvault set-policy -n aksworkshop --secret-permissions get --spn <app id>

kubectl create secret generic kvcreds --from-literal clientid=<app id> --from-literal clientsecret=<password> --type=azure/kv