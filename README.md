# terraform-minikube-template

Terraform with Minikube project template

## Project structure / Directory Layour

	.
	├── bin                         # scripts required to provision workspace & infrastructure
	├── data                        # store terraform parameters, ssh keys, kubeconf file
	├── modules                     # infrastructure modules
	├── infrastructure              # infrastructure-as-code terraform sources
	└── README.md                   # current file

<!-- START makefile-doc -->
```
$ make help 
infra                          Run terraform
start                          Deploy Minikube Kubernetes Cluster
stop                           Stop Minikube Kubernetes Cluster
hooks                          Commit hooks setup
validate                       Validate with pre-commit hooks 
```
<!-- END makefile-doc -->
