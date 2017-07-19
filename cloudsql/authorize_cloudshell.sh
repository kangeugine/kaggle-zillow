#!/bin/bash
gcloud sql instances patch kaggle \
    --authorized-networks `wget -qO - http://ipecho.net/plain`
