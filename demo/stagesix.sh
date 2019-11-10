#!/bin/bash
printf "# Creating Istio objects to direct traffic full modern ...\n"
kubectl apply -f ../manifests/istio/06-full-modern.yaml -n msignite

printf "\n# Start sending traffic to Istio Ingress.\n"