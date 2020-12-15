#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://staging.widget.stackbit.com/init.js 5fd88a10c506d30015152d15

echo "stackbit-build.sh: finished build"
