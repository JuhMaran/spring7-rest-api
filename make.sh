#!/bin/bash

set -e

echo "Building API Docs"

# Bundle the API docs
npx @redocly/cli bundle openapi/openapi.yaml -o sfgoa3.yaml

# Build HTML documentation
npx @redocly/cli build-docs sfgoa3.yaml -o index.html