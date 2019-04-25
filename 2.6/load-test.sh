#!/bin/bash

az container create -g x-rg-euw-akschallenge -n loadtest --image azch/loadtest --restart-policy Never -e SERVICE_IP=13.80.42.5
