#!/usr/bin/env bash

if aws eks list-clusters | grep -q "helloworld-capstone-cluster"
then
  echo "cluster existed!"
else
  eksctl create cluster --config-file=cluster.yml
fi