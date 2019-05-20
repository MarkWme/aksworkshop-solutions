#!/bin/bash

az container create -g x-rg-euw-aksworkshop -n loadtest --image azch/loadtest --restart-policy Never -e SERVICE_IP=52.136.224.149
