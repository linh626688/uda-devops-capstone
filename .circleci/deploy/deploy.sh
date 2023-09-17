#!/usr/bin/env bash

# Integrate kubectl with aws eks
aws eks update-kubeconfig --region us-east-1 --name helloworld-cluster
export KUBECONFIG=~/.kube/config

# Deploy
kubectl apply -f deployment.yml

# this wait for 'Available=True' only works for initial deployment, not rolling
kubectl wait deployment helloworld-deployment --for condition=Available=True --timeout=90s