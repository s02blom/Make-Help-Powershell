hello: ## Displays world
	@echo world!

help: ## Show this help
    @grep -E '^[.a-zA-Z0-9_-]+:.?## .$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

world: help ## Runs hello