#!/bin/bash
printf "# Creating Kubernetes objects for Modern APP ...\n"
kubectl apply -f ../manifests/istio/02-deploy-modern-app.yaml -n msignite
sleep 3

printf "\n# Pods have been created:\n"
kubectl get pods -o wide -n msignite

printf "\n# Service has been created:\n"
kubectl get svc -n msignite

printf "\n# Pods are part of the endpoint:\n"
kubectl get ep -n msignite

printf "\n# Proxy for service:\n"
kubectl port-forward svc/modernapp-lb 8080:80 -n msignite