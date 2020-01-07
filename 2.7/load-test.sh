#!/bin/bash

az container create -g aksworkshop -n loadtest --image azch/loadtest --restart-policy Never -e SERVICE_ENDPOINT=https://captureorder.52.157.229.138.nip.io