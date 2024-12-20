kubectl apply -f nginx-deploy.yaml
kubectl apply -f nginx-service.yaml
kubectl apply -f nginx-apache-ingress.yaml

kubectl apply -f apache-deploy.yaml
kubectl apply -f apache-service.yaml