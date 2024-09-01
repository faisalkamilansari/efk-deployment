#!/bin/bash

# Apply Elasticsearch Deployment
kubectl apply -f deployments/elasticsearch/elasticsearch-deployment.yaml

# Apply Kibana Deployment
kubectl apply -f deployments/kibana/kibana-deployment.yaml

# Apply Fluentd Configuration
kubectl apply -f deployments/fluentd/configmap.yaml
kubectl apply -f deployments/fluentd/daemonset.yaml
kubectl apply -f deployments/kibana/service.yaml