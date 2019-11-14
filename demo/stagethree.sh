#!/bin/bash
printf "# Creating Istio objects to direct traffic to Legacy VM ...\n"
kubectl apply -f ../manifests/istio/03-exposing-legacy.yaml -n msignite

printf "\n# Start sending traffic to Istio Ingress.\n"
INGRESSIP=($(kubectl get service istio-ingressgateway --namespace istio-system -o jsonpath='{.status.loadBalancer.ingress[0].ip}'))
printf "http://$INGRESSIP/"

printf "\n# Start Grafana\n"
printf "http://localhost:15031/d/NUisZ21Wz/ms-ignite-paris?orgId=1&from=now-30m&to=now\n"
kubectl port-forward svc/grafana 15031:3000 -n istio-system