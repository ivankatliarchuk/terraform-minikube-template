.EXPORT_ALL_VARIABLES:

.PHONY: terraform minikube

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

t: ## Run terraform
	@bin/some.sh

cicd: ## Proxy CICD
	@bin/show.ci.sh

start: ## Deploy Minikube Kubernetes Cluster
	@minikube start --memory=16192 --cpus=4 \
		--kubernetes-version=v1.15.0 --vm-driver=hyperkit

stop: ## Stop Minikube Kubernetes Cluster
	@minikube stop

hooks: ## Commit hooks setup
	@pre-commit install
	@pre-commit gc
	@pre-commit autoupdate

validate: ## Validate with pre-commit hooks
	@pre-commit run --all-files