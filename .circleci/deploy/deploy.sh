#!/usr/bin/env bash

# Integrate kubectl with aws eks
aws eks update-kubeconfig --region us-east-1 --name helloworld-capstone-cluster
export KUBECONFIG=~/.kube/config

# Deploy
kubectl apply -f deployment.yml
