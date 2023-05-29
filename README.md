## Stack
- Kind
- Kubernetes
- Golang
- Docker

## Creating Kubernetes Cluster
1. Download kind, a application for building local kubernetes cluster.
2. Create the cluster using `kind create cluster --config k8s/kind.yaml`

## Converting Docker Compose file to Kubernetes
1. Download kompose, a application for converting a docker compose file into kubernetes.
2. Use `cd k8s` and `kompose convert -f ../docker-compose.yml`

## Creating Kubernetes Services and Deployments
1. Using the files generated from kompose, use `kubectl apply -f .` to apply all the resources.
2. Check using `kubectl get services` \ `kubectl get deployments`

## Running the application local
You can run the application local using `docker build -t app .` and `docker run -p8080:8080 app`. The application will be available using the port 8080.