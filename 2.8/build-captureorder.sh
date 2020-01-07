#!/bin/sh

git clone https://github.com/Azure/azch-captureorder.git
cd azch-captureorder

az acr build -t "captureorder:{{.Run.ID}}" -r xcreuwaksworkshop .