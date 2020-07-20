.PHONY: help distroless debian

help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_\.-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

builder: ## debian builder to build runtime
	docker build -t just/builder .

distroless: ## gcr.io/distroless image
	make builder
	docker build -t just/distroless distroless/

debian: ## debian/stretch:slim image
	make builder
	docker build -t just/debian debian/

.DEFAULT_GOAL := help
