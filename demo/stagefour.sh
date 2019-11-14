#!/bin/bash
printf "# Creating Istio objects to direct traffic 25/75 ...\n"
kubectl apply -f ../manifests/istio/04-hybrid-deployment.yaml -n msignite

printf "\n# Start sending traffic to Istio Ingress.\n"
INGRESSIP=($(kubectl get service istio-ingressgateway --namespace istio-system -o jsonpath='{.status.loadBalancer.ingress[0].ip}'))
printf "http://$INGRESSIP/"