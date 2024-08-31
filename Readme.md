# EFK Stack Deployment on Manual Kubernetes Cluster

This repository contains the configuration for deploying an EFK (Elasticsearch, Fluentd, Kibana) stack on a manually created Kubernetes cluster.

## Repository Structure

- `charts/` - Contains Helm charts for deploying Fluentd, Kibana, and Elasticsearch.
- `deployments/` - Kubernetes manifests for deploying Elasticsearch, Fluentd, and Kibana.
- `scripts/` - Contains setup scripts to apply Kubernetes configurations.
- `README.md` - This file.
- `values.yaml` - Configuration values for Helm charts.

## Getting Started

Follow these steps to deploy the EFK stack:

1. **Clone the Repository**
   ```bash
   git clone https://github.com/faisalkamilansari/efk-deployment.git
   cd efk-deployment
   ```

2. **Deploy the EFK Stack**
   ```bash
   sudo chmod +x ./scripts/setup.sh
   ./scripts/setup.sh
   ```

3. **Access Kibana**
   - You can port-forward to access Kibana locally:
     ```bash
     kubectl port-forward svc/quickstart-kb-http 5601:5601
     ```
   - Open `http://localhost:5601` in your browser.

## Customization

- **Fluentd Configuration:** Modify `charts/fluentd/values.yaml` to update Fluentd settings.
- **Elasticsearch Configuration:** Adjust `deployments/elasticsearch/elasticsearch-deployment.yaml` if needed.
- **Kibana Configuration:** Update `deployments/kibana/kibana-deployment.yaml` for Kibana settings.

