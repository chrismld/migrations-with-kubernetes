#!/bin/bash
INGRESSIP=($(kubectl get service istio-ingressgateway --namespace istio-system -o jsonpath='{.status.loadBalancer.ingress[0].ip}'))

while true
do
curl -s http://$INGRESSIP/ | grep '<title>'
sleep 0.5
done