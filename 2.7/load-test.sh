#!/bin/bash

az container create -g aksworkshop -n loadtest --image azch/loadtest --restart-policy Never -e SERVICE_ENDPOINT=https://captureorder.51.105.126.236.nip.io