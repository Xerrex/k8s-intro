#! /bin/bash

minikube kubectl -- apply -f mongo-config.yaml
minikube kubectl -- apply -f mongo-secret.yaml
minikube kubectl -- apply -f mongo.yaml
minikube kubectl -- apply -f mongo-express.yaml
minikube kubectl -- apply -f webapp.yaml