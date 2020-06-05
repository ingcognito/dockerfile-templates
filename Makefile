SHELL := /bin/bash -e

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

bash: ## Builds bash container
	cd ./bash/ && docker build -t bash .

python: ## Builds python container
	cd ./python/ && docker build -t python .
