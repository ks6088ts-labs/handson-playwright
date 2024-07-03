# Git
GIT_REVISION ?= $(shell git rev-parse --short HEAD)
GIT_TAG ?= $(shell git describe --tags --abbrev=0 --always | sed -e s/v//g)

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.DEFAULT_GOAL := help

.PHONY: info
info: ## show information
	@echo "GIT_REVISION: $(GIT_REVISION)"
	@echo "GIT_TAG: $(GIT_TAG)"

.PHONY: install-deps-dev
install-deps-dev: ## install dependencies for development
	npm ci
	npx playwright install --with-deps

.PHONY: install-deps
install-deps: ## install dependencies for production
	npm ci --omit dev

.PHONY: format-check
format-check: ## format check
	@echo "Not implemented yet"

.PHONY: format
format: ## format code
	@echo "Not implemented yet"

.PHONY: fix
fix: format ## apply auto-fixes
	@echo "Not implemented yet"

.PHONY: lint
lint: ## lint
	@echo "Not implemented yet"

.PHONY: test
test: ## run tests
	npx playwright test

.PHONY: test-ui
test-ui: ## run tests with UI
	npx playwright test --ui-host=0.0.0.0 --ui-port=8888

.PHONY: ci-test
ci-test: install-deps-dev format-check lint test ## run CI tests

.PHONY: show-report
show-report: ## show report
	npx playwright show-report

.PHONY: playwright-testing
playwright-testing: ## run tests on Microsoft Playwright Testing
	npx playwright test --config=playwright.service.config.ts --workers=20
