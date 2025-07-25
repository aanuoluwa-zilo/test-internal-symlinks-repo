#!/bin/bash

echo "Creating internal symbolic links..."

# Create directories and files
mkdir -p docs config scripts src/core src/utils tests/unit tests/integration
mkdir -p build/release build/debug bin/v1.0.0 bin/v2.0.0
mkdir -p data/2024-01-15 data/2024-01-16 templates/basic templates/advanced

# Create source files
echo "# API Documentation v2.1" > docs/api-v2.1.md
echo "# API Documentation v1.9" > docs/api-v1.9.md
echo '{"env": "production", "debug": false}' > config/production.json
echo '{"env": "staging", "debug": true}' > config/staging.json
echo '#!/bin/bash
echo "Deploying..."' > scripts/deploy.sh
echo '#!/bin/bash
echo "Building..."' > scripts/build.sh
echo 'package main

func main() {
    println("Core functionality")
}' > src/core/main.go
echo 'package utils

func Helper() {
    println("Utility function")
}' > src/utils/helper.go
echo 'describe("Unit tests", () => {
    test("should pass", () => {
        expect(true).toBe(true)
    })
})' > tests/unit/test.js
echo 'describe("Integration tests", () => {
    test("should work", () => {
        expect(true).toBe(true)
    })
})' > tests/integration/test.js
echo "v1.0.0 binary" > bin/v1.0.0/app
echo "v2.0.0 binary" > bin/v2.0.0/app
echo "2024-01-15 data" > data/2024-01-15/dataset.csv
echo "2024-01-16 data" > data/2024-01-16/dataset.csv
echo "Basic template" > templates/basic/template.html
echo "Advanced template" > templates/advanced/template.html

# Create internal symlinks
ln -sf docs/api-v2.1.md docs/current-api.md
ln -sf config/production.json config/active.json
ln -sf scripts/deploy.sh scripts/run.sh
ln -sf src/core src/main
ln -sf tests/unit tests/current
ln -sf build/release build/output
ln -sf bin/v1.0.0 bin/current
ln -sf data/2024-01-15 data/latest
ln -sf templates/basic templates/default

echo "Internal symlinks created successfully!"
echo "Current symlinks:"
ls -la docs/current-api.md config/active.json scripts/run.sh
ls -la src/main tests/current build/output
ls -la bin/current data/latest templates/default
