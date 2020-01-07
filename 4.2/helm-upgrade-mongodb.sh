#!/bin/bash
helm upgrade orders-mongo stable/mongodb --set replicaSet.enabled=true,mongodbUsername=orders-user,mongodbPassword=orders-password,mongodbDatabase=akschallenge

