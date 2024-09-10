#!/bin/bash

helm template cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.15.3 \
  --set crds.enabled=true \
  --set prometheus.enabled=true \
  --set enable-gateway-api=true \
  --set webhook.timeoutSeconds=4 >cert-manager1.15.3.yaml
