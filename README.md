[![test](https://github.com/ks6088ts-labs/handson-playwright/actions/workflows/playwright.yml/badge.svg?branch=main)](https://github.com/ks6088ts-labs/handson-playwright/actions/workflows/playwright.yml?query=branch%3Amain)

# handson-playwright

This is just a sample project to demonstrate how to use Playwright for end-to-end testing.

## Prerequisites

- [Node.js 20+](https://nodejs.org/en/download/package-manager)
- [GNU Make](https://www.gnu.org/software/make/)

## Development instructions

### Local development

Use Makefile to run the project locally.

```shell
# help
make

# install dependencies for development
make install-deps-dev

# run tests
make test

# run CI tests
make ci-test
```
