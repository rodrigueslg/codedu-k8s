# apply all
`kubectl apply -f .`

# cluster creation
`kind delete cluster --name fullcycle`  
`kind create cluster --name fullcycle --config=config/kind.yaml`

# deployment
`kubectl apply -f ./configmap-env.yaml`  
`kubectl apply -f ./configmap-family.yaml`  
`kubectl apply -f ./secret.yaml`  
`kubectl apply -f ./deployment.yaml`  
`kubectl apply -f ./service.yaml`  
`kubectl apply -f ./metrics-server.yaml`  
`kubectl apply -f ./hpa.yaml`  
`kubectl apply -f ./pvc.yaml`

# port redirect
`kubectl port-forward svc/goserver-service 9000:80`

# check
`kubectl get po`  
`kubectl top pods`  
[Local server](http://localhost:9000)

# fortio
`kubectl run fortio -it --rm --image="fortio/fortio" -- load -qps 800 -t 120s -c 70 "http://goserver-service/healthz"`  
`kubectl get hpa`

# statefulset
`kubectl apply -f ./statefulset.yaml`  
`kubectl apply -f ./service-mysql-h.yaml`

# ingress
[K8S Ingress](https://kubernetes.github.io/ingress-nginx/deploy/#using-helm)

# cert manager
[K8S Cert Manager](https://cert-manager.io/docs/installation/)
`kubectl apply -f .\cluster-issuer.yaml`