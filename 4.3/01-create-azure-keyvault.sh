#!/bin/bash

az keyvault create --resource-group aksworkshop --name aksworkshop

az keyvault secret set --vault-name aksworkshop --name mongo-password --value "orders-password"

