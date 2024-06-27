#!/bin/bash

set -euo pipefail

function main() {
  find . -type f -name "*.sh" | while read -r script; do
    echo "Syntax Checking $script"
    bash -n "$script"
  done
}

main
