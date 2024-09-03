#!/bin/bash

# Apply Elasticsearch Deployment
kubectl apply -f deployments/elasticsearch/elasticsearch-deployment.yaml

# Apply Kibana Deployment
kubectl apply -f deployments/kibana/kibana-deployment.yaml

# Apply Fluentd Configuration
kubectl apply -f deployments/fluentd/configmap.yaml

# Apply Fluentd Daemonset
kubectl apply -f deployments/fluentd/daemonset.yaml

sudo fluent-gem install fluent-plugin-kubernetes_metadata_filter

# Apply Elasticsearch Service
kubectl apply -f deployments/elasticsearch/elasticsearch-service.yaml

# Apply Kibana Service
kubectl apply -f deployments/kibana/service.yaml