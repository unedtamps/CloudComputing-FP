kubectl delete -f nginx-deploy.yaml
kubectl delete -f nginx-service.yaml
kubectl delete -f nginx-apache-ingress.yaml

kubectl delete -f apache-deploy.yaml
kubectl delete -f apache-service.yaml