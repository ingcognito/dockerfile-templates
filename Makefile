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

haskell: ## Builds haskell container
	cd ./haskell/ && docker build -t haskell .

java: ## Builds java8 container
	cd ./java/ && docker build -t java .

javascript: ## Builds javascript container
	cd ./javascript/ && docker build -t javascript .

nodejs: ## Builds nodejs container
	cd ./nodejs/ && docker build -t nodejs .

python: ## Builds python container
	cd ./python/ && docker build -t python .

php: ## Builds php container
	cd ./php/ && docker build -t php .

r: ## Builds R container
	cd ./r/ && docker build -t r .

rust: ## Builds rust container
	cd ./rust/ && docker build -t rust .
