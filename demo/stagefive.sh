#!/bin/bash
printf "# Creating Istio objects to direct traffic 50/50 ...\n"
kubectl apply -f ../manifests/istio/05-hybrid-half-half.yaml -n msignite

printf "\n# Start sending traffic to Istio Ingress.\n"