#!/bin/bash
kubectl config use-context msignite-migration
printf "# Creating Kubernetes objects for Legacy VM ...\n"
kubectl apply -f ../manifests/istio/01-register-legacy-vm.yaml -n msignite

printf "\n# Service has been registered:\n"
kubectl get svc -n msignite

printf "\n# Legacy VM is part of the endpoint:\n"
kubectl get ep -n msignite