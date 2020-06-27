SHELL := /bin/bash -e

.PHONY: *

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

alpine: ## Builds alpine container
	cd ./alpine/ && docker build -t alpine .

debian: ## Builds debian container
	cd ./debian/ && docker build -t debian .

bash: ## Builds bash container
	cd ./bash/ && docker build -t bash .

go: ## Builds go container
	cd ./go/ && docker build -t go .

python: ## Builds python container
	cd ./python/ && docker build -t python .

php: ## Builds php container
	cd ./php/ && docker build -t php .

r: ## Builds R container
	cd ./r/ && docker build -t r .
