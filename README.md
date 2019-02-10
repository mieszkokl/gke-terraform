# Example application deployment on Google Kubernetes Engine

This project demonstrates example dockerized application deployment on GKE

### Prerequisites

* Install google cloud SDK
* Create a project on google cloud platform
* Download credentials to google cloud SDK and save it on the disk

### User variables
All variables are stored in variables.tf file. You have to set:
* project_id - google cloud project id
* credentials_location - path to the file with credentials on the disk

### Step by step instruction

* Set your variables
* Run terraform 
```
terraform init
terraform apply
```
* Get credentials to the cluster
```
gcloud container clusters get-credentials demo-container
```
* Obtain IP address 
```
kubectl get services
```
* Test application
```
curl http://<ip_address>:80
```
* You can check current number of pods running in a container
```
kubectl get pods
```
