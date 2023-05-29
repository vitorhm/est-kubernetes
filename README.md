## Stack
- Kind
- Kubernetes
- Golang
- Docker

## Creating Kubernetes Cluster
1. Download kind, a application for building local kubernetes cluster.
2. Create the cluster using `kind create cluster --config k8s/kind.yaml`

## Creating Kubernetes Deployment
1. Use `kubectl apply -f k8s/deployment.yaml` to create a deployment with 3 ReplicaSet with one container using docker image vitorhm/est-kubernetes:1.0.
2. Use `kubectl apply -f k8s/service.yaml` to create the service for acessing the pods. The server is created using the port 30000, so you can access the application outside the cluster using this port.

## Running the application local
You can run the application local using `docker build -t app .` and `docker run -p8080:8080 app`. The application will be available using the port 8080.