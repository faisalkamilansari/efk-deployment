# Apply Elasticsearch Deployment
kubectl apply -f "deployments\elasticsearch\elasticsearch-deployment.yaml"

# Apply Kibana Deployment
kubectl apply -f "deployments\kibana\kibana-deployment.yaml"

# Apply Fluentd Configuration
kubectl apply -f "deployments\fluentd\fluentd-configmap.yaml"
kubectl apply -f "deployments\fluentd\fluentd-daemonset.yaml"

Write-Host "Deployment completed."
