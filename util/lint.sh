#!/bin/bash

set -euo pipefail

function main() {
  if ! command -v shellcheck &>/dev/null; then
    echo "Error: shellcheck is not installed."
    exit 1
  fi

  find . -type f -name "*.sh" | while read -r script; do
    echo "Linting $script"
    shellcheck "$script"
  done
}

main
