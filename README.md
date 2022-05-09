## Kubernetes intro
* My first introduction to kubernetes.

### K8s manifest files 
* mongo-config.yaml - ConfigMap
* mongo-secret.yaml - Secret
* mongo.yaml - Deployment: mongo-deployment
* webapp.yaml - Deployment: webapp-deployment
* mongo-express - Deployment: mongo-express-deployment

### Tools used
* [minikube](https://minikube.sigs.k8s.io/docs/start/) - For running kubenetes cluster on local machine.
* [Kubernetes(k8s)](https://kubernetes.io/docs/home/) - Container orchastration tool.
* [Docker](https://docs.docker.com/) - Containerisation in pods.


### K8s commands
* configure alias if kubectl not installed
```
    alias kubectl="minikube kubectl --"
```

##### start Minikube and check status
    minikube start --vm-driver=hyperkit 
    minikube status

##### get minikube node's ip address
    minikube ip

##### get basic info about k8s components
    kubectl get node
    kubectl get pod
    kubectl get svc
    kubectl get all
    kubectl get replicaset
    kubectl get deployment

#### edit deployment    
    kubectl edit deployment {deployment-name}

##### get extended info about components
    kubectl get pod -o wide
    kubectl get node -o wide

##### get detailed info about a specific component
    kubectl describe svc {svc-name}
    kubectl describe pod {pod-name}

##### get application logs
    kubectl logs {pod-name}

##### open terminal in pod container
    kubectl exec -it {pod-name} -- bin/bash

#### delete Deployment
    kubectl delete deployment {deployment-name}

#### create/update deployment: config files
    kubectl apply -f {file-name}

#### View deployment details in yaml file
    kubectl get deployment {depl-name} -o yaml > {output-file(depl-name-result.yaml)}

#### stop your Minikube cluster
    minikube stop

<br />

> :warning: **Known issue - Minikube IP not accessible** 

If you can't access the NodePort service webapp with `MinikubeIP:NodePort`, execute the following command:
    
    minikube service webapp-service

<br />

### Acknowledgement & Links 
* Video: https://www.youtube.com/watch?v=X48VuDVv0do
* mongodb image on Docker Hub: https://hub.docker.com/_/mongo
* mongo-express image on Docker Hub: https://hub.docker.com/_/mongo-express
* webapp image on Docker Hub: https://hub.docker.com/repository/docker/nanajanashia/k8s-demo-app

* webapp code repo: https://gitlab.com/nanuchi/developing-with-docker/-/tree/feature/k8s-in-hour

