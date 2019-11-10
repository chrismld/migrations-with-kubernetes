#!/bin/bash
printf "# Creating Istio objects to direct traffic 25/75 ...\n"
kubectl apply -f ../manifests/istio/04-hybrid-deployment.yaml -n msignite

printf "\n# Start sending traffic to Istio Ingress.\n"